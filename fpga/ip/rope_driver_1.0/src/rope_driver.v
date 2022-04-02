`timescale 1ns / 1ps
`default_nettype none

module rope_driver(
    input wire clk,
    input wire rst_n,

    input wire [5:0] enable,
    input wire [1:0] address,

    input wire sbf_enable,
    input wire bplssw_enable,

    input wire [10:0] o_ihenv,
    input wire [10:0] w_ihenv,
    input wire [10:0] o_reset1,
    input wire [10:0] w_reset1,
    input wire [10:0] o_set,
    input wire [10:0] w_set,
    input wire [10:0] o_strgat,
    input wire [10:0] w_strgat,
    input wire [10:0] o_reset2,
    input wire [10:0] w_reset2,
    input wire [10:0] o_sbf,
    input wire [10:0] w_sbf,

    input wire [31:0] bplssw_poweron_timeout,
    input wire [31:0] bplssw_pg_loss_timeout,

    input wire bplssw_pg,
    input wire [2:1] saf,

    output reg [2:1] sa,
    output wire busy,
    output reg [1:0] cycle_address,

    output wire bplssw,
    output wire set,
    output wire reset,
    output wire ihenv,
    output wire [2:1] il,
    output wire roper,
    output wire [3:0] str,
    output wire sbf
);

`define CYCLE_STATE_IDLE   2'd0
`define CYCLE_STATE_ACTIVE 2'd1
`define CYCLE_STATE_DONE   2'd2

`define BPLSSW_STATE_OFF      2'd0
`define BPLSSW_STATE_POWERING 2'd1
`define BPLSSW_STATE_ON       2'd2

reg [1:0] cycle_state;
reg [1:0] cycle_state_next;
reg [1:0] cycle_address_next;
reg [10:0] cycle_count;
reg [10:0] cycle_count_next;
reg [5:0] enable_mask;
reg [5:0] enable_mask_next;
reg [1:0] sa_next;

always @(*) begin
    cycle_state_next = cycle_state;
    cycle_count_next = cycle_count;
    cycle_address_next = cycle_address;
    enable_mask_next = enable_mask;
    sa_next = sa;
    case (cycle_state)
    `CYCLE_STATE_IDLE: begin
        if (enable) begin
            cycle_state_next = `CYCLE_STATE_ACTIVE;
            cycle_count_next = 11'd0;
            cycle_address_next = address;
            enable_mask_next = enable;
            sa_next = 2'b0;
        end
    end
    `CYCLE_STATE_ACTIVE: begin
        if (cycle_count < 11'd1200) begin
            cycle_count_next = cycle_count + 11'd1;
            if (sbf) begin
                sa_next = sa_next | saf;
            end
        end else begin
            cycle_state_next = `CYCLE_STATE_DONE;
            enable_mask_next = 6'd0;
        end
    end
    `CYCLE_STATE_DONE: begin
        if (enable == 6'd0) begin
            cycle_state_next = `CYCLE_STATE_IDLE;
            cycle_count_next = 11'd0;
            enable_mask_next = 6'd0;
        end
    end
    default: begin
        cycle_state_next = `CYCLE_STATE_IDLE;
        enable_mask_next = 6'd0;
        cycle_address_next = 2'd0;
        cycle_count_next = 11'd0;
        sa_next = 2'b0;
    end
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        cycle_count <= 11'd0;
        cycle_address <= 2'd0;
        cycle_state <= `CYCLE_STATE_IDLE;
        enable_mask <= 6'd0;
        sa <= 2'b0;
    end else begin
        cycle_count <= cycle_count_next;
        cycle_address <= cycle_address_next;
        cycle_state <= cycle_state_next;
        enable_mask <= enable_mask_next;
        sa <= sa_next;
    end
end

assign busy = (cycle_state == `CYCLE_STATE_ACTIVE);

wire strgat;

assign ihenv  = enable_mask[0] && (cycle_count >= o_ihenv)  && (cycle_count < (o_ihenv + w_ihenv));
assign set    = enable_mask[2] && (cycle_count >= o_set)    && (cycle_count < (o_set + w_set));
assign strgat = enable_mask[3] && (cycle_count >= o_strgat) && (cycle_count < (o_strgat + w_strgat));
assign reset  = enable_mask[4] && (cycle_count >= o_reset2) && (cycle_count < (o_reset2 + w_reset2));
assign sbf   = (enable_mask[5] && (cycle_count >= o_sbf)   && (cycle_count < (o_sbf + w_sbf))) || sbf_enable;

assign roper = strgat;
assign str = strgat ? (cycle_address[1] + 4'b1) : 4'b0;
assign il = {cycle_address[0], cycle_address[0]};

reg [1:0] bplssw_state;
reg [1:0] bplssw_state_next;
reg [31:0] bplssw_timer;
reg [31:0] bplssw_timer_next;
reg bplssw_enable_prev;

assign bplssw = bplssw_enable && (bplssw_state != `BPLSSW_STATE_OFF);

always @(*) begin
    bplssw_state_next = bplssw_state;
    bplssw_timer_next = bplssw_timer;
    case (bplssw_state)
    `BPLSSW_STATE_OFF: begin
        if (!bplssw_enable_prev && bplssw_enable) begin
            bplssw_state_next = `BPLSSW_STATE_POWERING;
            bplssw_timer_next = 32'b0;
        end
    end
    `BPLSSW_STATE_POWERING: begin
        if (bplssw_timer < bplssw_poweron_timeout) begin
            bplssw_timer_next = bplssw_timer + 32'b1;
        end else begin
            bplssw_timer_next = 32'b0;
            bplssw_state_next = `BPLSSW_STATE_ON;
        end
    end
    `BPLSSW_STATE_ON: begin
        if (bplssw_pg) begin
            bplssw_timer_next = 32'b0;
        end else begin
            if (bplssw_timer < bplssw_pg_loss_timeout) begin
                bplssw_timer_next = bplssw_timer + 32'b1;
            end else begin
                bplssw_timer_next = 32'b0;
                bplssw_state_next = `BPLSSW_STATE_OFF;
            end
        end
    end
    default: begin
        bplssw_state_next = `BPLSSW_STATE_OFF;
        bplssw_timer_next = 32'b0;
    end
    endcase
end

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        bplssw_state <= 2'd0;
        bplssw_enable_prev <= 1'b0;
        bplssw_timer <= 32'b0;
    end else begin
        bplssw_state <= bplssw_state_next;
        bplssw_enable_prev <= bplssw_enable;
        bplssw_timer <= bplssw_timer_next;
    end
end

endmodule
`default_nettype wire

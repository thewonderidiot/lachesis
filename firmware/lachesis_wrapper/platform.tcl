# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/mike/workspace2/lachesis_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/mike/workspace2/lachesis_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {lachesis_wrapper}\
-hw {/home/mike/lachesis/fpga/lachesis/lachesis_wrapper.xsa}\
-out {/home/mike/workspace2}

platform write
domain create -name {standalone_microblaze_0} -display-name {standalone_microblaze_0} -os {standalone} -proc {microblaze_0} -runtime {cpp} -arch {32-bit} -support-app {empty_application}
platform generate -domains 
platform write
platform generate -quick
platform generate

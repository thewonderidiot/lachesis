# Project Lachesis: AGC Core Rope Memory Readers

This repository contains all of the design files for safe, portable Block I and Block II Apollo Guidance Computer (AGC) core rope memory readers. For a detailed explanation of how it all works, check out [CuriousMarc's video featuring this project](https://www.youtube.com/watch?v=hckwxq8rnr0).

![Block 2 reader being used to dump the rope modules flown on Skylab-2](https://github.com/user-attachments/assets/ad910397-74e2-4fa6-97a8-e1cc0ad0b4b5)
*Block 2 reader being used to dump the rope modules flown on Skylab-2 at the New Mexico Museum of Space History*

## Rope Safety Considerations

The rope readers are designed to be electrically and mechanically exactly identical to real AGCs from the point of view of the rope modules. Exact mechanical dimensions and interfacing circuits were copied from the original AGC engineering drawings, obtained from the National Archives. During bringup, all circuits are calibrated to the [original procurement specifications](https://github.com/thewonderidiot/lachesis/tree/main/docs). Connections to the rope modules are made using [replica Malco Mini-Wasp pins generously provided by Samtec](https://www.youtube.com/watch?v=ThOXgcOOA1M).

Additionally:
* A hotswap controller is used to switch all power being applied to the rope module. This controller monitors for overvoltage, undervoltage, and overcurrent, and will automatically cut power to the rope if limits are violated. The enable for this hotswap controller must be actively held high by the microcontroller in the FPGA for rope power to remain enabled.
* The microcontroller is configured with ~95ms watchdog timer. If the software gets stuck, the resulting watchdog reset will take all outputs low, thus cutting power to the rope.
* 250mA fuses have been added to the 450mA power filter circuits. These fuses are capable of withstanding the nominal 1-to-5-microsecond-long 450mA current pulses. However, if a driver gets stuck on for any reason, the associated fuse will blow within approximately 1 second. Calculations by thermal engineer friends suggest that, conservatively, a sustained 450mA on one of the drive wires would only be damaging to the rope module after 30 seconds.

## Block I Rework

The Sense & Driver Board requires a small amount of rework when used in the Block I configuration. While designing the board, I focused on getting Block II correct, while trying not to do anything that would outright prevent Block I compatibility. The only thing I didn't account for in the design is that from the perspective of the sense amplifiers, current on the sense lines actually flows in opposite directions between Block I and Block II. For Block II, the sense amplifiers pull the sense lines up to 14V, and a 128mA current sink is connected to the module select pin. Block I does not yet have this pin; instead, the sense lines were pulled *down* to 3V. Lacking a 3V rail capable of sinking the necessary current, the 128mA module select driver forms a perfectly suitable substitute. This can be accomplished by depopulated F9 and C11, and running a wire from pin A32 of the main connector to the + pad of C11.

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

The Sense & Driver Board requires a small amount of rework when used in the Block I configuration. While designing the board, I focused on getting Block II correct, while trying not to do anything that would outright prevent Block I compatibility. The only thing I didn't account for in the design is that from the perspective of the sense amplifiers, current on the sense lines actually flows in opposite directions between Block I and Block II. For Block II, the sense amplifiers pull the sense lines up to 14V, and a 128mA current sink is connected to the module select pin. Block I does not yet have this pin; instead, the sense lines were pulled *down* to 3V. Lacking a 3V rail capable of sinking the necessary current, the 128mA module select driver forms a perfectly suitable substitute. This can be accomplished by depopulating F9 and C11, and running a wire from pin A32 of the main connector to the + pad of C11.
<img width="2000" height="709" alt="Image" src="https://github.com/user-attachments/assets/44c48249-d1e8-47ce-87d6-81593a9c77ab" />

## Rope Modules Archived

This is a non-exhaustive list of the rope modules that have been successfully read using the rope readers. Redundant reads of the same software from different physical modules are not listed.

<table>
  <tr>
    <th>Program</th>
    <th width=15%>Rope Part No.</th>
    <th>Source</th>
    <th width="50%">Notes</th>
  </tr>
  <tr>
    <td rowspan="4">Sunrise 69<br/>(Block I System Test)</td>
    <td>1003133-18</td>
    <td rowspan="2">Anonymous collector</td>
    <td rowspan="4">The 1003733-021 and 1003733-071 modules dumped both have one strand with a single bad diode, requiring parity correction.</td>
  </tr>
  <tr>
    <!--Sunrise 69-->
    <td>1003133-19</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <!--Sunrise 69-->
    <td>1003733-021</td>
    <td>Larry McGlynn</td>
    <!--notes-->
  </tr> 
  <tr>
    <!--Sunrise 69-->
    <td>1003733-071</td>
    <td>Anonymous Collector</td>
    <!--notes-->
  </tr>
  <tr>
    <td rowspan="6">Corona 261<br/>(AS-202)</td>
    <td>1003733-171</td>
    <td rowspan="6">Jimmie Loocke</td>
    <td rowspan="6">All six modules were flown on AS-202. These modules contained a variety of failed or failing diodes, requiring parity correction for several strands. Notably, strands 21 and 23 each had 2 bad diodes, requiring the affected bits to be manually teased out by capturing waveforms of the cores flipping in both directions utilizing a differential probe. Additionally, 1003733-221 contained a broken core, resulting in the total loss of 8 words. Fortunately, these words turned out to be identical to the Apollo 4/6 software, Solarium 55.</td>
  </tr>
  <tr>
    <!--Corona 261-->
    <td>1003733-191</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Corona 261-->
    <td>1003733-211</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Corona 261-->
    <td>1003733-221</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Corona 261-->
    <td>1003733-231</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Corona 261-->
    <td>1003733-241</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <td rowspan="5">Sunspot ?<br/>(Early Apollo 1 release)</td>
    <td>1003733-251</td>
    <td rowspan="5">Dr. Nick Gessler</td>
    <td rowspan="5">Unfortunately, all modules have many failed diodes, precluding easy software recovery. Work to correct resulting errors is ongoing.</td>
  </tr>
  <tr>
    <!--Sunspot-->
    <td>1003733-261</td>
    <!--Dr. Nick Gessler-->
    <!--notes-->
  </tr>
  <tr>
    <!--Sunspot-->
    <td>1003733-281</td>
    <!--Dr. Nick Gessler-->
    <!--notes-->
  </tr>
  <tr>
    <!--Sunspot-->
    <td>1003733-291</td>
    <!--Dr. Nick Gessler-->
    <!--notes-->
  </tr>
  <tr>
    <!--Sunspot-->
    <td>1003733-311</td>
    <!--Dr. Nick Gessler-->
    <!--notes-->
  </tr>
  <tr>
    <td rowspan="5">Solarium 55<br/>(Apollo 4 and 6)</td>
    <td>1003733-461</td>
    <td rowspan="5">Jimmie Loocke</td>
    <td rowspan="5">All five modules were flown on Apollo 4.</td>
  </tr>
  <tr>
    <!--Solarium 55-->
    <td>1003733-471</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Solarium 55-->
    <td>1003733-481</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Solarium 55-->
    <td>1003733-511</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <!--Solarium 55-->
    <td>1003733-521</td>
    <!--Jimmie Loocke-->
    <!--notes-->
  </tr>
  <tr>
    <td>Aurora 85<br/>(Initial LM System Test)</td>
    <td>2003053-071</td>
    <td>Anonymous Collector</td>
    <td>Module B2 from Aurora 85. While module B1 of Aurora 88 is equivalent to Aurora 85, module B3 is not, so Aurora 85 has not yet been fully recovered.</td>
  </tr>
  <tr>
    <td rowspan="3">Aurora 88<br/>(Final LM System Test)</td>
    <td>2003972-011</td>
    <td rowspan="3">Steve Jurvetson</td>
    <td rowspan="3">Rope modules were installed in the guidance pallet flown on the F-8 in the Digital Fly-By-Wire program. The whereabouts of the actual DFBW modules are unknown.</td>
  </tr>
  <tr>
    <!--Aurora 88-->
    <td>2003972-091</td>
    <!--Steve Jurvetson-->
    <!--notes-->
  </tr>
  <tr>
    <!--Aurora 88-->
    <td>2003972-111</td>
    <!--Steve Jurvetson-->
    <!--notes-->
  </tr>
  <tr>
    <td>Sundial B<br/>(Initial CM System Test)</td>
    <td>2003053-151</td>
    <td>Anonymous Collector</td>
    <td>Module B2 from Sundial B. While module B1 of Sundial B is equivalent to Sundial D, module B3 is not, so Sundial B has not yet been fully recovered.</td>
  </tr>
  <tr>
    <td rowspan="2">Colossus 237<br/>(Apollo 8)</td>
    <td>2003972-541</td>
    <td rowspan="2">Anonymous Collector</td>
    <td rowspan="2">2003972-541 is marked "SCRAP UNIT" in red, but read without errors.</td>
  </tr>
  <tr>
    <!--Colossus 237-->
    <td>2003972-571</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <td>Luminary 69<br/>(Apollo 10 LM)</td>
    <td>2003972-751</td>
    <td>Anonymous Collector</td>
    <td>First rope module successfully dumped.</td>
  </tr>
  <tr>
    <td rowspan="6">Comanche 67<br/>(Apollo 12 CM)</td>
    <td>2003972-1081</td>
    <td rowspan="6">Anonymous Collector</td>
    <td rowspan="6">Modules B1 through B4 were part of the flight spare set for Apollo 12. The high serial numbers for modules B5 and B6 suggest they were manufactured after the flight, for unknown reasons.</td>
  </tr>
  <tr>
    <!--Comanche 67-->
    <td>2003972-1091</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <!--Comanche 67-->
    <td>2003972-1111</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <!--Comanche 67-->
    <td>2003972-1121</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <!--Comanche 67-->
    <td>2003972-1131</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <!--Comanche 67-->
    <td>2003972-1141</td>
    <!--Anonymous Collector-->
    <!--notes-->
  </tr>
  <tr>
    <td>Comanche 72<br/>(Initial Apollo 13 CM release)</td>
    <td>2010802-021</td>
    <td>Anonymous Collector</td>
    <td>Module was initially slated fly on Apollo 13, but a bugfix in response to the Apollo 12 lightning strike requiring a re-release resulted in it remaining grounded.</td>
  </tr>
  <tr>
    <td>LM131 rev 1<br/>(Final Apollo 13 LM release)</td>
    <td>2010802-121</td>
    <td>Anonymous Collector</td>
    <td>Flight spare module. This is the only module different between LM131 rev 1 and Luminary 131 (for which scans of a program listing are available), so recovery of the software from this module resulted in the complete recovery of LM131 rev 1.</td>
  </tr>
  <tr>
    <td rowspan="6">Skylark 48<br/>(Skylab and ASTP CM)</td>
    <td>2010802-541</td>
    <td rowspan="6">New Mexico Museum of Space History</td>
    <td rowspan="6">All six modules were flown on the Skylab-2 mission, and possibly reflown on a later mission. Made possible by Chris Orwoll and Larry McGlynn.</td>
  </tr>
  <tr>
    <!--Skylark 48-->
    <td>2010802-551</td>
    <!--New Mexico Museum of Space History-->
    <!--notes-->
  </tr>
  <tr>
    <!--Skylark 48-->
    <td>2010802-561</td>
    <!--New Mexico Museum of Space History-->
    <!--notes-->
  </tr>
  <tr>
    <!--Skylark 48-->
    <td>2010802-571</td>
    <!--New Mexico Museum of Space History-->
    <!--notes-->
  </tr>
  <tr>
    <!--Skylark 48-->
    <td>2010802-581</td>
    <!--New Mexico Museum of Space History-->
    <!--notes-->
  </tr>
  <tr>
    <!--Skylark 48-->
    <td>2010802-591</td>
    <!--New Mexico Museum of Space History-->
    <!--notes-->
  </tr>
</table>

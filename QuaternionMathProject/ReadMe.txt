Project by Matt Brown
Date of last work: 07/23/17

The main goal of this project is to offload time-intensvie math from a core
processor to an FPGA. While this may be more easily accomplished with a DSP
or dedicated hardware on the core CPU, this example was put together to practice
creating dedicated FPGA blocks using the Xilinx Vivado system and to create an
example for offloading and retreiving for a core processor on the NetBurner platform.

The basic idea of this project was to speed up quaternion math for use in vector rotation
calculations. You store a vector to be rotated as a quaternion type on the NetBurner device.
This is simply represented as a series of four floats. Then accompanied by a secondary quaternion
representing the vector and half the angle of rotation desired, you write those two quaternions
to a special block of memory dedicated on the processor for user applications. This 
bit of memory has been mapped to be shuffled out a 32 bit data and address port on the 
device hardware. These two quaternions are received by the FPGA which will then run it
through a series of quaternion multiplication blocks, first multiplying the two, then by
the calculated conjugate.


The documentation for this project consists of two parts. 

1) NetBurnerModuleCode contains the main.cpp file and a simple makefile for this application.
   Many more files would be needed to compile an image, however the documentation in the file
   should be sufficient to show the core concepts trying to be communicated. Should you wish
   to compile an image for yourself, the image was last compiled with NNDK 2.8.5 available from
   www.netburner.com in the tools section. The intended platform to run on is the MOD54415 or 
   MOD54417 products which are pin-compatible, on simply having a secondary ethernet port.
   
2) XilinxFPGACode contains the project last compiled on Vivado 2017.1. The inteded code target
   is the MicroZed development board from Avnet. The top-level file for this project is called
   FlexBusInterface.v and acts as an interface between the external data the internal calculation.
   Rotation.v handles all the calculations through two multiplication blocks and a small stub to 
   generate a quaternion conjugate by simply flipping the sign bits on the floating point integers.
   
   Additionally, there is a generated schematic of the design included in this folder.
   
   
Known Issues:
1) The current example does not handle any floating point edge cases.
2) The calculated power draw of the implemented design currently exceeds the limit of the FPGA.
   While the 6.655W is still excessive, this number has been greatly reduced from 400W in initial renders.
   This is also just a guestimated value from the Vivado software, no successful runs have been completed.
3) Hardware has yet to arrive to successfully demonstate the working transfer of data off the CPU. Several
   issues have been caught and addressed, but it has been decided that external buffers are needed between
   the CPU and the FPGA. On boot, the CPU loads it's application from the on-board flash, however these
   data lines are shared with the external bus. The jumper wires used to prototype the device leave the
   CPU incapable of easily reading the Flash and causes memory corruption at boot time.
4) A method to determine whether the calculation is ready to run has yet to be determined. Currently,
   the device should consistently just continue to calculate the next value based on the inputs. I have
   yet to determine if it would be better to add a few additional hardware lines to signify the information
   is ready to run or if this can be calculated with logic, possibly by loading yet another float of data.

Extra work to complete:
1) Generate a schematic/layout for the connection between the CPU and FPGA.
2) Perform a timing comparision between CPU calculation speed and external off-loading.
3) If timing gap is considerable, consider getting a system or run entirely on ZYNQ platform or equivalent from
   any other manufacturer.
4) Run more useful calculations than simple rotation.
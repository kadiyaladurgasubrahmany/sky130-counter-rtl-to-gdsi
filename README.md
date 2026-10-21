# RTL-to-GDSII Implementation of 4-bit Synchronous Counter on SkyWater 130nm

An interactive, tool-to-tool physical design implementation of a 4-bit synchronous counter targeting the **SkyWater 130nm (sky130A)** open-source PDK.

## Project Highlights
* **Logic Synthesis:** Yosys (RTL to structural gate-level netlist)
* **Floorplan & Placement:** OpenROAD (50% core utilization, met2/met3 pin placement, tapcells inserted)
* **Clock Tree Synthesis (CTS):** TritonCTS with balanced clock buffers and controlled skew
* **Static Timing Analysis (STA):** OpenSTA (Achieved **+8.92 ns** setup slack at 100 MHz)
* **DRC & GDSII Generation:** Magic VLSI (**0 DRC errors**, full-mask `counter.gds` exported)
* **LVS Verification:** Netgen (Achieved `Device classes are equivalent`)

## Key Design Files
* `counter.v`: Behavioral Verilog RTL code
* `counter_synth.v`: Synthesized structural gate-level netlist
* `counter_floorplan.def`: Floorplanned database with I/O pins and tapcells
* `counter_cts.def`: Clock tree synthesized database
* `counter.gds`: Final tapeout-ready GDSII file
* `counter.spice`: Extracted SPICE netlist from physical layout

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
## Layout & Verification Screenshots
<img width="955" height="877" alt="Screenshot 2026-10-21 115110" src="https://github.com/user-attachments/assets/454cebba-777f-498d-9a2a-524173ca4201" />
<img width="1913" height="1024" alt="Screenshot 2026-10-19 160459" src="https://github.com/user-attachments/assets/1e38734e-2a26-4c38-8213-1859d43173b6" />
<img width="1028" height="959" alt="Screenshot 2026-10-21 001820" src="https://github.com/user-attachments/assets/3da203af-0526-4f80-8cb9-86a021d6cf39" />
<img width="1919" height="1031" alt="Screenshot 2026-10-21 002500" src="https://github.com/user-attachments/assets/d966dc4e-4119-4527-9955-5439cd7075fe" />
<img width="851" height="843" alt="Screenshot 2026-10-21 113018" src="https://github.com/user-attachments/assets/38f9b39f-fbed-495a-b3a0-a547985cbe9d" />
<img width="833" height="831" alt="Screenshot 2026-10-21 113049" src="https://github.com/user-attachments/assets/843df8d1-32c4-409f-9ec0-16b1bfc879de" />





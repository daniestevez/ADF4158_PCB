# ADF4158 + HMC391 PCB

This project is a PCB that contains an
[ADF4158](https://www.analog.com/en/products/adf4158.html) direct
modulation/waveform generating fractional-N frequency synthesizer and a
[HMC391](https://www.analog.com/en/products/hmc391.html) 3.9 - 4.45 GHz VCO. The
board is primarily intended as an LO source for a 10 GHz FMCW radar inspired by
the
[ADALM-PHASER](https://wiki.analog.com/resources/eval/user-guides/circuits-from-the-lab/cn0566/overview_setup). The
VCO output can be used with a subharmonic mixer and an IF around 1.6 GHz to
cover the 10 - 10.5 GHz amateur radio band.

The board runs from a 12 - 16 VDC supply, exposes all the control pins of the
ADF4158 in a 2.58 mm pin header (3.3V logic) and includes an optional 10 MHz
reference input. The BOM cost is around 45€.

![PCB top 3D render](https://daniestevez.github.io/ADF4158_PCB/pcb-top.png)

## Outputs

Outputs for the latest commit in the `main` branch are built by CI and published
to Github pages. Additionally, outputs for each commit are published as a Github
artifact.

- [Schematic PDF](https://daniestevez.github.io/ADF4158_PCB/schematic.pdf)
- [PCB PDF](https://daniestevez.github.io/ADF4158_PCB/pcb.pdf)
- [Gerbers](https://daniestevez.github.io/ADF4158_PCB/gerbers.zip)
- [ERC report](https://daniestevez.github.io/ADF4158_PCB/erc.rpt)
- [DRC report](https://daniestevez.github.io/ADF4158_PCB/drc.rpt)
- [PCB top 3D render](https://daniestevez.github.io/ADF4158_PCB/pcb-top.png)
- [PCB bottom 3D render](https://daniestevez.github.io/ADF4158_PCB/pcb-bottom.png)

## BOM

The BOM for this project is available as a
[DigiKey list](https://www.digikey.es/en/mylists/list/G0QI1PQN03).

## PCB fabrication

The PCB is intended to be fabricated on [JLCPCB](https://jlcpcb.com/) using the
following options:

- Base material: FR-4
- Layers: 2
- Deburring/Edge rounding: Yes
- PCB thickness: 0.6 mm (50 ohm RF traces are designed for this stack up)
- Surface finish: LeadFree HASL (HASL with lead is not available with 0.6 mm PCB)
- Min via hole size/diamager: 0.3 mm (0.4/0.45 mm)

These options are very inexpensive: $5.80 for qty. 5, $9.00 for qty. 30.

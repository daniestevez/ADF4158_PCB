PROJECT=ADF4158_PCB

all: outputs/schematic.pdf outputs/pcb.pdf outputs/pcb-top.png outputs/pcb-bottom.png outputs/erc.rpt outputs/drc.rpt output/gerbers.zip

clean:
	rm -rf outputs

.PHONY: all clean

outputs/schematic.pdf: $(PROJECT).kicad_sch
	kicad-cli sch export pdf -o $@ $<

outputs/pcb.pdf: $(PROJECT).kicad_pcb
	kicad-cli pcb export pdf -l B.Cu,F.Cu,F.Paste,F.Silkscreen -o $@ $<

outputs/pcb-top.png: $(PROJECT).kicad_pcb
	kicad-cli pcb render --quality high --zoom 1.75 -o $@ $<

outputs/pcb-bottom.png: $(PROJECT).kicad_pcb
	kicad-cli pcb render --side bottom --quality high --zoom 1.75 -o $@ $<

outputs/drc.rpt: $(PROJECT).kicad_pcb
	kicad-cli pcb drc --exit-code-violations -o $@ $<

outputs/erc.rpt: $(PROJECT).kicad_sch
	kicad-cli sch erc --exit-code-violations -o $@ $<

output/gerbers.zip: $(PROJECT).kicad_pcb
	kicad-cli pcb export gerbers -o outputs/gerbers $<
	kicad-cli pcb export drill --format gerber -o outputs/gerbers $<
	cd outputs/gerbers && zip ../gerbers.zip *
	rm -rf outputs/gerbers

cwlVersion: v1.0
class: CommandLineTool

label: Filter MuSE

requirements:
  - class: DockerRequirement
    dockerImageId: opengenomics/muse

baseCommand: [python, /opt/bin/filter_muse.py, --level, '5']

inputs:
  vcf:
    type: File
    inputBinding:
      position: 1

  output_name:
    type: string
    inputBinding:
      position: 2

outputs:
  output_vcf:
    type: File
    outputBinding:
      glob: $(inputs.output_name)

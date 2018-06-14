baseCommand: []
class: CommandLineTool
cwlVersion: v1.0
id: fastqc_demo
inputs:
  input:
    doc: fastqc or bam file to be evaluated
    inputBinding:
      position: 1
      prefix: --input
    type: File
label: FastQC
outputs:
  stats:
    doc: statistics metrics output html
    outputBinding:
      glob: stats/*
    type: File
requirements:
- class: DockerRequirement
  dockerOutputDirectory: /data/out
  dockerPull: pfda2dockstore/fastqc_demo:12
s:author:
  class: s:Person
  s:name: you li

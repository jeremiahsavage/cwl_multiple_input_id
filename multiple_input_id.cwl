#!/usr/bin/env cwl-runner

cwlVersion: v1.0

requirements:
  - class: DockerRequirement
    dockerPull: ubuntu

class: CommandLineTool

inputs:
  - id: multiple_input
    type:
      type: array
      items: File
      inputBinding:
        prefix: "--multiple_input"

outputs:
  - id: log
    type: File
    outputBinding:
      glob: multiple_input.out

stdout: multiple_input.out

baseCommand: [echo]

meta:
  id: w3_wct
  file-extension: wct
  endian: le
seq:
  - id: first_version
    type: u4
  - id: version
    type: u4
    if: first_version == 0x80000004
  - id: head_comment
    encoding: UTF-8
    type: strz
    if: first_version == 1 or version == 1
  - id: head_trigger
    type: trigger
    if: first_version == 1 or version == 1
  - id: num_trigger
    type: u4
  - id: trigger
    type: trigger
    repeat: expr
    repeat-expr: num_trigger
types:
  trigger:
    seq:
      - id: length
        type: u4
      - id: content
        encoding: UTF-8
        size: length
        type: str
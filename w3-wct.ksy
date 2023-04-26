meta:
  id: w3_wct
  file-extension: wct
  endian: le
seq:
  - id: version
    type: u4
  - id: head_comment
    encoding: UTF-8
    type: strz
  - id: head_trigger
    type: trigger
  - id: triggers_amount
    type: u4
  - id: trigger
    type: trigger
    repeat: expr
    repeat-expr: triggers_amount
types:
  trigger:
    seq:
      - id: length
        type: u4
      - id: content
        encoding: UTF-8
        size: length
        type: str
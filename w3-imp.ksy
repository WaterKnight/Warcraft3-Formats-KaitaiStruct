meta:
  id: w3_imp
  file-extension: imp
  endian: le
  imports:
    - w3str
seq:
  - id: version
    type: u4
  - id: amount
    type: u4
  - id: path
    type: import
    repeat: expr
    repeat-expr: amount
types:
  import:
    seq:
      - id: flags
        type: u1
      - id: path
        type: w3str
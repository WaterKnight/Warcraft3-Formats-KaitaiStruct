meta:
  id: w3_wmp
  file-extension: wmp
  endian: le
seq:
  - id: file_id
    type: w3id
  - id: version
    type: u4
  - id: width
    type: u4
  - id: height
    type: u4
  - id: pathing_node
    type: u1
    repeat: expr
    repeat-expr: width * height
types:
  w3id:
    seq:
      - id: value
        encoding: ASCII
        size: 4
        type: str
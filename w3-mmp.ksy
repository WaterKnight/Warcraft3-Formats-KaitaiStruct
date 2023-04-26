meta:
  id: w3_mmp
  file-extension: mmp
  endian: le
seq:
  - id: version
    type: u4
  - id: icons_chunk
    type: icons_chunk
types:
  icons_chunk:
    seq:
      - id: icons_amount
        type: u4
      - id: icon
        type: icon
        repeat: expr
        repeat-expr: icons_amount
  icon:
    seq:
      - id: icon_type
        type: u4
        enum: icon_type
      - id: x
        type: u4
      - id: y
        type: u4
      - id: color
        type: color
  color:
    seq:
      - id: blue
        type: u1
      - id: green
        type: u1
      - id: red
        type: u1
      - id: alpha
        type: u1
enums:
  icon_type:
    0: gold_mine
    1: house
    2: player_start
    3: neutral
    4: neutral_small
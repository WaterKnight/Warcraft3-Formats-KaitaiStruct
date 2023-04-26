meta:
  id: w3_w3r
  file-extension: w3r
  endian: le
seq:
  - id: version
    type: u4
  - id: regions_amount
    type: u4
  - id: region
    type: region
    repeat: expr
    repeat-expr: regions_amount
types:
  w3str:
    seq:
      - id: value
        encoding: UTF-8
        type: strz
  w3id:
    seq:
      - id: value
        encoding: ASCII
        size: 4
        type: str
  region:
    seq:
      - id: left
        type: f4
      - id: bottom
        type: f4
      - id: right
        type: f4
      - id: top
        type: f4
      - id: name
        type: w3str
      - id: id
        type: u4
      - id: weather_id
        type: w3id
      - id: ambient_sound
        type: w3str
      - id: color_blue
        type: u1
      - id: color_green
        type: u1
      - id: color_red
        type: u1
      - id: end_token
        type: u1
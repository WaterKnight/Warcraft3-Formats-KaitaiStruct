meta:
  id: w3_doo
  file-extension: doo
  endian: le
seq:
  - id: file_id
    type: u4
  - id: version
    type: u4
  - id: sub_version
    type: u4
  - id: doodads_amount
    type: u4
  - id: doodad
    type: doodad
    repeat: expr
    repeat-expr: doodads_amount
  - id: special_doodad_version
    type: u4
  - id: special_doodads_amount
    type: u4
  - id: special_doodad
    type: special_doodad
    repeat: expr
    repeat-expr: special_doodads_amount
types:
  w3id:
    seq:
      - id: value
        encoding: ASCII
        size: 4
        type: str
  doodad:
    seq:
      - id: id
        type: w3id
      - id: variation
        type: u4
      - id: x
        type: f4
      - id: y
        type: f4
      - id: z
        type: f4
      - id: angle
        type: f4
      - id: scale_x
        type: f4
      - id: scale_y
        type: f4
      - id: scale_z
        type: f4
      - id: skin_id
        type: w3id
      - id: flags
        type: u1
      - id: life
        type: u1
      - id: random_item_set_ptr
        type: u4
      - id: item_sets_amount
        type: u4
      - id: item_set
        type: item_set
        repeat: expr
        repeat-expr: item_sets_amount
      - id: editor_id
        type: u4
  item_set:
    seq:
      - id: items_amount
        type: u4
      - id: item
        type: item
        repeat: expr
        repeat-expr: items_amount
  item:
    seq:
      - id: id
        type: w3id
      - id: chance
        type: u4
  special_doodad:
    seq:
      - id: id
        type: w3id
      - id: x
        type: f4
      - id: y
        type: f4
      - id: z
        type: f4
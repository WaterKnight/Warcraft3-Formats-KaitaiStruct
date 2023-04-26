meta:
  id: w3_w3a
  file-extension: w3a
  endian: le
seq:
  - id: version
    type: u4
  - id: original_objects_chunk
    type: objects_chunk
  - id: custom_objects_chunk
    type: objects_chunk
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
  objects_chunk:
    seq:
      - id: amount
        type: u4
      - id: obj
        type: obj
        repeat: expr
        repeat-expr: amount
  obj:
    seq:
      - id: base_id
        type: w3id
      - id: new_id
        type: w3id
      - id: unknown_amount
        type: u4
      - id: unknown
        type: u4
        repeat: expr
        repeat-expr: unknown_amount
      - id: mods_amount
        type: u4
      - id: mod
        type: mod
        repeat: expr
        repeat-expr: mods_amount
  mod:
    seq:
      - id: mod_id
        type: w3id
      - id: var_type
        type: u4
        enum: var_types
      - id: level
        type: u4
      - id: data_pt
        type: u4
      - id: value
        type:
          switch-on: var_type
          cases:
            var_types::int: u4
            var_types::real: f4
            var_types::unreal: f4
            _: w3str
      - id: end_token
        type: u4
enums:
  var_types:
    0: int
    1: real
    2: unreal
    3: string
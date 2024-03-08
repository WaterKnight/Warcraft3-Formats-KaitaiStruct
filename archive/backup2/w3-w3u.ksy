meta:
  id: w3_w3u
  file-extension: w3u
  endian: le
  imports:
    - w3id
    - w3str
seq:
  - id: version
    type: u4
  - id: original_objects_chunk
    type: objects_chunk
  - id: custom_objects_chunk
    type: objects_chunk
types:
  objects_chunk:
    seq:
      - id: num_obj
        type: u4
      - id: obj
        type: obj
        repeat: expr
        repeat-expr: num_obj
  obj:
    seq:
      - id: base_id
        type: w3id
      - id: new_id
        type: w3id
      - id: num_unknown
        type: u4
      - id: unknown
        type: u4
        repeat: expr
        repeat-expr: num_unknown
      - id: num_mod
        type: u4
      - id: mod
        type: mod
        repeat: expr
        repeat-expr: num_mod
  mod:
    seq:
      - id: mod_id
        type: w3id
      - id: var_type
        type: u4
        enum: var_types
      #- id: level
      #  type: u4
      #- id: data_pt
      #  type: u4
      - id: value
        type:
          switch-on: var_type
          cases:
            var_types::int: u4
            var_types::real: f4
            var_types::unreal: f4
            _: w3str
      - id: end_token
        type: w3id
enums:
  var_types:
    0: int
    1: real
    2: unreal
    3: string
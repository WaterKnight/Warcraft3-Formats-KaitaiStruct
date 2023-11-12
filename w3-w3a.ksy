meta:
  id: w3_w3a
  file-extension: w3a
  endian: le
  imports:
    - w3id
    - w3str
seq:
  - id: version
    type: u4
  - id: default_objects_chunk
    type: objects_chunk
  - id: custom_objects_chunk
    type: objects_chunk
types:
  objects_chunk:
    seq:
      - id: num_object
        type: u4
      - id: object
        type: obj
        repeat: expr
        repeat-expr: num_object
  obj:
    seq:
      - id: base_id
        type: w3id
      - id: new_id
        type: w3id
      - id: num_unknown
        type: u4
        if: _root.version == 3
      - id: unknown
        type: u4
        repeat: expr
        repeat-expr: num_unknown
        if: _root.version == 3
      - id: num_mod
        type: u4
      - id: mod
        type: mod
        repeat: expr
        repeat-expr: num_mod
  mod:
    seq:
      - id: id
        type: w3id
      - id: value_type
        type: u4
        enum: value_types
      - id: level
        type: u4
      - id: data_pointer
        type: u4
      - id: value
        type:
          switch-on: value_type
          cases:
            value_types::int: u4
            value_types::real: f4
            value_types::unreal: f4
            _: w3str
      - id: end_token
        type: w3id
enums:
  value_types:
    0: int
    1: real
    2: unreal
    3: string

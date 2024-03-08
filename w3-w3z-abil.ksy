meta:
  id: w3_w3z_abil
  file-extension: w3z
  endian: le
  imports:
    - w3str
    - w3id
seq:
  - id: fill
    type: str
    encoding: ASCII
    size: 0x3a3f1
  - id: abils_amount
    type: u4
  - id: abil
    type: abil
    repeat: expr
    repeat-expr: abils_amount
types:
  abil:
    seq:
      - id: id
        type: w3id
      - id: int0
        type: u4
      - id: int1
        type: u4
      - id: einschub
        type: u4
        repeat: expr
        repeat-expr: 6
        if: int1 == 1
      - id: id2
        type: w3id
      - id: int2
        type: u4
      - id: int3
        type: u4
      - id: int4
        type: u4
      - id: int5
        type: u4
      - id: int6
        type: u4
      - id: int7
        type: u4
      - id: int8
        type: u4
      - id: int9
        type: u4
      - id: int10
        type: u4
      - id: str
        type: w3str
      - id: int11
        type: u4
      - id: techs_amount
        type: u4
      - id: tech
        type: w3id
        repeat: expr
        repeat-expr: techs_amount
      - id: int13
        type: u4
      - id: int14
        type: u4
      - id: int15
        type: u4
      - id: int16
        type: u4
      - id: int17
        type: u4
      - id: int18
        type: u4
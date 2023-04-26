meta:
  id: w3_doo_units
  file-extension: doo
  endian: le
  imports:
    - w3id
seq:
  - id: file_id
    type: w3id
  - id: version
    type: u4
  - id: sub_version
    type: u4
  - id: units_amount
    type: u4
  - id: unit
    type: unit
    repeat: expr
    repeat-expr: units_amount
types:
  unit:
    seq:
      - id: id
        type: w3id
      - id: variation
        type: u8
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
      #- id: skin_id
      #  type: w3id
      - id: flags
        type: u1
      - id: owner_index
        type: u4
      - id: unknown_1
        type: u1
      - id: unknown_2
        type: u1
      - id: life
        type: u4
      - id: mana
        type: u4
      - id: dropped_item_set_ptr
        type: u4
      - id: dropped_item_sets_amount
        type: u4
      - id: dropped_item_set
        type: item_set
        repeat: expr
        repeat-expr: dropped_item_sets_amount
      - id: resources_amount
        type: u4
      - id: target_aquisition
        type: f4
      - id: hero_level
        type: u4
      - id: hero_strength
        type: u4
      - id: hero_agility
        type: u4
      - id: hero_intelligence
        type: u4
      - id: inventory_items_amount
        type: u4
      - id: inventory_item
        type: inventory_item
        repeat: expr
        repeat-expr: inventory_items_amount
      - id: ability_mods_amount
        type: u4
      - id: ability_mod
        type: ability_mod
        repeat: expr
        repeat-expr: ability_mods_amount
      - id: random
        type: random
      - id: color
        type: u4
      - id: waygate
        type: u4
      - id: unit_id
        type: u4
  item_set:
    seq:
      - id: items_amount
        type: u4
      - id: item
        type: item
  item:
    seq:
      - id: id
        type: w3id
      - id: chance
        type: u4
  inventory_item:
    seq:
      - id: slot
        type: u4
      - id: id
        type: w3id
  ability_mod:
    seq:
      - id: id
        type: w3id
      - id: autocast_active
        type: u4
        enum: autocast_active
      - id: level
        type: u4
  random:
    seq:
      - id: random_type
        type: u4
      - id: value
        type:
          switch-on: random_type
          cases:
            0: random_building_item
            1: w3i_group
            2: custom_group
  random_building_item:
    seq:
      - id: level
        type: u1
      - id: unknown_1
        type: u1
      - id: unknown_2
        type: u1
      - id: item_class
        type: u1
  w3i_group:
    seq:
      - id: index
        type: u4
      - id: column_index
        type: u4
  custom_group:
    seq:
      - id: units_amount
        type: u4
      - id: unit
        type: unit
        repeat: expr
        repeat-expr: units_amount
  unit:
    seq:
      - id: id
        type: w3id
      - id: chance
        type: u4
enums:
  autocast_active:
    0: inactive
    1: active
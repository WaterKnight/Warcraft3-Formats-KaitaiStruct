meta:
  id: w3_w3z
  file-extension: w3z
  endian: le
  imports:
    - w3str
    - w3id
seq:
  - id: map_path
    type: w3str
  - id: fill
    type: str
    encoding: ASCII
    size: 520
  - id: obj
    type: obj
    repeat: expr
    repeat-expr: 2
  #- id: abil_chunk
  #  type: abil_chunk
  #- id: units_amount
  #  type: u4
  #- id: unit
  #  type: unit
  #  repeat: expr
  #  repeat-expr: 2
types:
  obj:
    seq:
    - id: id
      type: w3id
    - id: fille
      type: u4
      repeat: expr
      repeat-expr: 9
    - id: filler
      type: u2
    - id: path
      type: w3str
    - id: u
      type: u4
    - id: name
      type: w3str
    - id: fillery
      type: u4
      repeat: expr
      repeat-expr: 3
    - id: f1
      type: f4
    - id: f2
      type: f4
    - id: i
      type: u4
      repeat: expr
      repeat-expr: 4
    - id: t
      type: w3id
    - id: t2
      type: w3id
    - id: a
      type: u4
    - id: b
      type: u1
    - id: c
      type: u4
      repeat: expr
      repeat-expr: 3
    - id: t3
      type: w3id
    - id: d
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t4
      type: w3id
    - id: e
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t5
      type: w3id
    - id: f
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t6
      type: w3id
    - id: g
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t7
      type: w3id
    - id: h
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t8
      type: w3id
    - id: t9
      type: w3id
    - id: j
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t10
      type: w3id
    - id: k
      type: u4
      repeat: expr
      repeat-expr: 2
    - id: t11
      type: w3id
    - id: t12
      type: w3id
    - id: l
      type: u4
      repeat: expr
      repeat-expr: 9
    - id: o
      type: f4
    - id: p
      type: f4
  abil_chunk:
    seq:
      - id: abils_amount
        type: u4
      - id: abil
        type: abil
        repeat: expr
        repeat-expr: abils_amount
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
  unit_chunk:
    seq:
    - id: first_id
      type: w3id
    - id: more_int11
      type: u4
    - id: more_int12
      type: u4
    - id: more_int13
      type: u4
    - id: more_float4
      type: f4
    - id: more_int14
      type: u4
    - id: more_int15
      type: u4
    - id: more_float5
      type: f4
    - id: more_int16
      type: u4
    - id: more_int17
      type: u4
    - id: more_int18
      type: u4
    - id: id
      type: w3id
    - id: prim_int
      type: u4
    - id: name
      type: w3str
    - id: description
      type: w3str
    - id: sound_set
      type: w3str
    - id: model_path
      type: w3str
    - id: portrait_model_path
      type: w3str
    - id: unit_type
      type: u4
    - id: weapon_path
      type: w3str
      if: unit_type > 0
    - id: weapon2_path
      type: w3str
      if: unit_type > 0
    - id: dunno
      type: w3str
      if: unit_type > 1
    - id: ground_texture
      type: w3str
      if: unit_type == 0
    - id: shadow
      type: w3str
    - id: shadow_building
      type: w3str
    - id: selection_scale1
      type: f4
    - id: selection_scale2_not_confirmed
      type: f4
    - id: selection_circle_height
      type: f4
    #- id: less_int1
    #  type: u4
    - id: blargh
      type: u4
    - id: blargh2
      type: f4
      if: blargh > 0
    - id: projectile2_arc
      type: f4
      if: blargh2 > 0
    - id: shadow_center_x
      type: f4
    - id: shadow_center_y
      type: f4
    - id: shadow_center_width
      type: f4
    - id: shadow_center_height
      type: f4
    - id: less_int2
      type: u4
    - id: less_int3
      type: u4
    - id: less_float5
      type: f4
    - id: less_float6
      type: f4
    - id: elevation_pts
      type: u4
    - id: elevation_radius
      type: f4
    - id: less_int5
      type: u4
    - id: red
      type: u1
    - id: green
      type: u1
    - id: blue
      type: u1
    - id: alpha
      type: u1
    - id: replace_float0
      type: f4
    - id: replace_float1
      type: f4
    - id: replace_float2
      type: f4
    - id: anim_walk_speed
      type: f4
    - id: anim_run_speed
      type: f4
    - id: some_int2
      type: u4
    - id: blend_time
      type: f4
    - id: some_float2
      type: f4
    - id: some_int3
      type: u4
    - id: some_float3
      type: f4
    - id: some_int4
      type: u4
    - id: some_flags
      type: u4
    - id: some_float6
      type: u4
    - id: some_float7
      type: u4
    - id: some_int5
      type: u4
    - id: some_float8
      type: u4
    - id: spec
      type: u4
    - id: head
      type: u4
    - id: score_screen_icon_path
      type: w3str
    - id: sound_movement
      type: w3str
    - id: sound_construction
      type: w3str
    - id: sound_fade_in_rate
      type: u4
    - id: sound_fade_out_rate
      type: u4
    - id: sound_random
      type: w3str
    - id: has_caster_upgrade_art
      type: u4
      if: unit_type > 0
    - id: caster_upgrade_art
      type: w3str
      if: unit_type > 0
      
    - id: caster_upgrade_names_amount
      type: u4
      if: unit_type > 0
    - id: caster_upgrade_name
      type: w3str
      repeat: expr
      repeat-expr: caster_upgrade_names_amount
      if: unit_type > 0
      
    - id: caster_upgrades_amount
      type: u4
      if: unit_type > 0
    - id: caster_upgrade
      type: w3str
      repeat: expr
      repeat-expr: caster_upgrades_amount
      if: unit_type > 0
      
    - id: has_special_art
      type: u4
    - id: special_art
      type: w3str
      if: has_special_art == 1
    - id: has_icon
      type: u4
    - id: icon_path
      type: w3str
      if: has_icon == 1
    - id: fill5
      type: u4
    - id: tooltip
      type: w3str
    - id: fill6
      type: u4
    - id: extended_tooltip
      type: w3str
    - id: more_int
      type: u4
    - id: projectile_launch_z
      type: f4
    - id: projectile_launch_z_swim
      type: f4
    - id: projectile_impact_z
      type: f4
    - id: projectile_impact_z_swim
      type: f4
    - id: more_int4
      type: u4
    - id: more_int5
      type: u4
    - id: more_int6
      type: u4
    - id: more_int7
      type: u4
    - id: weapon_sound
      type: w3str
    - id: weapon_sound2
      type: w3str
    - id: has_target_art
      type: u4
    - id: target_art
      type: w3str
      if: has_target_art == 1
    - id: more_rest_int
      type: u4
      repeat: expr
      repeat-expr: 62
    - id: rest
      type: u1
      repeat: expr
      repeat-expr: 1
meta:
  id: wc3_w3i
  file-extension: w3i
  endian: le
seq:
  - id: version
    type: u4
  - id: saves_amount
    type: u4
    if: version >= 16
  - id: editor_version
    type: u4
    if: version >= 16
  - id: game_version
    type: game_version
    if: version >= 27
  - id: map_name
    type: w3str
  - id: author
    type: w3str
  - id: recommended_players
    type: w3str
    if: version >= 8
  - id: unknown_v0_to_v3
    type: unknown_v0_to_v3
    if: version <= 3
  - id: unknown_v4_to_v8
    type: unknown_v4_to_v8
    if: version > 3 and version <= 8
  - id: unknown_string
    type: w3str
  - id: camera_bounds
    type: camera_bounds
  - id: margins
    type: margins
    if: version >= 14
  - id: map_width
    type: u4
    if: version >= 1
  - id: map_height
    type: u4
    if: version >= 1
  - id: unknown_v3_int1
    type: u4
    if: version >= 2 and version <= 8
  - id: flags
    type: flags
    if: version >= 2
  - id: tileset
    type: w3char
    if: version >= 8
  - id: loading_screen
    type: loading_screen
  - id: game_data_set
    type: u4
    if: version >= 17
  - id: unknown_path
    type: w3str
    if: version <= 17
  - id: prologue_screen
    type: prologue_screen
    if: version >= 13
  - id: fog
    type: fog
    if: version >= 19
  - id: global_weather_id
    type: u4
    if: version >= 21
  - id: sound_environment
    type: w3str
    if: version >= 22
  - id: light_environment
    type: w3char
    if: version >= 23
  - id: water_color
    type: water_color
    if: version >= 25
  - id: script_languageso
    type: u4
    if: version >= 28
  - id: supported_graphics_modes
    type: u4
    if: version >= 29
  - id: game_data_version
    type: u4
    if: version >= 30
  - id: players_chunk
    type: players_chunk
  - id: forces_chunk
    type: forces_chunk
  - id: upgrades_chunk
    type: upgrades_chunk
    if: version >= 6
  - id: techs_chunk
    type: techs_chunk
    if: version >= 7
  - id: random_unit_tables_chunk
    type: random_unit_tables_chunk
    if: version >= 12
  - id: random_item_tables_chunk
    type: random_item_tables_chunk
    if: version >= 24
  - id: script_language2
    type: u4
    if: version == 26 or version == 27

types:
  w3str:
    seq:
      - id: value
        type: str
        terminator: 0
        encoding: UTF-8
  w3char:
    seq:
      - id: value
        type: str
        encoding: UTF-8
        size: 1
  w3id:
    seq:
      - id: value
        type: str
        encoding: UTF-8
        size: 4
  point_2d:
    seq:
      - id: x
        type: f4
      - id: y
        type: f4
  game_version:
    seq:
      - id: major
        type: u4
      - id: minor
        type: u4
      - id: revision
        type: u4
      - id: build
        type: u4
  unknown_v0_to_v3:
    seq:
      - id: unknown_v0_int1
        type: u4
      - id: unknown_v0_int2
        type: u4
  unknown_v4_to_v8:
    seq:
      - id: unknown_v4_int1
        type: u4
      - id: unknown_v4_int2
        type: u4
      - id: unknown_v4_int3
        type: u4
      - id: unknown_v4_float1
        type: f4
      - id: unknown_v4_float2
        type: f4
      - id: unknown_v4_float3
        type: f4
  camera_bounds:
    seq:
      - id: camera_bound_left
        type: point_2d
      - id: camera_bound_bottom
        type: point_2d
      - id: camera_bound_right
        type: point_2d
      - id: camera_bound_top
        type: point_2d
  margins:
    seq:
    - id: left
      type: u4
    - id: right
      type: u4
    - id: bottom
      type: u4
    - id: top
      type: u4
  flags:
    seq:
      - id: hide_minimap_on_preview_screens
        type: b1
      - id: change_ally_priorities
        type: b1
      - id: melee
        type: b1
      - id: non_default_tileset_map_size_large_never_been_reduced_to_medium
        type: b1
      - id: unexplored_areas_partially_visible
        type: b1
      - id: fixed_player_parameters_for_custom_teams
        type: b1
      - id: use_custom_teams
        type: b1
      - id: use_custom_techs
        type: b1
      - id: use_custom_abilities
        type: b1
      - id: use_custom_upgrades
        type: b1
      - id: map_properties_menu_opened_at_least_once
        type: b1
      - id: show_water_waves_on_cliff_shores
        type: b1
      - id: show_water_waves_on_rolling_shores
        type: b1
      - id: use_terrain_fog
        type: b1
      - id: tft_required
        type: b1
      - id: item_classification
        type: b1
      - id: custom_water_tint_color
        type: b1
      - id: rest
        type: b1
        repeat: expr
        repeat-expr: 15
  loading_screen:
    seq:
      - id: loading_screen_index
        type: u4
        if: _root.version >= 17
      - id: custom_loading_screen_path
        type: w3str
        if: _root.version >= 10 and _root.version != 18 and _root.version != 19
      - id: loading_screen_text
        type: w3str
        if: _root.version >= 10
      - id: loading_screen_title
        type: w3str
        if: _root.version >= 11
      - id: loading_screen_subtitle
        type: w3str
        if: _root.version >= 11
  prologue_screen:
    seq:
      - id: prologue_screen_path
        type: w3str
        if: _root.version >= 18
      - id: prologue_screen_text
        type: w3str
      - id: prologue_screen_title
        type: w3str
      - id: prologue_screen_subtitle
        type: w3str
  fog:
    seq:
      - id: fog_type
        type: u4
      - id: fog_z_start
        type: f4
      - id: fog_z_end
        type: f4
      - id: fog_density
        type: f4
      - id: fog_color_red
        type: u1
      - id: fog_color_green
        type: u1
      - id: fog_color_blue
        type: u1
      - id: fog_color_alpha
        type: u1
  water_color:
    seq:
      - id: red
        type: u1
      - id: green
        type: u1
      - id: blue
        type: u1
      - id: alpha
        type: u1
  players_chunk:
    seq:
      - id: amount
        type: u4
      - id: player
        type: player
        repeat: expr
        repeat-expr: amount
  player:
    seq:
      - id: num
        type: u4
      - id: controller
        type: u4
      - id: race
        type: u4
      - id: fixed_position
        type: u4
      - id: nme
        type: w3str
      - id: position
        type: point_2d
      - id: ally_low_priority
        type: u4
        if: _root.version >= 5
      - id: ally_high_priority
        type: u4
        if: _root.version >= 5
      - id: enemy_low_priority
        type: u4
        if: _root.version >= 31
      - id: enemy_high_priority
        type: u4
        if: _root.version >= 31
  forces_chunk:
    seq:
      - id: amount
        type: u4
      - id: force
        type: force
        repeat: expr
        repeat-expr: amount
  force:
    seq:
      - id: flags
        type: u4
      - id: players
        type: u4
      - id: name
        type: w3str
  upgrades_chunk:
    seq:
      - id: amount
        type: u4
      - id: upgrade
        type: upgrade
        repeat: expr
        repeat-expr: amount
  upgrade:
    seq:
      - id: players
        type: u4
      - id: id
        type: w3id
      - id: level
        type: u4
      - id: availability
        type: u4
  techs_chunk:
    seq:
      - id: amount
        type: u4
      - id: tech
        type: tech
        repeat: expr
        repeat-expr: amount
  tech:
    seq:
      - id: players
        type: u4
      - id: id
        type: w3id
  random_unit_tables_chunk:
    seq:
      - id: amount
        type: u4
      - id: table
        type: random_unit_table
        repeat: expr
        repeat-expr: amount
  random_unit_table:
    seq:
      - id: num
        type: u4
      - id: name
        type: w3str
      - id: columns_amount
        type: u4
      - id: column_type
        type: u4
        repeat: expr
        repeat-expr: columns_amount
      - id: rows_amount
        type: u4
      - id: row
        type: random_unit_table_row
        repeat: expr
        repeat-expr: rows_amount
  random_unit_table_row:
    seq:
      - id: chance
        type: u4
        repeat: expr
        repeat-expr: _parent.columns_amount
  random_item_tables_chunk:
    seq:
      - id: amount
        type: u4
      - id: table
        type: random_item_table
        repeat: expr
        repeat-expr: amount
  random_item_table:
    seq:
      - id: num
        type: u4
      - id: name
        type: w3str
      - id: sets_amount
        type: u4
      - id: set
        type: item_set
        repeat: expr
        repeat-expr: sets_amount
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
      - id: chance
        type: u4
      - id: id
        type: w3id
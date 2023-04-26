meta:
  id: w3_w3s
  file-extension: w3s
  endian: le
seq:
  - id: version
    type: u4
  - id: sounds_amount
    type: u4
  - id: sound
    type: sound
    repeat: expr
    repeat-expr: sounds_amount
types:
  w3str:
    seq:
      - id: value
        encoding: UTF-8
        type: strz
  sound:
    seq:
      - id: name
        type: w3str
      - id: path
        type: w3str
      - id: eax
        type: w3str
      - id: flags
        size: 4
        type: flags
      - id: fade_in_rate
        type: u4
      - id: fade_out_rate
        type: u4
      - id: volume
        type: u4
      - id: pitch
        type: f4
      - id: unknown_1
        type: u4
      - id: unknown_2
        type: u4
      - id: channel
        type: u4
      - id: min_distance
        type: f4
      - id: max_distance
        type: f4
      - id: cutoff_distance
        type: f4
      - id: unknown_3
        type: f4
      - id: unknown_4
        type: f4
      - id: unknown_5
        type: f4
      - id: unknown_6
        type: u4
      - id: unknown_7
        type: f4
      - id: unknown_8
        type: f4
      - id: var_name
        type: w3str
      - id: internal_sound_name
        type: w3str
        if: version >= 3
      - id: sound_path
        type: w3str
        if: version >= 3
      - id: unknown_9
        type: f4
      - id: unknown_10
        type: u1
        if: version >= 3
      - id: unknown_11
        type: u4
        if: version >= 3
      - id: unknown_12
        type: u4
        if: version >= 3
      - id: unknown_13
        type: u4
        if: version >= 3
      - id: unknown_14
        type: u1
        if: version >= 3
      - id: unknown_15
        type: u4
        if: version >= 3
  flags:
    seq:
      - id: is_looping
        type: b1
      - id: is_sound
        type: b1
      - id: stop_when_out_of_range
        type: b1
      - id: is_music
        type: b1
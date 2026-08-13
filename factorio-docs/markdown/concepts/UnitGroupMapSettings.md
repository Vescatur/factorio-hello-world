# UnitGroupMapSettings

_concept_

**Definition:** table{max_gathering_unit_groups, max_group_gathering_time, max_group_member_fallback_factor, max_group_radius, max_group_slowdown_factor, max_member_slowdown_when_ahead, max_member_speedup_when_behind, max_unit_group_size, max_wait_time_for_late_members, member_disown_distance, min_group_gathering_time, min_group_radius, tick_tolerance_when_member_arrives}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [max_gathering_unit_groups](#max-gathering-unit-groups) | [uint32](../concepts/uint32.md) |  |
| [max_group_gathering_time](#max-group-gathering-time) | [uint32](../concepts/uint32.md) |  |
| [max_group_member_fallback_factor](#max-group-member-fallback-factor) | [double](../concepts/double.md) |  |
| [max_group_radius](#max-group-radius) | [double](../concepts/double.md) |  |
| [max_group_slowdown_factor](#max-group-slowdown-factor) | [double](../concepts/double.md) |  |
| [max_member_slowdown_when_ahead](#max-member-slowdown-when-ahead) | [double](../concepts/double.md) |  |
| [max_member_speedup_when_behind](#max-member-speedup-when-behind) | [double](../concepts/double.md) |  |
| [max_unit_group_size](#max-unit-group-size) | [uint32](../concepts/uint32.md) |  |
| [max_wait_time_for_late_members](#max-wait-time-for-late-members) | [uint32](../concepts/uint32.md) |  |
| [member_disown_distance](#member-disown-distance) | [double](../concepts/double.md) |  |
| [min_group_gathering_time](#min-group-gathering-time) | [uint32](../concepts/uint32.md) |  |
| [min_group_radius](#min-group-radius) | [double](../concepts/double.md) |  |
| [tick_tolerance_when_member_arrives](#tick-tolerance-when-member-arrives) | [uint32](../concepts/uint32.md) |  |

### max_gathering_unit_groups

**Type:** [uint32](../concepts/uint32.md)

The maximum number of automatically created unit groups gathering for attack at any time. Defaults to `30`.

### max_group_gathering_time

**Type:** [uint32](../concepts/uint32.md)

The maximum amount of time in ticks a group will spend gathering before setting off. The actual time is a random time between the minimum and maximum times. Defaults to `10*3 600=36 000` ticks.

### max_group_member_fallback_factor

**Type:** [double](../concepts/double.md)

When a member of a group falls back more than this factor times the group radius, the group will slow down to its `max_group_slowdown_factor` speed to let them catch up. Defaults to `3`.

### max_group_radius

**Type:** [double](../concepts/double.md)

The maximum group radius in tiles. The actual radius is adjusted based on the number of members. Defaults to `30.0`.

### max_group_slowdown_factor

**Type:** [double](../concepts/double.md)

The minimum speed as a percentage of its maximum speed that a group will slow down to so members that fell behind can catch up. Defaults to `0.3`, or 30%.

### max_member_slowdown_when_ahead

**Type:** [double](../concepts/double.md)

The minimum speed a percentage of its regular speed that a group member can slow down to when ahead of the group. Defaults to `0.6`, or 60%.

### max_member_speedup_when_behind

**Type:** [double](../concepts/double.md)

The maximum speed a percentage of its regular speed that a group member can speed up to when catching up with the group. Defaults to `1.4`, or 140%.

### max_unit_group_size

**Type:** [uint32](../concepts/uint32.md)

The maximum number of members for an attack unit group. This only affects automatically created unit groups, manual groups created through the API are unaffected. Defaults to `200`.

### max_wait_time_for_late_members

**Type:** [uint32](../concepts/uint32.md)

After gathering has finished, the group is allowed to wait this long in ticks for delayed members. New members are not accepted anymore however. Defaults to `2*3 600=7 200` ticks.

### member_disown_distance

**Type:** [double](../concepts/double.md)

When a member of a group falls back more than this factor times the group radius, it will be dropped from the group. Defaults to `10`.

### min_group_gathering_time

**Type:** [uint32](../concepts/uint32.md)

The minimum amount of time in ticks a group will spend gathering before setting off. The actual time is a random time between the minimum and maximum times. Defaults to `3 600` ticks.

### min_group_radius

**Type:** [double](../concepts/double.md)

The minimum group radius in tiles. The actual radius is adjusted based on the number of members. Defaults to `5.0`.

### tick_tolerance_when_member_arrives

**Type:** [uint32](../concepts/uint32.md)

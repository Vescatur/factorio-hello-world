# UnitGroupSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [max_gathering_unit_groups](#max-gathering-unit-groups) | [uint32](../types/uint32.md) |  |
| [max_group_gathering_time](#max-group-gathering-time) | [uint32](../types/uint32.md) |  |
| [max_group_member_fallback_factor](#max-group-member-fallback-factor) | [double](../types/double.md) |  |
| [max_group_radius](#max-group-radius) | [double](../types/double.md) |  |
| [max_group_slowdown_factor](#max-group-slowdown-factor) | [double](../types/double.md) |  |
| [max_member_slowdown_when_ahead](#max-member-slowdown-when-ahead) | [double](../types/double.md) |  |
| [max_member_speedup_when_behind](#max-member-speedup-when-behind) | [double](../types/double.md) |  |
| [max_unit_group_size](#max-unit-group-size) | [uint32](../types/uint32.md) |  |
| [max_wait_time_for_late_members](#max-wait-time-for-late-members) | [uint32](../types/uint32.md) |  |
| [member_disown_distance](#member-disown-distance) | [double](../types/double.md) |  |
| [min_group_gathering_time](#min-group-gathering-time) | [uint32](../types/uint32.md) |  |
| [min_group_radius](#min-group-radius) | [double](../types/double.md) |  |
| [tick_tolerance_when_member_arrives](#tick-tolerance-when-member-arrives) | [uint32](../types/uint32.md) |  |

### max_gathering_unit_groups

**Type:** [uint32](../types/uint32.md)

Maximum number of automatically created unit groups gathering for attack at any time.

### max_group_gathering_time

**Type:** [uint32](../types/uint32.md)

### max_group_member_fallback_factor

**Type:** [double](../types/double.md)

If a member falls behind more than this times the group radius, the group will slow down to max_group_slowdown_factor.

### max_group_radius

**Type:** [double](../types/double.md)

Limits for group radius (calculated by number of numbers).

### max_group_slowdown_factor

**Type:** [double](../types/double.md)

When members of a group are behind, the entire group will slow down to at most this factor of its max speed.

### max_member_slowdown_when_ahead

**Type:** [double](../types/double.md)

When a member gets ahead of its group, it will slow down to at most this factor of its speed.

### max_member_speedup_when_behind

**Type:** [double](../types/double.md)

When a member falls behind the group he can speedup up till this much of his regular speed.

### max_unit_group_size

**Type:** [uint32](../types/uint32.md)

Maximum size of an attack unit group. This only affects automatically-created unit groups; manual groups created through the API are unaffected.

### max_wait_time_for_late_members

**Type:** [uint32](../types/uint32.md)

After the gathering is finished the group can still wait for late members, but it doesn't accept new ones anymore.

### member_disown_distance

**Type:** [double](../types/double.md)

If a member falls behind more than this time the group radius, it will be removed from the group.

### min_group_gathering_time

**Type:** [uint32](../types/uint32.md)

Pollution triggered group waiting time is a random time between min and max gathering time

### min_group_radius

**Type:** [double](../types/double.md)

### tick_tolerance_when_member_arrives

**Type:** [uint32](../types/uint32.md)

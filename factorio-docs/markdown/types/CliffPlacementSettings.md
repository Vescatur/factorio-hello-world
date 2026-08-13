# CliffPlacementSettings

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [cliff_elevation_0](#cliff-elevation-0) | [float](../types/float.md) | yes |
| [cliff_elevation_interval](#cliff-elevation-interval) | [float](../types/float.md) | yes |
| [cliff_smoothing](#cliff-smoothing) | [float](../types/float.md) | yes |
| [control](#control) | [AutoplaceControlID](../types/AutoplaceControlID.md) | yes |
| [name](#name) | [EntityID](../types/EntityID.md) | yes |
| [richness](#richness) | [float](../types/float.md) | yes |

### cliff_elevation_0

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 10}`

Elevation at which the first row of cliffs is placed. Can not be set from the map generation GUI.

### cliff_elevation_interval

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 40}`

Elevation difference between successive rows of cliffs. This is inversely proportional to 'frequency' in the map generation GUI. Specifically, when set from the GUI the value is `40 / frequency`.

### cliff_smoothing

**Type:** [float](../types/float.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 1}`

Smoothing makes cliffs straighter on rough elevation but makes placement inaccurate. 0 is no smoothing, 1 is full smoothing. Values outside of 0-1 are possible for specific effects but not recommended.

### control

**Type:** [AutoplaceControlID](../types/AutoplaceControlID.md) · _optional_

Name of the [AutoplaceControl](../prototypes/AutoplaceControl.md).

### name

**Type:** [EntityID](../types/EntityID.md) · _optional_

Name of the [CliffPrototype](../prototypes/CliffPrototype.md).

### richness

**Type:** [float](../types/float.md) · _optional_

Corresponds to 'continuity' in the GUI. This value is not used directly, but is used by the 'cliffiness' noise expression, which in combination with elevation and the two cliff elevation properties drives cliff placement (cliffs are placed when elevation crosses the elevation contours defined by `cliff_elevation_0` and `cliff_elevation_interval` when 'cliffiness' is greater than `0.5`). The default 'cliffiness' expression interprets this value such that larger values result in longer unbroken walls of cliffs, and smaller values (between `0` and `1`) result in larger gaps in cliff walls.

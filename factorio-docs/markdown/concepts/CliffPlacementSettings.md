# CliffPlacementSettings

_concept_

**Definition:** table{cliff_elevation_0, cliff_elevation_interval, cliff_smoothing, control, name, richness}

## Fields

| Name | Type | Optional |
| --- | --- | --- |
| [cliff_elevation_0](#cliff-elevation-0) | [float](../concepts/float.md) |  |
| [cliff_elevation_interval](#cliff-elevation-interval) | [float](../concepts/float.md) |  |
| [cliff_smoothing](#cliff-smoothing) | [float](../concepts/float.md) |  |
| [control](#control) | [string](../concepts/string.md) |  |
| [name](#name) | [string](../concepts/string.md) |  |
| [richness](#richness) | [MapGenSize](../concepts/MapGenSize.md) |  |

### cliff_elevation_0

**Type:** [float](../concepts/float.md)

Elevation at which the first row of cliffs is placed. The default is `10`, and this cannot be set from the map generation GUI.

### cliff_elevation_interval

**Type:** [float](../concepts/float.md)

Elevation difference between successive rows of cliffs. This is inversely proportional to 'frequency' in the map generation GUI. Specifically, when set from the GUI the value is `40 / frequency`.

### cliff_smoothing

**Type:** [float](../concepts/float.md)

Smoothing makes cliffs straighter on rough elevation but makes placement inaccurate. 0 is no smoothing, 1 is full smoothing. Values outside of 0-1 are possible for specific effects but not recommended.

### control

**Type:** [string](../concepts/string.md)

Name of the autoplace control prototype.

### name

**Type:** [string](../concepts/string.md)

Name of the cliff prototype.

### richness

**Type:** [MapGenSize](../concepts/MapGenSize.md)

Corresponds to 'continuity' in the GUI. This value is not used directly, but is used by the 'cliffiness' noise expression, which in combination with elevation and the two cliff elevation properties drives cliff placement (cliffs are placed when elevation crosses the elevation contours defined by `cliff_elevation_0` and `cliff_elevation_interval` when 'cliffiness' is greater than `0.5`). The default 'cliffiness' expression interprets this value such that larger values result in longer unbroken walls of cliffs, and smaller values (between `0` and `1`) result in larger gaps in cliff walls.

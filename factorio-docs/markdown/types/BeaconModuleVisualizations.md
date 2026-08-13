# BeaconModuleVisualizations

_type_

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [art_style](#art-style) | [string](../types/string.md) |  |
| [slots](#slots) | array[array[[BeaconModuleVisualization](../types/BeaconModuleVisualization.md)]] | yes |
| [tier_offset](#tier-offset) | [int32](../types/int32.md) | yes |
| [use_for_empty_slots](#use-for-empty-slots) | [boolean](../types/boolean.md) | yes |

### art_style

**Type:** [string](../types/string.md)

The visualization is chosen based on the [ModulePrototype::art_style](../prototypes/ModulePrototype.md#art-style), meaning if module art style equals beacon module visualization art style then this visualization is chosen. Vanilla uses `"vanilla"` here.

### slots

**Type:** array[array[[BeaconModuleVisualization](../types/BeaconModuleVisualization.md)]] · _optional_

The outer array contains the different slots, the inner array contains the different layers for those slots (with different tints etc). Example:

**Example:**

```
slots =
{
  { --slot 1
    { --layer 1 of slot 1
      BeaconModuleVisualization data
    },
    { --layer 2 of slot 1
      BeaconModuleVisualization data
    }
  },
  { --slot 2
    { --layer 1 of slot 2
      BeaconModuleVisualization data
    },
    { --layer 2 of slot 2
      BeaconModuleVisualization data
    },
    { --layer 3 of slot 2
      BeaconModuleVisualization data
    }
  }
}
```

### tier_offset

**Type:** [int32](../types/int32.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': 0}`

### use_for_empty_slots

**Type:** [boolean](../types/boolean.md) · _optional_ · **Default:** `{'complex_type': 'literal', 'value': False}`

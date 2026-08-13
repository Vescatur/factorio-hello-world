# Settings

_type_ · **abstract**

A struct that provides access to the user-set values of startup [mod settings](https://wiki.factorio.com/Tutorial:Mod_settings). It is accessible through the global object named `settings`.

**Example:**

```
-- Accessing the value of a mod setting
local val = settings.startup["my-mod-setting-name"].value
```

**Definition:** struct (see properties below)

## Properties

| Name | Type | Optional |
| --- | --- | --- |
| [startup](#startup) | dictionary[[string](../types/string.md) → [ModSetting](../types/ModSetting.md)] |  |

### startup

**Type:** dictionary[[string](../types/string.md) → [ModSetting](../types/ModSetting.md)]

All startup mod settings, indexed by the name of the setting.

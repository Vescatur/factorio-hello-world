# LuaSettings

_class_

Object containing the three different types of mod settings: startup settings, global runtime settings and per-player runtime settings. An instance of LuaSettings is available through the global object named `settings`.

## Attributes

| Name | Type | Optional |
| --- | --- | --- |
| [global](#global) | LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] |  |
| [object_name](#object-name) | [string](../concepts/string.md) |  |
| [player_default](#player-default) | LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] |  |
| [startup](#startup) | LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] |  |

### global

**Read:** LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] · _read-only_

The current global mod settings, indexed by prototype name.

Even though this attribute is marked as read-only, individual settings can be changed by overwriting their [ModSetting](../concepts/ModSetting.md) table. Mods can only change their own settings. Using the in-game console, all player settings can be changed.

### object_name

**Read:** [string](../concepts/string.md) · _read-only_

The class name of this object. Available even when `valid` is false. For LuaStruct objects it may also be suffixed with a dotted path to a member of the struct.

### player_default

**Read:** LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] · _read-only_

The **default** player mod settings for this map, indexed by prototype name. Changing these settings only affects the default settings for future players joining the game.

Individual settings can be changed by overwriting their [ModSetting](../concepts/ModSetting.md) table. Mods can only change their own settings. Using the in-game console, all player settings can be changed.

### startup

**Read:** LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)] · _read-only_

The startup mod settings, indexed by prototype name.

## Methods

| Method | Summary |
| --- | --- |
| [get_player_settings](#get-player-settings) | Gets the current per-player settings for the given player, indexed by prototype name. Returns the same structure as LuaPlayer::mod_settings. This table becomes invalid if its associated player does. |

### get_player_settings

`get_player_settings(player)`

Gets the current per-player settings for the given player, indexed by prototype name. Returns the same structure as [LuaPlayer::mod_settings](../classes/LuaPlayer.md#mod-settings). This table becomes invalid if its associated player does.

Even though this attribute is a getter, individual settings can be changed by overwriting their [ModSetting](../concepts/ModSetting.md) table. Mods can only change their own settings. Using the in-game console, all player settings can be changed.

#### Parameters

##### player

**Type:** [PlayerIdentification](../concepts/PlayerIdentification.md)

#### Return values

- LuaCustomTable[[string](../concepts/string.md) → [ModSetting](../concepts/ModSetting.md)]

**Example:**

```
-- Change the value of the "active_lifestyle" setting
settings.get_player_settings(player_index)["active_lifestyle"] = {value = true}
```

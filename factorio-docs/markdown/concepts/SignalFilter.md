# SignalFilter

_concept_

A signal filter may be specified in two ways, either as a string which is a virtual signal name or item prototype name or as a table.

When the LogisticFilter that this is used in has a non-zero `min` value then `comparator` must be `"="` (the default when writing) and `quality` is mandatory.

**Definition:** table{comparator, name, quality, type} ∣ [string](../concepts/string.md)

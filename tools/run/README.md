# run/

- `playtest.ps1` — launches Factorio through Steam on the dev save.

One file, deliberately. Playing the mod is the only thing here that is not a check; the
verification scripts that also start Factorio live in `check/`, grouped with the checks they
belong to rather than with the other things that call `steam.exe`.

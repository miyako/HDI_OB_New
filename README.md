![version](https://img.shields.io/badge/version-20%2B-E23089)
![platform](https://img.shields.io/static/v1?label=platform&message=mac-intel%20|%20mac-arm%20|%20win-64&color=blue)

# HDI_OB_New

Comparing the previous, verbose way of building a 4D object (`JSON Parse("{}")`, `OB SET`) with the `New object` command's single-expression syntax for creating empty, prefilled and nested objects. Originally published by 4D as a **HDI** (*How Do I*) example for **4D v16 R3**; converted from the binary `.4DB` to the `.4DProject` architecture so it runs on current 4D releases.

## What it demonstrates

- Creating an empty object: the previous `JSON Parse("{}")` idiom versus `New object` called with no parameters.
- Prefilling an object with several properties in one call, including nesting a second object as a property value with `OB New`/`New object`, instead of a sequence of `OB SET` calls.
- Building an array of objects in a loop (`ARRAY OBJECT` + `APPEND TO ARRAY`), comparing per-iteration `CLEAR VARIABLE`/`OB SET` against a single inline `New object(...)` per append.
- Passing an object into a subroutine (`CreateMessage`) by reference, showing both syntaxes produce the same mutable object reference, not a copy.
- Rendering each pair's result as JSON (`JSON Stringify` / `JSON Stringify array`) so the two syntaxes can be visually confirmed to produce identical data.

## Key commands

| Command | Used for |
|---|---|
| `New object` | Creating an empty or prefilled object in a single expression, optionally nesting another `New object` as a property value |
| `OB New` | v16 R3-era shorthand for creating a nested object inline as a property value |
| `JSON Parse` | Previous-syntax technique for creating an empty object, by parsing the literal string `"{}"` |
| `OB SET` | Previous-syntax technique for setting object properties one at a time |
| `ARRAY OBJECT` / `APPEND TO ARRAY` | Collecting each generated object into an array across loop iterations |
| `JSON Stringify` / `JSON Stringify array` | Rendering the resulting object or array as JSON text for on-screen comparison |

## How it works

`00_Start` opens the `HDI` splash window; its `BtnDemo` object method opens `HDI2`, the demo form, non-blockingly. On `On Load`, `HDI2/method.4dm` calls `InitInfo` (loads and localises the intro text from `SAMPLES-en.json`/`SAMPLES-ja.json`) and `InitExamples`, which runs all three example pairs and stringifies their results for display next to the corresponding code sample.

Each pair follows the same shape: `Example{N}WithoutNewObject.4dm` reproduces the previous syntax; `Example{N}WithNewObject.4dm` is the `New object` equivalent, producing the same value:

- **Example 1** -- an empty object, passed by reference into `CreateMessage.4dm` to prove both variants yield a real, mutable object reference.
- **Example 2** -- a prefilled object with a nested `published4DMobile` object, built via two `OB SET` calls versus one nested `New object(...)` expression.
- **Example 3** -- a loop building an array of five objects, comparing `CLEAR VARIABLE`/`OB SET` per iteration against a single `New object(...)` passed directly to `APPEND TO ARRAY`.

## Points of interest

- `Example2WithNewObject`'s nested `New object(...)` call replaces two separate `OB SET` calls from the previous syntax in a single expression, showing `New object` can nest arbitrarily deep.
- Both variants of Example 1 pass their object into `CreateMessage` by reference, confirming `New object`'s result behaves identically to a manually built object once constructed.
- The three example pairs' code samples and descriptions are loaded from localized JSON (`SAMPLES-en.json` / `SAMPLES-ja.json`) rather than hardcoded strings, so the on-screen comparison text is itself data-driven.
- This is a v16 R3-era HDI: the array example uses `ARRAY OBJECT` / `APPEND TO ARRAY`, predating the `Collection` type -- see [`HDI_UseCollections`](https://github.com/miyako/HDI_UseCollections) for the collection-based equivalent.

## Modernisation notes

Converted from the 4D v16 R3 binary `.4DB` to the `.4DProject` architecture, then modernised in a single pass.

| Branch | Description | Instructions |
|--------|-------------|--------------|
| [`miyako-upgraded-eureka`](../../tree/miyako-upgraded-eureka) | Full modernisation: XLIFF localisation, `var`/`#DECLARE` syntax, standard menu actions, method visibility, a rebuilt startup dialog (window reuse, `CALL WORKER`, `BtnDemo` object method), and dark mode/Liquid Glass CSS. | [localisation.instructions.md](.github/instructions/localisation.instructions.md), [variable.declarations.instructions.md](.github/instructions/variable.declarations.instructions.md), [menu.instructions.md](.github/instructions/menu.instructions.md), [method.visibility.instructions.md](.github/instructions/method.visibility.instructions.md), [startup.instructions.md](.github/instructions/startup.instructions.md), [css.instructions.md](.github/instructions/css.instructions.md), [tahoe.css.instructions.md](.github/instructions/tahoe.css.instructions.md) |

## References

- [4D blog: New object, an easy way to initialize an object](https://blog.4d.com/ob-new-an-easy-way-to-initialize-an-object/)
- [4D documentation: New object](https://developer.4d.com/docs/commands/new-object)
- [4D documentation: OB SET](https://developer.4d.com/docs/commands/ob-set)
- [4D documentation: JSON Stringify](https://developer.4d.com/docs/commands/json-stringify)
- Original download: [HDI_OB_New.zip](https://downloads.4d.com/Demos/4D_v16_R3/HDI_OB_New.zip)
- Index of v16/v17 HDIs: [miyako/4d-hdi](https://github.com/miyako/4d-hdi)

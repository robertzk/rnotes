## Things I learned from reading though knitr's codebase

* The `utils::getFromNamespace` helper is a neat shortcut for
  `get('foo', envir = getNamespace('bar'))`.

* The `codetools::findLocalsList` and `codetools::findGlobals` functions exists and
  are useful, but I have no idea what they do.

* `na.omit(x)` is an alternative to `Filter(Negate(is.na), x)`. However, it
  will have extraneous attributes.

* Investigate `tools:::makeLazyLoadDB` as a solution around the corruption of
  lazyload DB.

* `utils::formatOL` and `utils::formatUL` are helper functions for formatting
  ordered and unordered lists, respectively.

* `grDevices::rgb` and `grDevices::col2rgb` is a thing, but I am not sure of what it does.


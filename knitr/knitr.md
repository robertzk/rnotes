## Things I learned from reading though knitr's codebase

* The `utils::getFromNamespace` helper is a neat shortcut for
  `get('foo', envir = getNamespace('bar'))`.

* Your code doesn't have to look nice to be popular.

* The `codetools::findLocalsList` and `codetools::findGlobals` functions exists and
  are useful, but I have no idea what they do.

* `na.omit(x)` is an alternative to `Filter(Negate(is.na), x)`. However, it
  will have extraneous attributes.

* Investigate `tools:::makeLazyLoadDB` as a solution around the corruption of
  lazyload DB.

* `utils::formatOL` and `utils::formatUL` are helper functions for formatting
  ordered and unordered lists, respectively.

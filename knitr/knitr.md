## Things I learned from reading though knitr's codebase

* The `utils::getFromNamespace` helper is a neat shortcut for
  `get('foo', envir = getNamespace('bar'))`.

* Your code doesn't have to look nice to be popular.

* The `codetools::findLocalsList` function exists and is useful, but I
  have no idea what it does.




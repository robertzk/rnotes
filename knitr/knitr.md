## Things I learned from reading though knitr's codebase

* The `utils::getFromNamespace` helper is a neat shortcut for
  `get('foo', envir = getNamespace('bar')`.


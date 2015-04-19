
dir <- Ramd:::current_directory()
files <- list.files(dir, pattern = '\\.yml$', full.names = TRUE)
source(normalizePath(file.path(dir, '..', 'utils', 'yaml_to_md_table.R')))

lapply(files, function(file) {
  yaml_to_md_table(file,
    function(x) c(paste0("[`", x[1], "`](", x[2], ")"), x[3]),
    out = gsub('\\.[^.]+$', '.md', file)
  )
})

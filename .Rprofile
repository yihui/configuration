options(
  repos = c(CRAN = 'https://cran.rstudio.com'),
  help_type = 'text', width = 80, github.user = 'yihui', shiny.reactlog = TRUE,
  devtools.name = 'Yihui Xie', devtools.desc.author = 'Yihui Xie <xie@yihui.name>',
  devtools.desc.license = 'GPL',
  warnPartialMatchAttr = TRUE, warnPartialMatchDollar = TRUE
)

if (.Platform$OS.type == 'unix') {
  options(browser = 'google-chrome')
}

if (interactive()) {
  d = list(
    h = function(pkg) help(package = (pkg), help_type = 'html'),
    i = function(...) devtools::install_github(...),
    r = function() {
      d1 = grep('^/usr/', .libPaths(), value = TRUE)
      d2 = setdiff(.libPaths(), d1)
      p1 = .packages(TRUE, d1)
      p2 = .packages(TRUE, d2)
      for (i in intersect(p1, p2)) {
        message('Removing ', i)
        remove.packages(i)
      }
    }
  )
}

## Usage
## update: Rscript configuration/github-update.R
## clone: Rscript configuration/github-update.R clone
## install: Rscript configuration/github-update.R install

pkg = list(yihui = c('Rd2roxygen', 'animation', 'fun', 'R2SWF', 'formatR', 'iBUGS'),
           ggobi = c('plumbr', 'qtbase', 'qtpaint', 'tourr', 'qtutils', 'mosaiq'))

## clean up
unlink(sprintf('%s.roxygen', unlist(pkg)), TRUE)

## clone repositories
if ('clone' %in% commandArgs(TRUE)) {
    for (i in names(pkg)) {
        sapply(pkg[[i]], function(x) {
            timestamp()
            message('clone: ', x)
            system(sprintf('git clone git@github.com:%s/%s.git', i, x))
        }
               )
    }
} else {

    ## under Windows, we might need to set the PATH variable
    if (.Platform$OS.type == 'windows') {
        Sys.setenv(PATH = paste(readRegistry('Software\\TortoiseGit', 'HCU')$MSysGit, Sys.getenv('PATH'), sep = ';'))
        system = shell
    }

    ## update the packages
    for (i in unlist(pkg)) {
        timestamp()
        message('updating: ', i)
        system(sprintf('cd %s && git pull', i))
    }
}

## install R packages
if ('install' %in% commandArgs(TRUE)) {
    for (i in unlist(pkgs)) {
        timestamp()
        message('installing: ', i)
        system(sprintf('R CMD INSTALL %s', i))
    }
}

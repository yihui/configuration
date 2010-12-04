## Rscript configuration/github-update.R
pkg = c('animation', 'fun', 'R2SWF', 'formatR', 'iBUGS', 'Rd2roxygen')

if (FALSE) {
	for (i in pkg) {
		system(sprintf('git clone git@github.com:yihui/%s.git', i))
	}
}
if (.Platform$OS.type == 'windows') {
	Sys.setenv(PATH = paste(readRegistry('Software\\TortoiseGit', 'HCU')$MSysGit, Sys.getenv('PATH'), sep = ';'))
	system = shell
}

for (i in pkg) {
	system(sprintf('cd %s && git pull', i))
}

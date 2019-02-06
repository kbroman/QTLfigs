R_OPTS=--no-save --no-restore --no-init-file --no-site-file

all: Figs/ail.pdf \
	 Figs/batches_fig1.pdf

Figs/ail.pdf: R/ail_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/batches_fig1.pdf: R/batches_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

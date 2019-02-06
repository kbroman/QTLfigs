all: Figs/ail.pdf \
	 Figs/batches_fig1.pdf

Figs/ail.pdf: R/ail_fig.R
	cd $(<D);R $(R_OPTS) -d "source('$(<F)')"

Figs/batches_fig1.pdf: R/batches_fig.R
	cd $(<D);R $(R_OPTS) -d "source('$(<F)')"

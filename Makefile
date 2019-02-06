R_OPTS=--no-save --no-restore --no-init-file --no-site-file

all: Figs/ail.pdf \
	 Figs/batches_fig1.pdf \
	 Figs/causal_network.pdf \
	 Figs/congenic.pdf \
	 Figs/data_fig.png \
	 Figs/epistasis_f2.pdf \
	 Figs/hs.pdf \
	 Figs/intercross.pdf \
	 Figs/lodcurve_insulin_with_effects.pdf \
	 Figs/pleiotropy_network.pdf \
	 Figs/ri8.pdf \
	 Figs/rilines.pdf \
	 Figs/rqtl2_scan.pdf \
	 Figs/scale_fig1.pdf

Figs/ail.pdf: R/ail_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/batches_fig1.pdf: R/batches_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/causal_network.pdf: R/causal_network.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/congenic.pdf: R/congenic_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/data_fig.png: R/data_fig.R R/viridis.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/epistasis_f2.pdf: R/epistasis_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/hs.pdf: R/hs_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/intercross.pdf: R/intercross.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/lodcurve_insulin_with_effects.pdf: R/lodcurve_insulin.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/pleiotropy_network.pdf: R/pleiotropy_network.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/ri8.pdf: R/ri8_fig.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/rilines.pdf: R/rilines_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/rqtl2_scan.pdf: R/rqtl2_figs.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/scale_fig1.pdf: R/scale_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

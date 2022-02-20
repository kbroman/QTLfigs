R_OPTS=--no-save --no-restore --no-init-file --no-site-file

all: Figs/ail.pdf \
	 Figs/ail_light.pdf \
	 Figs/batches_fig1.pdf \
	 Figs/causal_network.pdf \
	 Figs/congenic.pdf \
	 Figs/data_fig.png \
	 Figs/epistasis_f2.pdf \
	 Figs/hmm.pdf \
	 Figs/hs.pdf \
	 Figs/hs_light.pdf \
	 Figs/intercross.pdf \
	 Figs/intercross_light.pdf \
	 Figs/lodcurve_insulin_with_effects.pdf \
	 Figs/pleiotropy_network.pdf \
	 Figs/ri8.pdf \
	 Figs/ri8X.pdf \
	 Figs/ri8self.pdf \
	 Figs/rilines.pdf \
	 Figs/riself.pdf \
	 Figs/rqtl2_scan.pdf \
	 Figs/scale_fig1.pdf \
	 Figs/permtest.pdf

Figs/ail.pdf: R/ail_fig.R R/meiosis_func.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/ail_light.pdf: R/ail_fig_light.R R/meiosis_func.R
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

Figs/hmm.pdf: R/hmm.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/hs.pdf: R/hs_fig.R R/meiosis_func.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/hs_light.pdf: R/hs_fig_light.R R/meiosis_func.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/intercross.pdf: R/intercross.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/intercross_light.pdf: R/intercross_light.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/lodcurve_insulin_with_effects.pdf: R/lodcurve_insulin.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/pleiotropy_network.pdf: R/pleiotropy_network.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/ri8.pdf: R/ri8_fig.R R/colors.R R/meiosis_func.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/ri8X.pdf: R/ri8X_fig.R R/colors.R R/meiosis_func.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/ri8self.pdf: R/ri8self_fig.R R/colors.R R/meiosis_func.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/rilines.pdf: R/rilines_fig.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/riself.pdf: R/riself_fig.R R/meiosis_func.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/rqtl2_scan.pdf: R/rqtl2_figs.R R/colors.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/scale_fig1.pdf: R/scale_fig.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

Figs/%.pdf: R/%.R
	cd $(<D);R $(R_OPTS) -e "source('$(<F)')"

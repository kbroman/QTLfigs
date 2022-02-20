for(bw in c(FALSE, TRUE)) {
if(bw) {
    bgcolor <- "white"
} else {
    bgcolor <- rgb(24, 24, 24, maxColorValue = 255)
}

file <- "_cache/insulin_perms.RData"
if(file.exists(file)) {
  load(file)
} else {
    library(qtl)
    library(lineup)

  attach("~/Projects/Attie/GoldStandard/FinalData/aligned_geno_with_pmap.RData")
  attach("~/Projects/Attie/GoldStandard/FinalData/lipomics_final_rev2.RData")
  phe <- "INSULIN (ng/ml) 10 wk"

  ids <- findCommonID(f2g$pheno$MouseNum, lipomics$MouseNum)

  f2g <- f2g[,ids$first]
  f2g$pheno$insulin <- log10(lipomics[ids$second,phe])

  f2g <- calc.genoprob(f2g, step=1, err=0.002, map.function="c-f")

  sex <- as.numeric(f2g$pheno$Sex)-1

  set.seed(20220219)
  operm <- scanone(f2g, phe="insulin", method="hk", addcovar=sex, n.perm=10000, n.cluster=8)

  save(operm, file=file)
}

if(bw) {
  pdf(file="../Figs/perm_hist_bw.pdf", width=9, height=6.5, pointsize=12, onefile=TRUE)
  par(fg="black",col="black",col.axis="black",col.lab="black",
      bg=bgcolor)
} else {
  pdf(file="../Figs/perm_hist.pdf", width=9, height=6.5, pointsize=12, onefile=TRUE)
  par(fg="white",col="white",col.axis="white",col.lab="white",
      bg=bgcolor)
}
par(mar=c(4.1, 1.1, 1.1, 1.1))

temp <- hist(unclass(operm), breaks=200, main="", yaxt="n", ylab="",
             xlab="", border=bgcolor, col=bgcolor,
             axes=FALSE, xlim=c(0,max(operm)*1.05), xaxs="i")
axis(line=-1, side=1)
title(xlab="Genome-wide maximum LOD score", line=2)
x <- rep(temp$breaks, rep(2, length(temp$breaks)))
#x <- x[-c(1, length(x))]
y <- c(0,rep(temp$counts, rep(2, length(temp$counts))),0)
lines(x,y)#, col=color[1])

#abline(h=0)

dev.off()
}

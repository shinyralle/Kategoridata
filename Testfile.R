#Computer assignment 1

#------------------------------------------------------------------------------------------
#Generate a frequency table and calculate row percentage

tab1<- as.table(rbind(c(309, 191), c(319, 281)))
dimnames(tab1) <- list(gender = c("women", "men"),opinion = c("favor","against"))
addmargins(tab1)
addmargins(prop.table(tab1,1),2)  # To get column percentages: addmargins(prop.table(tab1,2),1) #
#------------------------------------------------------------------------------------------

#Calculate X2, G2 and p-values
chisq.test(tab1,correct=FALSE)
library(MASS)     # the MASS package must be installed (Rstudio menu bar: Tools - Install packages...)
loglm(~gender+opinion,tab1)
#------------------------------------------------------------------------------------------

chisq.test(tab1,correct=FALSE)
library(MASS)     # the MASS package must be installed (Rstudio menu bar: Tools - Install packages...)
loglm(~gender+opinion,tab1)

#------------------------------------------------------------------------------------------

#Calculate risk/odds ratio and confidence interval
library(epitools)    # the epitools package must be installed #
oddsratio(tab1,rev="neither")
riskratio(tab1,rev="neither")

#To get the intended odds/risk ratio, you may need to reverse the rows or columns.

oddsratio(tab1,rev="row")
oddsratio(tab1,rev="col")
oddsratio(tab1,rev="both")
riskratio(tab1,rev="both")

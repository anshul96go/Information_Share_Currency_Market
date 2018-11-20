#importing required libraries
library(ifrogs)
str(pdshare)

#importing datafile
mydata <- read.csv("C:/Users/Anshul Goel/Desktop/Wasim Sir UGP/US_FinalData.csv")
head(mydata)

#Computing IS: We use the automatic lag selection based on the AIC criterion, and specify an upper bound
#for the maximum number of lags to be used for VECM estimation as 5. ans.pds shows the
#list of objects returned from the function.
compute.time <- system.time(ans <- pdshare(log(mydata[,-1]), lag.max=120))
summary(mydata)

#Getting result values
ans$is.original.ordering
ans$is.reversed.ordering
ans$var.covar.matrix
ans$lags.used


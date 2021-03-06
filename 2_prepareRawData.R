
# limit to fish captured [could limit to fish know to be alive with knownZ == 1]
coreData <- filter( coreData,enc == 1 )

# save some typing
cd <- coreData; #rm(coreData) 

# some formatting fixes

cd$section <- as.numeric( cd$section )
cd$inside <- ifelse( cd$section %in% 1:47, T, F )

cd$riverOrdered <- factor(cd$river,levels=c('west brook','wb jimmy','wb mitchell','wb obear'),labels=c("WB","OL",'OS',"IL"), ordered=T)

save(cd,file='coreData')


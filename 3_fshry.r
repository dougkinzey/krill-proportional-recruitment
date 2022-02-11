library(dplyr)
# CCAMLR code from "K_ObsAndCatch_Fxv3LFDs_LFDplot.txt"
#Read the data
Kmv=read.csv(paste(path.dat,'KobsLFDs.csv',sep=''))
#Highlight chosen months per area
Kmv$hi=NA
indx=which((Kmv$ASD=='481N' & Kmv$M==3)|
              (Kmv$ASD=='481S' & Kmv$M==3)|
              (Kmv$ASD=='48.2' & Kmv$M==2)|
              (Kmv$ASD=='48.3' & Kmv$M==7))
Kmv$hi[indx]=Kmv$fr[indx]
Fm=summarise(group_by(Kmv,ASD,t),f=sum(fr[L<=juv.l]),M=unique(M),Y=unique(Y),hi=unique(is.na(hi))==F)

# code from dhk
rec.prop.fshry <- as.data.frame(Fm)
fshry <- as.data.frame(Fm[(Fm$ASD == '481S' & c(Fm$M==1 | Fm$M==2 | Fm$M %in% 7:9)) | 
                          (Fm$ASD == '481N'  & c(Fm$M==1 | Fm$M==2 | Fm$M %in% 7:9)),]) 
# fshry
fshry <- fshry[order(fshry$ASD,fshry$Y,fshry$M),]




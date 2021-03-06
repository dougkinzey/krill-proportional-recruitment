path.out <- paste(path.nm,'fshry/',sep='')
Kmv=read.csv(paste(path.nm,'data/KobsLFDs.csv',sep=''))
dim(Kmv)
if(!dir.exists('fshry')){
    dir.create('fshry')
    }
#######################
# month 1
fsh.len.scaled <- tapply(Kmv$fr,                 
                     list(Kmv$ASD,Kmv$L,Kmv$Y,Kmv$M==1), 
                     mean,na.rm=T)
#dim(fsh.len.scaled)
#[1]  4 51 11 
s481N <- fsh.len.scaled[3,,,1] # 481N
s481S <- fsh.len.scaled[4,,,2] # 481S
s481_m1 <- (s481N + s481S)/2
oc.fsh.scaled <- as.data.frame(as.matrix(s481_m1))
 oc.fsh.scaled<-as.data.frame(as.matrix(t(oc.fsh.scaled)))
 oc.fsh.scaled <- oc.fsh.scaled[,-1] #zero length column
 
 plt.name <- paste('fshry/','481all_m1_juvl_',juv.l,'mm.pdf',sep='')
 pdf(file = plt.name)
 par(cex=1.4) 
 contour(as.matrix(oc.fsh.scaled[,1:35]),x=as.numeric(rownames(oc.fsh.scaled)),
         y=as.numeric(colnames(oc.fsh.scaled[1:35])),xlab = "Year", 
         ylab= "Krill length (mm)",labcex=1.3,ylim=c(20,60),
         nlevels=20,main = 'Fishery month 1 ')
         abline(h=38,col='blue',lwd=3,lty=2)
         abline(h=44,col='blue',lwd=3,lty=2)
graphics.off()


#######################
# month 2
fsh.len.scaled <- tapply(Kmv$fr,                 
                     list(Kmv$ASD,Kmv$L,Kmv$Y,Kmv$M==2), 
                     mean,na.rm=T)
#dim(fsh.len.scaled)
#[1]  4 51 11 
s481N <- fsh.len.scaled[3,,,1] # 481N
s481S <- fsh.len.scaled[4,,,2] # 481S
s481_m1 <- (s481N + s481S)/2
oc.fsh.scaled <- as.data.frame(as.matrix(s481_m1))
 oc.fsh.scaled<-as.data.frame(as.matrix(t(oc.fsh.scaled)))
 oc.fsh.scaled <- oc.fsh.scaled[,-1] #zero length column
 
 plt.name <- paste('fshry/','481all_m2_juvl_',juv.l,'mm.pdf',sep='')
 pdf(file = plt.name)
 par(cex=1.4) 
 contour(as.matrix(oc.fsh.scaled[,1:35]),x=as.numeric(rownames(oc.fsh.scaled)),
         y=as.numeric(colnames(oc.fsh.scaled[1:35])),xlab = "Year", 
         ylab= "Krill length (mm)",labcex=1.3,ylim=c(20,60),
         nlevels=20,main = 'Fishery month 2 ')
         abline(h=38,col='blue',lwd=3,lty=2)
         abline(h=44,col='blue',lwd=3,lty=2)
graphics.off()

#######################
# month 1 & 2
fsh.len.scaled <- tapply(Kmv$fr,                 
                     list(Kmv$ASD,Kmv$L,Kmv$Y,Kmv$M==1 | Kmv$M==2), 
                     mean,na.rm=T)
#dim(fsh.len.scaled)
#[1]  4 51 11 
s481N <- fsh.len.scaled[3,,,1] # 481N
s481S <- fsh.len.scaled[4,,,2] # 481S
s481_m1 <- (s481N + s481S)/2
oc.fsh.scaled <- as.data.frame(as.matrix(s481_m1))
 oc.fsh.scaled<-as.data.frame(as.matrix(t(oc.fsh.scaled)))
 oc.fsh.scaled <- oc.fsh.scaled[,-1] #zero length column
 
 plt.name <- paste('fshry/','481all_m1&2_juvl_',juv.l,'mm.pdf',sep='')
 pdf(file = plt.name)
 par(cex=1.4) 
 contour(as.matrix(oc.fsh.scaled[,1:35]),x=as.numeric(rownames(oc.fsh.scaled)),
         y=as.numeric(colnames(oc.fsh.scaled[1:35])),xlab = "Year", 
         ylab= "Krill length (mm)",labcex=1.3,ylim=c(20,60),
         nlevels=20,main = 'Fishery months 1&2 combined ')
         abline(h=38,col='blue',lwd=3,lty=2)
         abline(h=44,col='blue',lwd=3,lty=2)
graphics.off()

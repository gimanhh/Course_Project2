
attach(NEI)
library(png)
EmissionsTot<-aggregate((Emissions/1e6)~(year),NEI,sum)
png("Plot1.png",width=620,height=534,pointsize=16)
plot(EmissionsTot,type='b',
     main='Total PM2.5 Emissions in U.S.A',
     ylab='Emissions (Millions of Tons)',xlab='Year',
     xaxt='n'
     )
axis(side=1,names(table(year)))
dev.off()
detach(NEI)

##Home work dataset quakes- Locations of Earthquakes of Fiji
e_quakes<-datasets::quakes
quakes

head(quakes)
head(quakes,15)
tail(quakes)
plot(quakes)
plot(quakes$depth, main='Depth visualization',type="l",col= 'red')



barplot(quakes$mag, main = 'Barplot for Magnitude', col= 'red',horiz = T,axes=T)


hist(quakes$depth, main = 'histogram of Depth', xlab = 'depth',
     ylab = 'Depth frequency', col = 'red')


boxplot(quakes$depth, main = ' Single Boxplot for Depth')
boxplot(quakes[,1:4], main= ' Multiple boxplot',col = 'red')


boxplot.stats(quakes$depth)$out
par(mfrow=c(4,3), mar=c(2,5,2,1), las=1, bty="n" )
#par(mfrow=c(3,3), mar=c(2,5,2,1), las=1,bty='n')
#par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")

plot(quakes$depth)
plot(quakes$depth,quakes$mag)
plot(quakes$depth, type='l')
plot(quakes$mag, type = 'l')

barplot(quakes$depth, main = 'Barplot for depth', col= 'green',horiz = T,axes=T)
hist(quakes$depth)
hist(quakes$mag)
boxplot(quakes$depth, main = ' Single Boxplot for depthtitude')
boxplot(quakes[,1:4], main= ' Multiple boxplot',col = 'red')

var(quakes$depth, na.rm = T)

skewness(quakes)

kurtosis(quakes$depth)

moments::skewness(quakes)
sd(quakes$depth)
sd(quakes$mag)
summary(quakes)

pairs(quakes)

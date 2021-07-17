##Home work dataset quakes- Locations of Earthquakes of Fiji
e_quakes<-datasets::quakes
quakes

head(quakes)
head(quakes,15)
tail(quakes)
plot(quakes)
plot(quakes$lat, main='Lattitude visualization',type="l",col= 'red')



barplot(quakes$stations, main = 'Barplot for stations', col= 'red',horiz = T,axes=T)


hist(quakes$lat, main = 'histogram of lat', xlab = 'lattitude',
     ylab = 'lattitude frequency', col = 'red')


boxplot(quakes$lat, main = ' Single Boxplot for lattitude')
boxplot(quakes[,1:3], main= ' Multiple boxplot',col = 'red')


boxplot.stats(quakes$lat)$out
par(mfrow=c(4,3), mar=c(2,5,2,1), las=1, bty="n" )
#par(mfrow=c(3,3), mar=c(2,5,2,1), las=1,bty='n')
#par(mfrow=c(3,3),mar=c(2,5,2,1),  las=1, bty="n")

plot(quakes$lat)
plot(quakes$lat,quakes$long)
plot(quakes$depth, type='l')
plot(quakes$long, type = 'l')
plot(quakes$depth, type = 'l')
barplot(quakes$lat, main = 'Barplot for Latitude', col= 'green',horiz = T,axes=T)
hist(quakes$lat)
hist(quakes$long)
boxplot(quakes$lat, main = ' Single Boxplot for lattitude')
boxplot(quakes[,1:3], main= ' Multiple boxplot',col = 'red')

var(quakes)
skewness(quakes$lat,na.rm=T)
kurtosis(quakes$lat)



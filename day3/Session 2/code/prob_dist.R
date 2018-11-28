

num_flip <- 0:1000
tot <- 1000
prb <- 0.5
y <- dbinom(num_flip,tot,prb)
y
y[991]
class(y)
barplot(y)
df <- data.frame(num_flip,y)

# Poisson
dpois(7,10)
poi = sum(dpois(0:10,10))


sum(poi, na.rm = TRUE)
pois <- sum(dpois(0:10,10))
resu <- 1- poi

###negative binomial
dnbinom(10-3, size = 3, prob = 0.09) 


##### Geometric distribution
dgeom(3,0.3)

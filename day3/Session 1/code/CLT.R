myRandomVariables<-rbeta(10000,5,2)*10
hist(myRandomVariables)
mean(myRandomVariables) #7.13
sd(myRandomVariables) # 1.61
# standard error = sd / sqrt(sample size)


myRandomNormalD <- dnorm(myRandomVariables, mean = mean(myRandomVariables), sd = sd(myRandomVariables))
plot(myRandomVariables,myRandomNormalD)

#Using the Central Limit Theorem to Construct the Sampling Distribution

# sampling 1
n <- 100
sampSize <- 30
xbar1 <- rep(NA, n)

for(i in 1:n){
  mySamp <- sample(myRandomVariables, size = sampSize)
  xbar1[i] = mean(mySamp)
}
sdErr1 <- sd(myRandomVariables)/sqrt(sampSize)
sdErr1
mean(xbar1)
sd(xbar1)

hist(xbar1, breaks = 20)
samp1DN <- dnorm(xbar1, mean = mean(xbar1), sd = sd(xbar1))
plot(xbar1, samp1DN)

# sampling 2
n2 <- 1000
sampSize2 <- 30
xbar2 <- rep(NA, n)

for(i in 1:n2){
  mySamp <- sample(myRandomVariables, size = sampSize2)
  xbar2[i] = mean(mySamp)
}
sdErr1 <- sd(myRandomVariables)/sqrt(sampSize)
sdErr1
mean(xbar2)
sd(xbar2)

hist(xbar2, breaks = 20)
samp2DN <- dnorm(xbar2, mean = mean(xbar2), sd = sd(xbar2))
plot(xbar2, samp2DN)

# sampling 3
n3 <- 10000
sampSize3 <- 30
xbar3 <- rep(NA, n)

for(i in 1:n3){
  mySamp <- sample(myRandomVariables, size = sampSize3)
  xbar3[i] = mean(mySamp)
}
sdErr1 <- sd(myRandomVariables)/sqrt(sampSize)
sdErr1
mean(xbar3)
sd(xbar3)

hist(xbar3, breaks = 20)
samp3DN <- dnorm(xbar3, mean = mean(xbar3), sd = sd(xbar3))
plot(xbar3, samp3DN)

# sampling 4
n4 <- 10000
sampSize4 <- 200
xbar4 <- rep(NA, n)

for(i in 1:n4){
  mySamp <- sample(myRandomVariables, size = sampSize4)
  xbar4[i] = mean(mySamp)
}
sdErr4 <- sd(myRandomVariables)/sqrt(sampSize4)
sdErr4
mean(xbar4)
sd(xbar4)

hist(xbar4, breaks = 20)
samp4DN <- dnorm(xbar4, mean = mean(xbar4), sd = sd(xbar4))
plot(xbar4, samp4DN)

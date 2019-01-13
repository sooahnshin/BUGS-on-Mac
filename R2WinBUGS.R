###############
## R2WinBUGS ##
###############
## Sooahn Shin
install.packages("R2WinBUGS")
library(R2WinBUGS)
# An example model file is given in:
model.file <- system.file(package="R2WinBUGS", "model", "schools.txt")
# Let's take a look:
# file.show(model.file)
data(schools)
schools
J <- nrow(schools)
y <- schools$estimate
sigma.y <- schools$sd
data <- list(J=J, y=y, sigma.y=sigma.y)
inits <- function(){
  list(theta=rnorm(J, 0, 100), mu.theta=rnorm(1, 0, 100),
       sigma.theta=runif(1, 0, 100))
}
parameters <- c("theta", "mu.theta", "sigma.theta")
## You may need to edit "bugs.directory", the directory where WinBUGS was installed
my.bugs.directory="/Users/sooahn/Downloads/WinBUGS14/"
schools.sim <- bugs(data, inits, parameters, model.file,
                    n.chains=3, n.iter=5000,
                    bugs.directory=my.bugs.directory, useWINE=T, debug=T)
print(schools.sim)
plot(schools.sim)
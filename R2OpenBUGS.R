################
## R2OpenBUGS ##
################
## Sooahn Shin
install.packages("R2OpenBUGS")
library(R2OpenBUGS)
# An example model file is given in:
model.file <- system.file(package="R2OpenBUGS", "model", "schools.txt")
# Let's take a look:
# file.show(model.file)
data(schools)
schools
J <- nrow(schools)
y <- schools$estimate
sigma.y <- schools$sd
data <- list ("J", "y", "sigma.y")
inits <- function(){
  list(theta=rnorm(J, 0, 100), mu.theta=rnorm(1, 0, 100),
       sigma.theta=runif(1, 0, 100))
}
parameters <- c("theta", "mu.theta", "sigma.theta")
## You may need to specify "OpenBUGS.pgm", the directory where OpenBUGS was installed
my.OpenBUGS.pgm="/Users/sooahn/.wine/drive_c/Program Files (x86)/OpenBUGS/OpenBUGS323/OpenBUGS.exe"
schools.sim <- bugs(data, inits, parameters, model.file,
                    n.chains=3, n.iter=5000,working.directory=getwd(),
                    OpenBUGS.pgm=my.OpenBUGS.pgm, useWINE=T,debug = T)
print(schools.sim)
plot(schools.sim)


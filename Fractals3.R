library(caTools) # external package providing write.gif function

jet.colors <- colorRampPalette(c("#00007F", "blue", "#007FFF", "cyan", "#7FFF7F",
                                 "yellow", "#FF7F00", "red", "#7F0000"))
dx <- 400                  # define width
dy <- 400                  # define height
C <- complex( real=rep(seq(-2.2, 1.0, length.out=dx), each=dy ),
              imag=rep(seq(-1.2, 1.2, length.out=dy), dx ) )
C <- matrix(C,dy,dx)       # reshape as square matrix of complex numbers


Z <- list(0,0,0,0,0)

# initialize output 3D array
X<- list(array(0, c(dy,dx,100)),array(0, c(dy,dx,100)),array(0, c(dy,dx,100)),
	 array(0, c(dy,dx,100)),array(0, c(dy,dx,100)))

for (k in 1:100) {		    # loop with 100 iterations
  for (i in 1:5){
  twoI <- 2*i
  Z[[i]]<- sin(Z[[i]])^(twoI) + C         # the central difference equation
  
  X[[i]][,,k] <- exp(-abs(Z[[i]]))   # capture results
  }
}

for (i in 1:5){
	filename <- paste("images/Mandelbrot","0",as.character(i),"bb.gif",sep = "")
	write.gif(X[[i]], filename, col=jet.colors, delay=100)
}

# Second cycle 6 - 10

Z <- list(0,0,0,0,0)

for (k in 1:100) {          	    # loop with 100 iterations
  for (i in 1:5){
  twoI <- 2*(i + 0)
  Z[[i]]<- cos(Z[[i]])*sin(Z[[i]])^(twoI) + C         # the central difference equation

  X[[i]][,,k] <- exp(-abs(Z[[i]]))   # capture results
  }
}

for (i in 1:5){
        filename <- paste("images/Mandelbrot","0",as.character(i),"cc.gif",sep = "")
        write.gif(X[[i]], filename, col=jet.colors, delay=100)
}

# Third cycle 11 - 15

Z <- list(0,0,0,0,0)

for (k in 1:100) {          	     # loop with 100 iterations
  for (i in 1:5){
  twoI <- 2*(i + 0)
  Z[[i]]<- sin(Z[[i]])*Z[[i]]^(twoI) + C         # the central difference equation

  X[[i]][,,k] <- exp(-abs(Z[[i]]))   # capture results
  }
}

for (i in 1:5){
        filename <- paste("images/Mandelbrot","0",as.character(i),"dd.gif",sep = "")
        write.gif(X[[i]], filename, col=jet.colors, delay=100)
}


# Fourth cycle 16 - 20

Z <- list(0,0,0,0,0)

for (k in 1:100) {          	     # loop with 100 iterations
  for (i in 1:5){
  twoI <- 2*(i + 15)
  Z[[i]]<- sin(Z[[i]]^(twoI)) + C         # the central difference equation

  X[[i]][,,k] <- exp(-abs(Z[[i]]))   # capture results
  }
}

for (i in 1:5){
        filename <- paste("images/Mandelbrot","0",as.character(i),"ee.gif",sep = "")
        write.gif(X[[i]], filename, col=jet.colors, delay=100)
}

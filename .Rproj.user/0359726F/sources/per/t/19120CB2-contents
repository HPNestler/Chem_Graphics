##  2D Gaussian Kernel plot

## Generate x and y coordinates as sequences
x = seq(-10,10,0.1)
y = seq(-10,10,0.1)

# An empty matrix z
z = matrix(data=0, nrow=length(x), ncol=length(x))

### Gaussian kernel generation to fill the z matrix.
sigma = list(1.0, 2.0, .5, .75)
mux = list(-1.0, 3,-5, -2)
muy = list(-1.0, 3, -4, 2)
A = list(1.0, 2, 1,2)

## sigma2 = 2.0
## mux2 = 3
## muy2 = 3
## A2 = 2.0

ng = length(A)

## print(mux[1])
## print(muy[2])

for(i in 1:length(x))
{
  for(j in 1:length(y))
  {
##    z[i,j] = A * (1/(2*pi*sigma^2)) * exp( -((x[i]-mux)^2 + (y[j]-muy)^2)/(2*sigma^2)) 
##    z[i,j] = A2 * (1/(2*pi*sigma2^2)) * exp( -((x[i]-mux2)^2 + (y[j]-muy2)^2)/(2*sigma2^2)) + z[i,j]
##    z[i,j] = A * exp( -((x[i]-mux)^2 + (y[j]-muy)^2)/(2*sigma^2))
    for (k in 1:ng)
    {
         ## z[i,j] = A[k] * exp( -((x[i]-mux[k])^2 + (y[j]-muy[k])^2)/(2*sigma[k]^2)) + z[i,j]
        z[i,j] = A[[k]] * exp( -((x[i]-mux[[k]])^2 + (y[j]-muy[[k]])^2)/(2*sigma[[k]]^2)) + z[i,j]
    }
  }
}

### Now z is a matrix of dimension length(x) * length(y)

# Plotting surface with persp() function of default "Graphics" library in R.
## (Note: At this point, just give any x,y vector and z matrix of terrain to 
##       get your plot)




##--------------------------------------------------------


## Create next plot on a separate canvas.
X11()


# Required for using persp3D() function below.
library(plot3D)


## We call persp3D function for same Gaussian kernal data generated above.

persp3D(x,y,z,theta=20, phi=30, axes=TRUE,scale=2, box=TRUE, nticks=5, 
        
        ticktype="detailed", 
        # xlab="X-value", ylab="Y-value", zlab="Z-value", 
        
        main="Multi Gaussian",
        facets = TRUE,
        shade = .2,
        lighting = FALSE,ltheta = -90, lphi = 0
        )

surface3d(x, y, z, color = col, back = "lines")


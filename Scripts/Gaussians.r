##  2D Gaussian Kernel plot

# Required for using persp3D() function below.
library(plot3D)

## Generate x and y coordinates as sequences
x = seq(-10,10,0.1)
y = seq(-10,10,0.1)

## Initialize matrix z with '0'
z = matrix(data=0, nrow=length(x), ncol=length(x))

## Gaussian kernel generation to fill the z matrix.
sigma = list(1.0, 2.0, .5, .75, .25, 3, 2)
mux = list(-1, 3,-5,-2, 6, 0,-6)
muy = list(-1, 3, 4, 2,-5,-7, 7)
A = list(1.0, 2, 1, 2,.3,10,15)

for (k in 1:length(A))
{
  for(i in 1:length(x))
  {
    for(j in 1:length(y))
    {
        z[i,j] = A[[k]] * (1/(2*pi*sigma[[k]]^2)) * exp( -((x[i]-mux[[k]])^2 + (y[j]-muy[[k]])^2)/(2*sigma[[k]]^2)) + z[i,j]    
        ## z[i,j] = A[[k]] * exp( -((x[i]-mux[[k]])^2 + (y[j]-muy[[k]])^2)/(2*sigma[[k]]^2)) + z[i,j]
    }
  }
  
  ## Create next plot on a separate canvas.
  ##X11()
  
  ## We call persp3D function for same Gaussian kernal data generated above.
  
  persp3D(x,y,z,theta=20, phi=30, axes=TRUE,scale=2, box=TRUE, nticks=5, 
          
          ticktype="detailed", 
          # xlab="X-value", ylab="Y-value", zlab="Z-value", 
          
          main="Multi Gaussian",
          facets = TRUE,
          shade = .2,
          lighting = FALSE,ltheta = -90, lphi = 0)
}

### Now z is a matrix of dimension length(x) * length(y)


## Create next plot on a separate canvas.
X11()

## We call persp3D function for same Gaussian kernel data generated above.

persp3D(x,y,z,theta=10, phi=20, axes=TRUE,scale=2, box=TRUE, nticks=5, 
        
        ticktype="detailed", 
        # xlab="X-value", ylab="Y-value", zlab="Z-value", 
        
        main="Multi Gaussian",
        facets = TRUE,
        shade = .2,
        lighting = FALSE,ltheta = -90, lphi = 0
        )

## surface3d(x, y, z, color = col, back = "lines")


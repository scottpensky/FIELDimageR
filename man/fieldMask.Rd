\name{fieldMask}
\alias{fieldMask}
\title{
  Removing the soil using vegetation index
}
\description{
  Different vegetation indices can be used to remove the soil. For the list of indices please visit the FIELDimageR manual at link:
}
\usage{
  fieldMask(mosaic,Red=1,Green=2,Blue=3,RedEdge=NULL,NIR=NULL,mask=NULL,index="HUE",myIndex=NULL,cropValue=0,cropAbove=T, projection=T, DSMmosaic=NULL, DSMcropAbove=T, DSMcropValue=0, plot=T)
}
\arguments{
  \item{mosaic}{
    object of class stack with at least 3 bands.
  }
  \item{Red,Green,Blue,RedEdge,NIR}{
    respective position of the band at the original image file.
  }
  \item{index}{
    vector with the vegetation indices to be calculated. For the list of indices please visit the FIELDimageR manual at link:
  }
  \item{myIndex}{
    user can calculate a diferent index using the bands names, e.g. "(Green+Blue)/Red-NIR/RedEdge"
  }
  \item{mask}{
    if avaliable the soil will be removed following this mask and not the vegetation index, cropValue and cropAbove must be used.
  }
  \item{cropValue}{
    referent value of soil in the image.
  }
  \item{cropAbove}{
    if TRUE all values above the cropValue will be accounted to make the mask.
  }
  \item{projection}{
    if TRUE the projection will not be accounted to the mask.
  }
  \item{DSMmosaic, DSMcropAbove, DSMcropValue}{
    DSM should be used if the file of height is provided.
  }
  \item{plot}{
    if is TRUE the original and crop image will be plotted.
  }
}
\details{
  The function returns a image with the original bands (layers) without the soil and mask with logical values of 0 and 1 for vegetation or soil.
}
\value{
  Image format stack without soil and mask with logical values of 0 and 1 for vegetation or soil.
}
\references{
 Matias FI, Caraza-Harter MV, Endelman JB. FIELDimageR: An R package to analyze orthomosaic images from agricultural field trials. The Plant Phenome J. 2020;e20005. https://doi.org/10.1002/ppj2.20005
}
\examples{
  ##see Vignette at https://github.com/filipematias23/FIELDimageR
}

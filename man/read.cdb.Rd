\name{read.cdb}
\alias{read.cdb}
\title{
Reads a cdb file
}
\description{
This function reads a cdb file (or its text version) and creates a data
frame with the keys and values.
}
\usage{
read.cdb(file, type=c("cdb","txt"))
}

\arguments{
  \item{file}{The name of the cdb file to read.}
  \item{type}{A character string describing the type of file. Value
  \code{cdb} reads a file with the native format; \code{txt} needs a
  text record format. See the Details section.}
}
\details{
This function reads data files in the cdb format or in its text version.
The format is described in the documents of the reference section.

It reads all the keys and values and transforms them as a data frame with two columns.
}
\value{
An object of the class \code{data.frame} with two columns: The first one
collects the keys and the second one shows the values.
}
\references{
  D. J. Bernstein The cdbmake and cdbdump programs \url{http://cr.yp.to/cdb/cdbmake.html}

   Yusuke Shinyama (2003) Constant Database (cdb) Internals
   \url{http://www.unixuser.org/~euske/doc/cdbinternals/}
   
   Michael Tokarev (2012) TinyCDB - a Constant DataBase
   \url{http://www.corpit.ru/mjt/tinycdb.html}
 }
\author{
Emilio Torres Manzanera
}
% \note{
%  ~~further notes~~
% }
\seealso{
  \code{\link{write.cdb}}
}
\examples{
packages <- rownames(as.data.frame(installed.packages()))
set.seed(123)
a <- data.frame(key=sample(packages, 10, replace = TRUE),
                value=sample(packages, 10, replace = TRUE))
write.cdb(a, "Base.txt", type="txt")

b <- read.cdb("Base.txt", type="txt")
b

c <- read.cdb(system.file("extdata", "example.cdb",
                        package = "cdb"))
c
}

\keyword{ manip }
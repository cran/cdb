\name{cdb-package}
\alias{cdb-package}
\alias{cdb}
\docType{package}
\title{
Reading and Writing Constant DataBases
}
\description{
A constant database is a data structure created by Daniel J. Bernstein
in his cdb package. Its format consists on a sequence of
(key,value)-pairs. This R package emulates the basic cdb utilities:
read (cdbget) and write (cdbdump).
}
\details{
\tabular{ll}{
Package: \tab cdb\cr
Type: \tab Package\cr
Version: \tab 0.0.1\cr
Date: \tab 2013-04-14\cr
License: \tab GPL3\cr
}
Function \code{read.cdb} reads a cdb file and returns a data frame with all the keys
and the values of the constant database.

Function \code{write.cdb} exports a data frame with two columns to a text file,
using the record format proposed by D. J. Bernstein.
}
\author{
Emilio Torres Manzanera

Maintainer: Emilio Torres Manzanera <torres@uniovi.es>
}
\references{
  Daniel J. Bernstein cdb \url{http://cr.yp.to/cdb.html}
  
  Michael Tokarev (2012) TinyCDB - a Constant DataBase
  \url{http://www.corpit.ru/mjt/tinycdb.html}
}
\keyword{ package }
% \seealso{
% ~~ Optional links to other man pages, e.g. ~~
% ~~ \code{\link[<pkg>:<pkg>-package]{<pkg>}} ~~
% }
\examples{
\dontrun{read.cdb("example.cdb")}
\dontrun{write.cdb(x, filename="Base.txt", type="txt")}
}

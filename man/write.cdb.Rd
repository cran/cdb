\name{write.cdb}
\alias{write.cdb}
\title{
Writes a data frame to a text file
}
\description{
This function writes a two column data frame to a text file using the cdb record format.
}
\usage{
write.cdb(x, file, type=c("cdb","txt"))
}

\arguments{
  \item{x}{An object that can be coerced as a data frame with two columns.}
  \item{file}{The name of the cdb file to write.}
  \item{type}{A character string describing the type of file. Value
  \code{cdb} does nothing; \code{txt} writes a text file using the cdb
  record format. See the Details section.}
}
\details{
  This function writes a data frame to a file using the text
  version of the cdb format. The data frame (or the object) must have only two columns: The first one contains the keys and
  the second column are the values.

  The text version of the constant databse is a file with several lines with
  the form of \verb{+klen,vlen:key->value} followed by a newline. klen and vlen are the number of bytes in key and in value,
 respectively. The end of data is indicated by an extra newline.
}
\value{
   A text file with all the keys and values.
}
\references{
  D. J. Bernstein The cdbmake and cdbdump programs \url{http://cr.yp.to/cdb/cdbmake.html}
  
   Michael Tokarev (2012) TinyCDB - a Constant DataBase
   \url{http://www.corpit.ru/mjt/tinycdb.html}
 }
\author{
Emilio Torres Manzanera
}
\note{
  This text file can be transformed into a native cdb format using
  external programs. You may use an external program (for instance, TinyCDB) to
   create a cdb version from the text file (see references for
   details). In future versions, a native creation of cdb files will be
   developed.
}
\seealso{
  \code{\link{read.cdb}}
}
\examples{
set.seed(123)
a <- data.frame(key=rnorm(10),value=rnorm(10))
write.cdb(a, "Base.txt", type="txt")

# Create a cdb base using an external program.
# For instance, using the TinyCDB program:
\dontrun{system("cdb -c Base.cdb Base.txt")}
}

\keyword{ manip }
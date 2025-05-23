# Copyright Mark Niemann-Ross, 2017
# Author: Mark Niemann-Ross. mark.niemannross@gmail.com
# LinkedIn: https://www.linkedin.com/in/markniemannross/
# Description: Example file for R Data Types:Basic Types

# R has six atomic types: logical, integer, real, complex, string (or character) and raw

# Logical -----------------------------------------------------------------
I.am.logical <- TRUE
is.logical(I.am.logical)
is.logical(FALSE)
is.logical(false) # FALSE, not false. TRUE, not true (or True)
is.logical(True)
is.logical(1) # 1 is an integer. Not logical
as.numeric(TRUE) # although the inverse sort of works

TRUE & FALSE # use & for AND. Caution: & is different than &&
TRUE | FALSE # use | for OR. Caution: | is different than ||
! FALSE # use ! for negate
help("&")
I.am.logical <- c(TRUE,TRUE,FALSE)
any(I.am.logical)
all(I.am.logical)

# Integer -----------------------------------------------------------------
I.am.integer <- as.integer(3)
I.am.integer <- 3L
class(I.am.integer)
is.integer(I.am.integer)
is.numeric(I.am.integer) # Integer is a subset of Numeric
I.am.integer <- as.integer(3.35) #round off


# Real -----------------------------------------------------------------
I.am.numeric <- 1
class(I.am.numeric) # proof of numeric
I.am.numeric <- 10.5 # real
I.am.numeric <- 1.5:10.5 # sequence of real, increment of 1
I.am.numeric <- as.numeric(1:10) # normally INT, but coerced to numeric
is.numeric(I.am.numeric)

# Complex -----------------------------------------------------------------
I.am.complex <- 3i
class(I.am.complex)
I.am.complex <- 1 + 2i
I.am.complex <- -1 + 0i
sqrt(I.am.complex)
-1+0i == as.complex(-1)

# Character ---------------------------------------------------------------
I.am.character <- "I like R"
as.numeric(I.am.character) # all NA
as.character(3.14) == as.numeric(3.14) #be careful how this is used
"3.14" == 3.14
I.am.character[3] # NA. 
substr(I.am.character,start=3,stop=3) # use substr instead
nchar(I.am.character) != length(I.am.character)

paste(I.am.character,"adishes")
paste0(I.am.character,"adishes")
help(sub)

# Raw ---------------------------------------------------------------
as.raw(40) # prints 28. 28 = as.hexmode(40)
charToRaw("hello") # produces string of hexadecimal bytes

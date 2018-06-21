#Convert a binary string/number to decimal number
ToDecimal = function(a) {
  d=0 
  a=as.character(a)
  for (i in 1:nchar(a)) {
    d=d+(2^(nchar(a)-i)*as.integer(substr(a,i,i)))
  } 
  return(d)
}

#Convert a decimal number to binary string
ToBinary = function(c) {
  k=NULL
  while (c%/%2!=0 | c%%2!=0){
  if (c==0) {k="0"
  } else if (c%%2==0){
    k=paste0(as.character(0),k)
  } else if (c%%2!=0){
    k=paste0(as.character(1),k)
  }
    c=c%/%2
  }
  return(k)
}

#Add two binary numbers
a=1011
b=1000
ToBinary(ToDecimal(a)+ToDecimal(b))

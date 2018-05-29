n=in;
while(n>1){
  out(n);
  if(n&1){
   n= n*3+1;
  } else {
   n = n>>1;
  }
 }
out(n);
halt;
int n;

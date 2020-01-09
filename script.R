# product of all digits in a number
# https://www.geeksforgeeks.org/program-to-calculate-product-of-digits-of-a-number/
fx=function(n){
  product = 1
  while (n!=0){
    product=product*(n%%10) 
    n=n%/%10
  }
  return(product)
}
# through 100 tries, generate list of 6 numbers where fx(6th)==fx(1st) 
n=1:100
seq=11:99
seq=seq[seq%%10!=0]
for(i in n){
  num1=sample(seq,1)
  num2=sample(seq,1)
  num3=fx(num1)+fx(num2)
  num4=fx(num2)+fx(num3)
  num5=fx(num3)+fx(num4)
  num6=fx(num4)+fx(num5)
  if(fx(num5)+fx(num6)==num1){
    print(paste0("i: ",i))
    print(num1)
    print(num2)
    print(num3)
    print(num4)
    print(num5)
    print(num6)
  }
}
# result (eg.)
# [1] "i: 94"
# [1] 28
# [1] 89
# [1] 88
# [1] 136
# [1] 82
# [1] 34

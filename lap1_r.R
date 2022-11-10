
#lap1
#by natthawat

# numeric number 
x<-1
y<-2 
z<- x+y
print(z)

sum <- function(){
  a <- 2
  b <- 3
  c <- a+b
  return(c)
}
#script function

(37 * 9/5) +32
celsius2fah<- function(celsius) {
  (celsius * 9/5) +32
}


faht2celsius <- function(fah) {
  (fah - 32) * 5 / 9
}

#data type -> R
w <- 5
class(w)

s <- 30L
class(s)

str <- "Jame"
class(str)

today <- Sys.Date()
time <- date()

# calculate
cal1 <- 5
cal2 <- 6

cal1+cal2
cal1-cal2
cal1*cal2
cal1/cal2
cal1^cal2
cal1**cal2
cal1%%cal2
cal1%/%cal2
cal1&&cal2

# vector
manu <- c("mocha","late","espresso")
manu[1]
manu[2]
manu[3]

price <- c(45,50,60)

order <- c(2,3,10)

#data frame
disp <- data.frame(manu,price,order) 

disp$revenue <- disp$price * disp$order

rectangle <- function(W,h){
  w * h 
}
rectangle(5,7)
rectangle(25,30)

rectangle2 <- function(W,h){
  w <- w*10
  h <- h*20
  area <- w*h
  return(area)
}
rectangle2(5,7)

var1 <- rectangle2(4,5)
var1

square <- function(side){
  return(side*side)
}
square(5)

greeting <- function(lang){
  if(lang=="th"){
    return("สวัสดี")
  } else{
    return("hi")
  }
}
greeting("th")
greeting("en")

speed_check <- function(speed){
  if(speed >120){
    print("Fast120")
    print("ปรับ 500 บาท")
  }else{
    print("วิ่งต่อไป")
  }
}
speed_check(125)
speed_check(120)

ticket_fare <- function(age){
  if(age<=5){
    print("free")
  }else{
    print("ตั๋ว 50")
  }
}
ticket_fare(25)

ticket_fare2 <- function(age){
  if(age<=5 || age>=60){
    print("free")
  }else{
    print("ตั๋ว 50")
  }
}
ticket_fare2(25)

ticket_fare3 <- function(age){
  if(age>5 && age<60){
    print("ตั๋ว50")
  }else{
    print("free")
  }
}
ticket_fare3(25)

ticket_fare4 <- function(age,isLocal){
  if(age>5 && age<60)&& isLocal{
    print("ตั๋ว50")
  }else{
    print("free")
  }
}
ticket_fare4(25, TRUE)
ticket_fare4(25, FALSE)

greeting2 <- function(country){
  if(country=="th"){
    return("สวัสดี")
  } else if(country=="en"){
    return("hi")
  }else{
    print(":-)")
  }
}
greeting2("th")
greeting2("pp")

#loop for
demo1 <- function(){
  for(i in 1:10)
    print(i)
}
demo1()

demo2 <- function(start,end){
  for(i in start:end)
    print(i)
}
demo2(10,20)

countdown <- function(){
  for(i in seq(from=10,to=1,by=-2)){
    print(i)
  }
}
countdown()

sum_odd <- function(start,end){
  total <- 0
  for(i in seq(from=start,to=end,by=2)){
    print(i)
    total <- total+i
  }
  return(total)
}
sum_odd(1,20)

sum_even <- function(start,end){
  total <- 0
  for(i in seq(from=start,to=end,by=2)){
    print(i)
    total <- total+i
  }
  return(total)
}
sum_even(2,20)

demo3 <- function(v){
  for(i in v)
    print(i)
}
var2 <- c(2,3,4,2,4,8)
demo3(var2)

phone_fortune <- function(phonenumber){
  total <- 0
  for(i in 1:nchar(phonenumber)){
    print(substr(phonenumber,i,i))
    total <- total+ as.integer(substr(phonenumber,i,i))
  }
  return(total)
}
phone_fortune("0808546916")

# nested loop

m_table <- function(){
  for (i in 2:5) {
    for(j in 1:12){
      print(sprintf("%d x %d = %d",i,j, i*j))
    }
  }
}
m_table()

playingCard <-  function(){
  rank <- c("A", 2:10, "J","Q","K")
  # suit <- c("spades", "heart","diamonds,"clubs")
  suit <- c("\u2660","\u2665","\u2666","\u2663")
  deck <- character(length(rank)*length(suit))
  i <- 1
  for( s in suit){
    for(r in rank){
      deck[i] <- paste(r,s,sep="")
      i <- i+1
    }
  }
  return(deck)
}
playingCard()
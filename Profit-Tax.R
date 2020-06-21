#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit<-c(revenue - expenses)
#Profit for each month
profit
#Profit after 30% Tax
tax<-(revenue*0.3)
tax
profit_after_tax<-c(revenue-tax)
profit_after_tax
#Profit Margin
Profit_Margin<-c(profit_after_tax/revenue)
Profit_Margin
#Good & Bad months
t<-mean(revenue)
t
print("Good months=")
for(i in 1:12){
  if(profit_after_tax[i]>t)
  {
    
    print(i)
  }
}
print("Bad months=")
for(i in 1:12){
  if(profit_after_tax[i]<t)
  {
    print(i)
  }
}
#BEst& Worst month
  best_month<-max(profit_after_tax)
  best_month
  worst_month<-min(profit_after_tax)
  worst_month

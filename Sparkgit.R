#read excel file

library(readxl)

#view the file

View(Spark_task)
# view the file as a data frame

df<-as.data.frame(Spark_task)
df

#plot the data
plot(Spark_task$Hours,Spark_task$scores)

#linear regression
model<-lm(Spark_task$scores~Spark_task$Hours,data = Spark_task)
model

# predict the score of a study if he studys for 9.25hrs/day?

scores_predict= 2.48 + 9.776*9.25
scores_predict


##########################################################
# Important websites
# https://machinelearningmastery.com/blog/
# https://www.kaggle.com/     <- for competition
# hackerearth tutorial on machine learning




############################################################
#adding new row to data frame

df<-data.frame("hi","bye")
names(df)<-c("hello","goodbye")

de<-data.frame("hola","ciao")
names(de)<-c("hello","goodbye")

newdf <- rbind(df, de)


##############################################################
#add new element in vector
attr <- c("X1")
attr <- c(attr,"X2")

##################################################################

#To keep 98% of values less than 2 to keep the data realistic.
DEBT_RATIO1               <-round(runif((0.98*nr),.1,2),6)         
DEBT_RATIO2               <-round(runif((0.02*nr),2,450),6)
DEBT_RATIO                <-sample(c(DEBT_RATIO1,DEBT_RATIO2))
if(length(DEBT_RATIO)!=nr)
  DEBT_RATIO              <-c(DEBT_RATIO,round(runif((nr-length(DEBT_RATIO)),.1,450),6))


##################################################################

# Function to  Load the dataset.
load_data   <- function()
{
  
  dir       <- "D:/"
  file      <- "Test_Data.csv"
  PATH      <- paste(dir,file,sep = "")
  tryCatch({
    data = read.csv(file = PATH)
    
  }, 
  warning = function(e){
    message(paste(" Warning: " ,e) )
  },
  error = function(e){
    message(paste(" Error:  " ,e)   )})
  
  return(data)
  
}



########################################################################################################
a<- c(1,2,3)
b<- c(3,4,5)
c<- data.frame(a,b)
#####################################################################################################
# to remove the rownames from output
row.names(output) <- NULL

##########################################################################################################
now <- Sys.time()
#paste0(format(now, "%Y%m%d_%H%M%S_"), "data_set.csv")
txtStart(paste0(format(Sys.time(), "%Y%m%d_%H_%M_%S_"), "data_set.txt"))
print("output hello")
txtStop()

#####################################################################################################
#checking accuracy of random forest

auc(preds,test$Y)

##########################################################################################################
#to install a particular version of package 
install.packages("versions",dependencies = T)
library(versions)
install.versions('arules','1.1-6')
###################################################################################################


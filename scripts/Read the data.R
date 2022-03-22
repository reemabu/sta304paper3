# Load the package to read SPSS Data
library(foreign)


# Read the original SPPS data file
OriginalData <- read.spss("Input/Data/GSS_spss/GSS7218_R3.sav",to.data.frame = T)


# # Subsetting the Data for the Year 2018
Data <- OriginalData[OriginalData$YEAR==2018, ]
save(Data, file = "Input/Data/GSS_Data.RData")
write.csv(Data, "Input/Data/GSS 2018 Data.csv")


# # Subsetting the Data for the Year 2018
# Data2018 <- OriginalData[OriginalData$YEAR==2018, ]
# 
# Data1991 <- OriginalData[OriginalData$YEAR==1991, ]

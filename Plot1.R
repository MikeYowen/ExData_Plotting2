Plot1 <- function() {
  
  ## Read data into tables
  NEI <- readRDS("summarySCC_PM25.rds")
  SCC <- readRDS("Source_Classification_Code.rds")
  
  ## sum data for required years
  pm1999 <- sum(subset(NEI$Emissions, NEI$year == 1999))
  pm2002 <- sum(subset(NEI$Emissions, NEI$year == 2002))
  pm2005 <- sum(subset(NEI$Emissions, NEI$year == 2005))
  pm2008 <- sum(subset(NEI$Emissions, NEI$year == 2008))
  
  # plot data for selected years
  png("plot1.png", width = 480, height = 480)
  barplot(c(pm1999,pm2002,pm2005,pm2008), beside=TRUE, xlab="year", ylab="PM2.5 emitted (in tons)", names.arg = c("1999", "2002", "2005", "2008"), ylim = c(0, 8000000))
  dev.off()
}

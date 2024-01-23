# installing package
install.packages('Tmisc')
library(Tmisc)

# getting data and viewing
data(quartet)
View(quartet)

#pipes for grouping and summarization (mean and correltions etc)
library(dplyr)
quartet %>%
  group_by(set) %>%
  summarize(mean(x), sd(x), mean(y), sd(y), cor(x,y))

# visualization using ggplot2
library(ggplot2)
ggplot(quartet, aes(x,y)) + geom_point() + geom_smooth(method=lm, se=FALSE) + facet_wrap(~set) + labs(title = "All 4 Quartiles Viz.")

# installing and loading datasauRus
install.packages('datasauRus')
library('datasauRus')

ggplot(datasaurus_dozen,aes(x=x,y=y,colour=dataset))+geom_point()+theme_void()+theme(legend.position = "none")+facet_wrap(~dataset,ncol=3)
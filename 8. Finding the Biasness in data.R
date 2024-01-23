# installing and loading the SimDesign package
install.packages('SimDesign')
library('SimDesign')

# custom dataset for temperature and finding bias
actual_tmp <- c(68.3, 70, 72.4, 71, 67, 70)
predicted_tmp <- c(67.9, 69, 71.5, 70, 67, 69)
bias(actual_tmp, predicted_tmp)


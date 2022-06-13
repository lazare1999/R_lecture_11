library(devtools)
# install_github("vqv/ggbiplot")
library(ggbiplot)

mtcars.pca <- prcomp(mtcars[,c(1:7,10,11)], center = TRUE, scale = TRUE)
summary(mtcars.pca)

ggbiplot(mtcars.pca)
ggbiplot(mtcars.pca, labels=rownames(mtcars))
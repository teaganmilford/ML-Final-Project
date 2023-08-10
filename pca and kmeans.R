library(factoextra)
library(cluster)

wine <- read.csv('/Users/14072/Downloads/wine.csv')
head(wine)

num_vars <- wine[, 1:11]  # Selecting only numeric variables

scaled_data <- scale(num_vars)  # Scaling the numeric variables
wine <- data.frame(color = c("red", "white"))

wine$Encoded_Color <- as.numeric(factor(wine$color))

combined <- cbind(scaled_data, wine$Encoded_Color)
pca_result <- prcomp(combined)

fviz_eig(pca_result, addlabels = TRUE)


num_clusters <- 3  # Set the number of clusters

pca_data <- as.data.frame(pca_result$x[, 1:2])  # Select the first two principal components

kmeans_result <- kmeans(pca_data, centers = num_clusters)

fviz_cluster(kmeans_result, data = pca_data, geom = "point")

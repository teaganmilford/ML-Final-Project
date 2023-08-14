# ML-Final-Project
Collaborators: Teagan Milford, Madeleine Cope, Bethel Kim, Evan Hadd
STA380 Exercises


## Questions addressed in the Rmd file 'ML Final Project' and corresponding answers:
## Probability Practice
### Part A:
The probability of being a Truthful clicker who said yes is 0.71.
### Part B:
The probability that someone has a positive test and has the disease is 0.20.

## Wrangling the Billboard Top 100
## Visual story telling part 1: green buildings
The stats guru is presenting some interesting findings, although they do not tell the complete story. They ignored important characteristics that impact rent prices, like location, in favor of simplifying the analysis and breaking it into green and non-green buildings. For example, a green building built in a high-crime area without anything in walkable distance would likely have a (much) lower rental price than a non-green building near a park and many walkable businesses. 
The cluster variable groups buildings together based on proximity, so we looked at the average rents per cluster to investigate rent diversity. Most rents tended to be above $1500, with the highest exceeding $2000, regardless of green or non-green status.
Next, we looked at the relationship between rent price and the age of the building; contrary to what a person may assume, age does not appear to have a decisive influence on rent price. We hypothesized that this may be due to updates or renovations that occured in the building that retroactively improve appliances, amenities, and infrastructure.
So, we constructd a boxplot that considers age and whether a building has been renovated. This reveals that ....

## Visual story telling part 2: Capitol Metro data
some in python

## Clustering and Dimensionality Reduction
### PCA
To investigate the wine data, we first made a scree plot to look at the explained variables compared to dimensionality. This plot reveals that there is a major drop (from 22.2% to 13.8%) in the percentage of explained variances when the dimension is changed from 2 to 3, and there is an additionally drastic drop (from 13.8% to 8.6%) when the dimension is changed from 3 to 4. Based on this, we created a cluster plot with 3 clusters that shows a clear segmentaton. There are some points that appear to be outliers in the blue and green clusters based on the visualization.
We also created a scatterplot of Principle Component 1 and Principle Component 2 that includes information from the 11 continuous variables that exist in the wine dataset, excluding the discrete variables of 'color' and 'quality'. 

### Hierarchical Clustering
To conduct hierarchical clustering, we filtered the wine data to exclude 'color' and 'quality', then created a wine distance matrix using euclidean distance. We decided to try clustering using two methods - average and single - so we could look at how average pairwise distances and minimum point distances between clusters compare. 
Neither clustering method was especially effective in clustering the points. Both use 'total sulfur dioxide' as the overarching factor and 'free sulfur dioxide' as the secondary factor. Aside from that, neither splits clusters the variables in meaningful ways that yield more interesting information that could have been gained from another model.

### tSNE

## Market Segmentation
add discussion

## Association rule mining
add maybe a bit of discussion/explanation

## Questions addressed in the ipnyb file 'ML Final Project' and corresponding answers:
## Visual story telling part 2: Capitol Metro data
some in rstudio



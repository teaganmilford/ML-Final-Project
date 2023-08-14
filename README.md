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

## The Reuters Corpus
Question: 
The Reuters C50 text dataset contains various article pieces written by a wide variety of authors. Amidst this vast information, we were especially curious to analyze the potential similarities and trends we could discover. Which words are similar? Are these words consistent with a specific topic? Which authors write about similar content? In this sense, we aimed to examine which words could be grouped together, what topics we could discover from these groupings, and which authors fell into similar categories.  

Approach:
 In this experiment, we used K-means clustering and PCA analysis to examine the text data and find which principal features or words can be similarly grouped and associated. We used the subset of train data in the Reuters dataset and performed preprocessing before implementing our statistical methods of choice. We began by reading the text files into a Pandas DataFrame, which contained columns for `author` and `content` (bodies of text written by the author). We also took steps to clean up and standardize the text data by lowercasing the text, removing special characters, and tokenizing the content. Furthermore, we remove common English stopwords using the NLTK library to improve the quality of the features.  This preprocessed content is then stored in a new column called ‘preprocessed_content`. These preprocessing steps are incredibly important as they ensure that the textual data is consistent, clean, and ready for the subsequent stages of analysis.
We first analyze words used across all authors and then group our data by the author to see which authors write similar subject matter. We use the same methods in both analyses. 
The core of our analyses involves clustering the preprocessed content using K-Means clustering. K-Means is an unsupervised machine learning algorithm that groups similar data points together based on their feature values. In this case, the feature vectors are derived from the TF-IDF (Term Frequency - Inverse Document Frequency) representation of the preprocessed content. The TF-IDF matrix captures the importance of words within each document relative to the entire corpus. 
We specify the number of clusters (K) we want the algorithm to identify as 3 in both analyses. The K-Means algorithm iteratively refines cluster assignments by updating centroids to minimize the distances between data points and centroids. The result of this process is a set of cluster labels assigned to each document in the DataFrame.
To visualize the clusters, in both analyses, we turned to Principal Component Analysis (PCA). PCA is a dimensionality reduction technique that transforms high-dimensional data into a lower-dimensional space while preserving as much variance as possible. We applied PCA to the TF-IDF matrix to reduce its dimensions to two components. These components represent the main patterns in the data and are stored in the 'pca_1' and 'pca_2' columns in the data frame.
With the reduced PCA components, we created a scatter plot to visualize the clusters for each analysis. In each plot, each point is positioned according to its PCA components. The points are colored based on the cluster labels assigned by K-Means. These visualizations allow us to assess how effectively the K-Means algorithm has grouped similar documents together.	

Results: 
Our first graph is a result of our first clustering analysis where we clustered by the words used in each of the text files from all of the authors. In doing so, our most accurate model resulted in five clusters (Figure 1). Here, we can see that there are very strong clusters, especially for the blue and red categories. This means that the words associated with each of the text files in these clusters are likely somewhat similar. For instance, articles written about finances would typically use words like ‘economy’ and ‘dollar’ in their text. In proving this, we can see from the feature components that these words are in similar areas on the cluster visualization. This means that the cluster the words are associated with likely contains other words that pertain to financial or economic articles. 
Our second graph is a result of clustering by each author instead of by just the words used (Figure 2). Here, our most accurate model resulted in 3 clusters. Because we saw that certain words would cluster together based on their content, we wanted to see if the same thing would happen when grouping by authors to give an indication of which authors write about similar topics. This seemed to prove true when looking at which authors existed in each cluster. For instance, after looking up some of the authors from this dataset, we found that authors from cluster 1 tend to write articles about China and its politics/economics. Whereas in cluster 2, there seems to be more of a mix of internationally covered content.

Conclusion: 
In conclusion, we found that the two plots showed us that there seem to be trends across content in the dataset. In our first plot, we saw that certain words were clustered together that seemed to be related to the types of articles they would be found in. Similarly, we found that authors who typically write about certain material were more likely to be clustered together in our second plot. This means that our general intuition on wanting to confirm if authors were clustered by content was correct seeing as this is the general trend we found. 

## Association rule mining
add maybe a bit of discussion/explanation

## Questions addressed in the ipnyb file 'ML Final Project' and corresponding answers:
## Visual story telling part 2: Capitol Metro data
some in rstudio



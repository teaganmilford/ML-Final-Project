# ML-Final-Project
Collaborators: Teagan Milford, Madeleine Cope, Bethel Kim, Evan Hadd

STA380 Exercises

All questions addressed in the ["[ML Final Project](https://github.com/teaganmilford/ML-Final-Project/blob/604d58572abc565994fa7ed1cd15b5959382e45e/ML%20Final%20Project.Rmd)"] Rmd file unless otherwise stated and linked to an ipnyb.

## Probability Practice
### Part A:
The probability of being a Truthful clicker who said yes is 0.71.
### Part B:
The probability that someone has a positive test and has the disease is 0.20.

## Wrangling the Billboard Top 100
![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/4a6605f2-10c7-44f0-b579-13c4d829498f)

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/afba0cf2-acb1-49fe-95b9-47479c709d5e)

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/7a5e047c-d57b-42a9-8b47-02814ddcb35e)


## Visual story telling part 1: Green Buildings
The stats guru is presenting some interesting findings, although they do not tell the complete story. They ignored important characteristics that impact rent prices, like location, in favor of simplifying the analysis and breaking it into green and non-green buildings. For example, a green building built in a high-crime area without anything in walkable distance would likely have a lower rental price than a non-green building near a park and many walkable businesses. 
The `cluster` variable groups buildings together based on proximity, so we looked at the average rents per cluster to investigate rent diversity. Most rents tended to be above $1500, with the highest exceeding $2000, regardless of green or non-green status.
Next, we looked at the relationship between `rent price` and the `age` of the building; contrary to what a person may assume, age does not appear to have a decisive influence on rent price. We hypothesized that this may be due to updates or renovations that occured in the building that retroactively improve appliances, amenities, and infrastructure.
So, we constructd a boxplot that considers `age` and whether a building has been `renovated`. This shows that the median age of a building that has not been renovated is aroung 25 years, while the median age of a building that has been renovated is aronud 75 years. This suggests that age is not necessarily a characterizing factor since renovations can make major improvements to the existing stucture.
Overall, we are skeptical of the stats guru's assessment since it does not address the potential confounding relationships between the variables, like how location could heavily influence rental prices, and does not seem rooted in the realities of real estate trends.

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/139ddbcd-ca2c-4eb8-8465-75a59f76e329)

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/a1b5449d-3f25-4b9f-a8e2-10a9ff828c24)

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/402824cd-9506-4b71-897b-3f8b1164c729)


## Visual story telling part 2: Capitol Metro data
Refer to the Python Notebook: ["[Capital Metro](https://github.com/teaganmilford/ML-Final-Project/blob/d822075af107e847d80c1c493c3eaa953357e03e/ML%20Final%20Project%20CapMet.ipynb)"]

![capmet](https://github.com/teaganmilford/ML-Final-Project/assets/141253325/2f71d239-feaf-4307-b06a-7f2a98ba9e48)

## Clustering and Dimensionality Reduction
### PCA
To investigate the wine data, we first made a scree plot to look at the explained variables compared to dimensionality. This plot reveals that there is a major drop (from 22.2% to 13.8%) in the percentage of explained variances when the dimension is changed from 2 to 3, and there is an additionally drastic drop (from 13.8% to 8.6%) when the dimension is changed from 3 to 4. Based on this, we created a cluster plot with 3 clusters that shows a clear segmentaton. There are some points that appear to be outliers in the blue and green clusters based on the visualization.
We also created a scatterplot of Principle Component 1 and Principle Component 2 that includes information from the 11 continuous variables that exist in the wine dataset, excluding the discrete variables of `color` and `quality`. 

<img width="214" alt="dae763c2-2d5b-4f0e-96da-9b1856922e05" src="https://github.com/teaganmilford/ML-Final-Project/assets/141160657/c3e56877-f5ef-49db-a11a-c4f28b238f3c">
![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/fb6fde21-6e9b-41cf-8479-5e9e2b65c9b0)



### Hierarchical Clustering
To conduct hierarchical clustering, we filtered the wine data to exclude `color` and `quality`, then created a wine distance matrix using euclidean distance. We decided to try clustering using two methods - average and single - so we could look at how average pairwise distances and minimum point distances between clusters compare. 
Neither clustering method was especially effective in clustering the points. Both use `total sulfur dioxide` as the overarching factor and `free sulfur dioxide` as the secondary factor. Aside from that, neither splits clusters the variables in meaningful ways that yield more interesting information that could have been gained from another model.

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/c89a4acf-521c-4877-a386-2005a09cd515)
![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/caf25d53-69b0-4176-a248-51eae7c40e8f)


### tSNE
Refer to the Python Notebook: ["[tSNE - Wine](https://github.com/teaganmilford/ML-Final-Project/blob/4c56d73dc37a8bbaf3c9ad506cd84ee25d693297/tSNE%20Red%20%26%20White%20Wine.ipynb)"]

To conduct a tSNE, we first extracted the eleven features (chemical properties) used for the analysis from the wine dataset (by selecting all rows and columns from index 0 to index 10). These columns represent the chemical properties of the wine samples. We then perform the tSNE algorithm and set the tSNE feature space to two dimensions for visualization. For reproducibility, we set the random state to 42. The output is a scatter plot that compares red and white wines based on their chemical properties. The scatterplot (featured below) shows a clear division between red and white wines. There is a subtle cluster that shows a slight overlap between certain red and white wines. This subtle cluster may represent a subset of reds and whites that share certain common chemical qualities, which may imply that there are certain reds and whites that are similar (e.g. dryer, less sweet, etc.) This may also contribute to the differentiation between higher and lower qualities. 

![wine- tSNE](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/a9a33690-3701-47c4-b14a-d8f4033d4121)

### Conclusion
Out of all the techniques we tried, tSNE appeared to have the clearest distinguishment between the red and white wines. In comparison to the other visuals, the scatterplot for tSNE showed a clearer visual divide between red and white wines. 

## Market Segmentation
We used hierarchical clustering in order to better identify NutrientH20’s potential market segments. This clustering method identified eight clusters of which three can be identified as interesting and plausibly impactful market segments. The first segment included categories `current events` and `shopping`, which speaks to multiple relationships (e.g. current events and fashion trends, financial current events and market fluctuations). The second segment included categories `travel` and `categories`. This cluster reflects an audience market segment that takes a strong interest in the impact of international affairs. The third segment includes `sports fandom`, `food`, `family`, `religion`, `parenting`, and `school`. Although this cluster is vast, it accurately identifies a subset of NutrientH20’s audience that is highly family-centered. All the topics reflect content that is highly valued by the typical nuclear family in America. NutrientH20 should pay special attention to this audience segment and target families as customers through these various interest avenues.  The fourth segment the clustering has identified is perhaps the most obvious to NutrientH20’s target audience. This segment includes categories `health nutrition` and `personal fitness`. It makes sense that NutrientH20 has a specific audience intentionally interested and devoted to personal health. In conclusion, hierarchical clustering illustrated that NutrientH20 has a very diverse variety of audience (reflected in their Twitter followers). However, there are clear segments within their audiences based on complementary interests. NutrientH20 can use these segment identifications to improve its marketing, efficiently target certain audiences, and overall increase its sales and approval ratings. 

Below is the cluster dendrogram that represents the market segments described above: 
![MarketSegmentation](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/06c40b19-a112-4466-80d1-f9b650520fc5)

## The Reuters Corpus
Refer to the Python Notebook: ["[Reuters](https://github.com/teaganmilford/ML-Final-Project/blob/69cd93ec3997b6b82e3704a068e59d8396f99fae/Reuters%20.ipynb)"]
### Question: 
The Reuters C50 text dataset contains various article pieces written by a wide variety of authors. Amidst this vast information, we were especially curious to analyze the potential similarities and trends we could discover. Which words are similar? Are these words consistent with a specific topic? Which authors write about similar content? In this sense, we aimed to examine which words could be grouped together, what topics we could discover from these groupings, and which authors fell into similar categories.  

### Approach:
In this experiment, we used K-means clustering and PCA analysis to examine the text data and find which principal features or words can be similarly grouped and associated. We used the subset of train data in the Reuters dataset and performed preprocessing before implementing our statistical methods of choice. We began by reading the text files into a Pandas DataFrame, which contained columns for `author` and `content` (bodies of text written by the author). We also took steps to clean up and standardize the text data by lowercasing the text, removing special characters, and tokenizing the content. Furthermore, we remove common English stopwords using the NLTK library to improve the quality of the features.  This preprocessed content is then stored in a new column called ‘preprocessed_content`. These preprocessing steps are incredibly important as they ensure that the textual data is consistent, clean, and ready for the subsequent stages of analysis.

We first analyze words used across all authors and then group our data by the author to see which authors write similar subject matter. We use the same methods in both analyses. 

The core of our analyses involves clustering the preprocessed content using K-Means clustering. K-Means is an unsupervised machine learning algorithm that groups similar data points together based on their feature values. In this case, the feature vectors are derived from the TF-IDF (Term Frequency - Inverse Document Frequency) representation of the preprocessed content. The TF-IDF matrix captures the importance of words within each document relative to the entire corpus. 

We specify the number of clusters (K) we want the algorithm to identify as 3 in both analyses. The K-Means algorithm iteratively refines cluster assignments by updating centroids to minimize the distances between data points and centroids. The result of this process is a set of cluster labels assigned to each document in the DataFrame.

To visualize the clusters, in both analyses, we turned to Principal Component Analysis (PCA). PCA is a dimensionality reduction technique that transforms high-dimensional data into a lower-dimensional space while preserving as much variance as possible. We applied PCA to the TF-IDF matrix to reduce its dimensions to two components. These components represent the main patterns in the data and are stored in the 'pca_1' and 'pca_2' columns in the data frame.

With the reduced PCA components, we created a scatter plot to visualize the clusters for each analysis. In each plot, each point is positioned according to its PCA components. The points are colored based on the cluster labels assigned by K-Means. These visualizations allow us to assess how effectively the K-Means algorithm has grouped similar documents together.	

### Results: 
Our first graph is a result of our first clustering analysis where we clustered by the words used in each of the text files from all of the authors. In doing so, our most accurate model resulted in five clusters (Figure 1). Here, we can see that there are very strong clusters, especially for the blue and red categories. This means that the words associated with each of the text files in these clusters are likely somewhat similar. For instance, articles written about finances would typically use words like ‘economy’ and ‘dollar’ in their text. In proving this, we can see from the feature components that these words are in similar areas on the cluster visualization. This means that the cluster the words are associated with likely contains other words that pertain to financial or economic articles. 
#### FIGURE 1
![Reuters_PCAwords_cluster](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/9bcc4a94-f9c9-4f73-a633-4ec4cf057544)

Our second graph is a result of clustering by each author instead of by just the words used (Figure 2). Here, our most accurate model resulted in 3 clusters. Because we saw that certain words would cluster together based on their content, we wanted to see if the same thing would happen when grouping by authors to give an indication of which authors write about similar topics. This seemed to prove true when looking at which authors existed in each cluster. For instance, after looking up some of the authors from this dataset, we found that authors from cluster 1 tend to write articles about China and its politics/economics. Whereas in cluster 2, there seems to be more of a mix of internationally covered content.
#### FIGURE 2
![Reuters_authorsPCA](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/32eb6df4-0cde-4d3f-ad3d-042e451ba8d3)

### Conclusion: 
In conclusion, we found that the two plots showed us that there seem to be trends across content in the dataset. In our first plot, we saw that certain words were clustered together that seemed to be related to the types of articles they would be found in. Similarly, we found that authors who typically write about certain material were more likely to be clustered together in our second plot. This means that our general intuition on wanting to confirm if authors were clustered by content was correct seeing as this is the general trend we found. 

## Association rule mining
add maybe a bit of discussion/explanation

Refer to the ["[GraphML Lift 2](https://github.com/teaganmilford/ML-Final-Project/blob/b4845c32ac650ac5293afabbc0c1f1c5ee0ca16d/groceries2.graphml)"]

Refer to the ["[GraphML Lift 4](https://github.com/teaganmilford/ML-Final-Project/blob/519ec0ba0aa848ba7b46742fe4ae8fcbbdc40503/groceries4.graphml)"]

## Image Classification with Neural Networks
Refer to the Python Notebook: ["[Neural Network](https://github.com/teaganmilford/ML-Final-Project/blob/040eaf44c968a18d0ec002fcf393b1dfb1559f2f/Neural%20Network%20ML%20Final.ipynb)"]

### Question: 

We trained a neural network on the image agricultural image data based on their 3-dimensional red-green-blue characteristics. Our training model yielded an overall test accuracy of __________. There are some example images sampled in the Rmd file, which show the model's poor performance. This may be due to the images being low quality, insufficient amount of training data, and/or overfitting in the training stage, although since it is unsupervised we cannot be certain. The confusion matrix shows ________.

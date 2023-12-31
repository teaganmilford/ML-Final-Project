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
![billboardA](https://github.com/teaganmilford/ML-Final-Project/assets/141253325/bc19b439-6b99-4475-b9e0-b14df9f2d0d5)


![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/4a6605f2-10c7-44f0-b579-13c4d829498f)
<img width="504" alt="billboard 1" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/6964ad9b-8a73-44fc-89b8-75c2a8de4e4a">

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/3eeeecbd-5d01-4085-a700-e4ecc8f01b76)
<img width="510" alt="billboard 2 real" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/c7747c87-6079-4a7a-8c51-a5dbaed947f6">



![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/7a5e047c-d57b-42a9-8b47-02814ddcb35e)


## Visual story telling part 1: Green Buildings
The stats guru is presenting some interesting findings, although they do not tell the complete story. They ignored important characteristics that impact rent prices, like location, in favor of simplifying the analysis and breaking it into green and non-green buildings. For example, a green building built in a high-crime area without anything in walkable distance would likely have a lower rental price than a non-green building near a park and many walkable businesses. 
The `cluster` variable groups buildings together based on proximity, so we looked at the average rents per cluster to investigate rent diversity. Most rents tended to be above $1500, with the highest exceeding $2000, regardless of green or non-green status.
Next, we looked at the relationship between `rent price` and the `age` of the building; contrary to what a person may assume, age does not appear to have a decisive influence on rent price. We hypothesized that this may be due to updates or renovations that occured in the building that retroactively improve appliances, amenities, and infrastructure.
So, we constructd a boxplot that considers `age` and whether a building has been `renovated`. This shows that the median age of a building that has not been renovated is aroung 25 years, while the median age of a building that has been renovated is aronud 75 years. This suggests that age is not necessarily a characterizing factor since renovations can make major improvements to the existing stucture.
Overall, we are skeptical of the stats guru's assessment since it does not address the potential confounding relationships between the variables, like how location could heavily influence rental prices, and does not seem rooted in the realities of real estate trends.


<img width="512" alt="green 1" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/2630a115-ec75-4e5f-9e28-424e953e355e">
<img width="520" alt="green 2" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/111cfc3c-0823-47c6-addf-fa831d8d8d18">
<img width="533" alt="green 3" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/802f130a-db6a-4b1e-b830-332ed6117ca7">



![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/9dbcd617-e9e3-4a5c-86d8-c1019b364ecd)
![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/38412612-99de-46cd-8019-13bbb4f9f92d)
![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/c5092044-2fc8-436a-b5c0-42d8e42b51e7)


## Visual story telling part 2: Capitol Metro data
Refer to the Python Notebook: ["[Capital Metro](https://github.com/teaganmilford/ML-Final-Project/blob/d822075af107e847d80c1c493c3eaa953357e03e/ML%20Final%20Project%20CapMet.ipynb)"]
![capmet](https://github.com/teaganmilford/ML-Final-Project/assets/141253325/ef1af62d-3be6-4e88-8867-7ee68a5d0dd0)

![capmet](https://github.com/teaganmilford/ML-Final-Project/assets/141253325/2f71d239-feaf-4307-b06a-7f2a98ba9e48)

## Clustering and Dimensionality Reduction
### PCA
To investigate the wine data, we first made a scree plot to look at the explained variables compared to dimensionality. This plot reveals that there is a major drop in the percentage of explained variances when the dimension is changed from 2 to 3, and there is an additionally drastic drop when the dimension is changed from 3 to 4. Based on this, we created a cluster plot with 3 clusters that shows a clear segmentaton. There are some points that appear to be outliers in the blue and green clusters based on the visualization.
We also created a scatterplot of Principle Component 1 and Principle Component 2 that includes information from the 11 continuous variables that exist in the wine dataset, excluding the discrete variables of `color` and `quality`. 


<img width="500" alt="wine 1" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/74f0bb6d-1924-4902-bdba-18449f147b61">
<img width="481" alt="pca2real" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/355f0ba2-e253-439f-bb59-f34b4330984f">
<img width="479" alt="pca3real" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/b1274237-5587-4a87-b187-48e43adc02cc">



![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/9bdecd3f-daf4-44ae-9b53-2f2b01a2ae23)

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/b57d5a96-352e-4566-b725-a73945fc7bb8)

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/26feb506-568b-4acf-a094-30f162edd50b)


### Hierarchical Clustering
To conduct hierarchical clustering, we filtered the wine data to exclude `color` and `quality`, then created a wine distance matrix using euclidean distance. We decided to try clustering using two methods - average and single - so we could look at how average pairwise distances and minimum point distances between clusters compare. 
Neither clustering method was especially effective in clustering the points. Both use `total sulfur dioxide` as the overarching factor and `free sulfur dioxide` as the secondary factor. Aside from that, neither splits clusters the variables in meaningful ways that yield more interesting information that could have been gained from another model.

<img width="626" alt="cluster new" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/2535ce04-be98-447c-b4a0-b53dfcbc131e">

<img width="500" alt="wine 2" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/81a3dd65-6e72-42f9-814c-33107953b3ab">

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/c89a4acf-521c-4877-a386-2005a09cd515)
![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/caf25d53-69b0-4176-a248-51eae7c40e8f)


### tSNE
Refer to the Python Notebook: ["[tSNE - Wine](https://github.com/teaganmilford/ML-Final-Project/blob/4c56d73dc37a8bbaf3c9ad506cd84ee25d693297/tSNE%20Red%20%26%20White%20Wine.ipynb)"]

To conduct a tSNE, we first extracted the eleven features (chemical properties) used for the analysis from the wine dataset (by selecting all rows and columns from index 0 to index 10). These columns represent the chemical properties of the wine samples. We then perform the tSNE algorithm and set the tSNE feature space to two dimensions for visualization. For reproducibility, we set the random state to 42. The output is a scatter plot that compares red and white wines based on their chemical properties. The scatterplot (featured below) shows a clear division between red and white wines. There is a subtle cluster that shows a slight overlap between certain red and white wines. This subtle cluster may represent a subset of reds and whites that share certain common chemical qualities, which may imply that there are certain reds and whites that are similar (e.g. dryer, less sweet, etc.) This may also contribute to the differentiation between higher and lower qualities. 
<img width="733" alt="red white 1" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/99f3bac3-4349-4260-bd99-eb036325ed49">

![wine- tSNE](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/a9a33690-3701-47c4-b14a-d8f4033d4121)

### Conclusion
Out of all the techniques we tried, tSNE appeared to have the clearest distinguishment between the red and white wines. In comparison to the other visuals, the scatterplot for tSNE showed a clearer visual divide between red and white wines. 

## Market Segmentation
We used hierarchical clustering in order to better identify NutrientH20’s potential market segments. This clustering method identified eight clusters of which three can be identified as interesting and plausibly impactful market segments. The first segment included categories `current events` and `shopping`, which speaks to multiple relationships (e.g. current events and fashion trends, financial current events and market fluctuations). The second segment included categories `travel` and `categories`. This cluster reflects an audience market segment that takes a strong interest in the impact of international affairs. The third segment includes `sports fandom`, `food`, `family`, `religion`, `parenting`, and `school`. Although this cluster is vast, it accurately identifies a subset of NutrientH20’s audience that is highly family-centered. All the topics reflect content that is highly valued by the typical nuclear family in America. NutrientH20 should pay special attention to this audience segment and target families as customers through these various interest avenues.  The fourth segment the clustering has identified is perhaps the most obvious to NutrientH20’s target audience. This segment includes categories `health nutrition` and `personal fitness`. It makes sense that NutrientH20 has a specific audience intentionally interested and devoted to personal health. In conclusion, hierarchical clustering illustrated that NutrientH20 has a very diverse variety of audience (reflected in their Twitter followers). However, there are clear segments within their audiences based on complementary interests. NutrientH20 can use these segment identifications to improve its marketing, efficiently target certain audiences, and overall increase its sales and approval ratings. 

Below is the cluster dendrogram that represents the market segments described above: 
![MarketSegmentation](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/06c40b19-a112-4466-80d1-f9b650520fc5)
<img width="481" alt="twitter 1" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/f192b7bd-7320-48f5-ba24-37874beff8d5">


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
![reuters 1](https://github.com/teaganmilford/ML-Final-Project/assets/141253325/7eadfcc1-88da-4a28-95cc-08f4e288435b)

Our second graph is a result of clustering by each author instead of by just the words used (Figure 2). Here, our most accurate model resulted in 3 clusters. Because we saw that certain words would cluster together based on their content, we wanted to see if the same thing would happen when grouping by authors to give an indication of which authors write about similar topics. This seemed to prove true when looking at which authors existed in each cluster. For instance, after looking up some of the authors from this dataset, we found that authors from cluster 1 tend to write articles about China and its politics/economics. Whereas in cluster 2, there seems to be more of a mix of internationally covered content.
#### FIGURE 2
![Reuters_authorsPCA](https://github.com/teaganmilford/ML-Final-Project/assets/122923906/32eb6df4-0cde-4d3f-ad3d-042e451ba8d3)
![reuters 2](https://github.com/teaganmilford/ML-Final-Project/assets/141253325/9d09d5b4-c711-4c1c-a775-36aa33b4ec42)

### Conclusion: 
In conclusion, we found that the two plots showed us that there seem to be trends across content in the dataset. In our first plot, we saw that certain words were clustered together that seemed to be related to the types of articles they would be found in. Similarly, we found that authors who typically write about certain material were more likely to be clustered together in our second plot. This means that our general intuition on wanting to confirm if authors were clustered by content was correct seeing as this is the general trend we found. 

## Association rule mining
This study involved analyzing a dataset of people's grocery store baskets, aiming to construct a matrix that reveals the likelihood of particular purchases based on the presence of specific items in their carts. Initially, we employed a support threshold of 0.005, ensuring that the associations between items were not just coincidental. Subsequently, a lift threshold of 2 was applied, as the data lacked instances of high lift values. However, the resulting lift 2 graph proved somewhat intricate and congested around a few central items. As a remedy, we re-evaluated the connections using a lift threshold of 4, which isolated only the most prominent items.


Within the lift 4 model, we identified six items that hold the highest significance for a grocery store. These items, due to their perishable nature, are in high demand and are consequently purchased most frequently. These findings possess valuable implications for optimizing grocery store layout and design. Given the distinctiveness of these six items, strategically distributing them throughout the store can be advantageous, encouraging customers to purchase additional items as they traverse these strategically placed aisles.


Furthermore, the lift 2 graph can serve as a tool for organizing items in close proximity or designing displays that stimulate the purchase of complementary products. In essence, grocery stores consist of staple items, notably perishables, and complementary peripheral items. Understanding the categorization of food items is pivotal for store layout planning, offering the potential to enhance overall profitability.
<img width="724" alt="Grocieries Lift 2 Graph" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/a54f9e4f-68ef-4bae-828f-16818d90a822">
<img width="731" alt="Grocieries Lift 4 Graph" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/79746955-74d8-4b3e-82eb-c4697415ae68">



<img width="724" alt="Grocieries Lift 2 Graph" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/dd778f80-5d5a-4ac5-8686-d284ca5c4a21">
(Graph with lift 2 and labels)
<img width="731" alt="Grocieries Lift 4 Graph" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/effe48ad-552c-44f9-9b18-1ba408aa993f">
(Graph with lift 4 and labels)

## Image Classification with Neural Networks
Refer to the Python Notebook: ["[Neural Network](https://github.com/teaganmilford/ML-Final-Project/blob/040eaf44c968a18d0ec002fcf393b1dfb1559f2f/Neural%20Network%20ML%20Final.ipynb)"]

We trained a neural network on the image agricultural image data based on their 3-dimensional red-green-blue characteristics. Here are some examples of the images.
<img width="554" alt="neural net image 1" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/f8b0801f-1230-4670-a8cb-1c12bde2e129">

<img width="729" alt="Screenshot 2023-08-14 at 12 57 41 PM" src="https://github.com/teaganmilford/ML-Final-Project/assets/139559963/d78b8300-e940-49ed-a15c-933fec63fcd5">

Our training model yielded an overall test accuracy of 28.23%. There are some example images sampled in the Rmd file, which show the model's poor performance. This may be due to the images being low quality, insufficient amount of training data, and/or overfitting in the training stage, although since it is unsupervised we cannot be certain. The confusion matrix shows that the model predicted 'Industrial' images most accurately, followed by 'AnnualCrop' and 'SeaLake'. 


However, the model struggled between Aannual Crop and Permanat Crop as well as Sea Lake and Forest. The confusion may have come from the fact that these images looked very similar are were low enough quality it couldn't make accurate distinctions. The issues are really apparent in the highway folder where highways were through forests or lakes and not obvious enough in the actual photo to create accurate predictions. 

![image](https://github.com/teaganmilford/ML-Final-Project/assets/141160657/d8b1482a-671c-4e6c-9cae-ff61812b3fa1)

<img width="460" alt="neural net 2" src="https://github.com/teaganmilford/ML-Final-Project/assets/141253325/9d9b8dab-a489-49c1-99d8-5feab80f8dca">

* Note: We did not have a computer with high enough power or RAM to run the training data a lot. With a higher powered computer, the accuracy may have been better since the model could have learned the pattern more consistently. 

# ML-Final-Project
## Collaborators: Teagan Milford, Madeleine Cope, Bethel Kim, Evan Hadd
## STA380 Exercises



-to find the median market rent, they group the buildings by green/non-green. this ignores how location impacts pricing. it would've been better if they considered location and green/non-green, as the data is already clustered into nearby groups of 12 buildings. 

-Therefore the math that they do based on the calculated median amounts cannot necessarily be trusted

-they didnt discuss other factors that may impact willingness to pay like access to internal amenities and proximity to external amenities


-they also didn't mention the building quality (class a, b, or c) which would play a major factor in willingness to pay

-all of these aspects (and more) make me skeptical of the conclusions.

## Clustering and Dimensionality Reduction
#### PCA
To investigate the wine data, we first made a scree plot to look at the explained variables compared to dimensionality. This plot reveals that there is a major drop (from 22.2% to 13.8%) in the percentage of explained variances when the dimension is changed from 2 to 3, and there is an additionally drastic drop (from 13.8% to 8.6%) when the dimension is changed from 3 to 4. Based on this, we created a cluster plot with 3 clusters that shows a clear segmentaton. There are some points that appear to be outliers in the blue and green clusters based on the visualization.
We also created a scatterplot of Principle Component 1 and Principle Component 2 that includes information from the 11 continuous variables that exist in the wine dataset, excluding the discrete variables of 'color' and 'quality'. 

#### Hierarchical Clustering

# Predicting presence of heart disease on a patient - STAT301-2 Final Project

This GitHub Repo is a place to present my final project for Northwestern University STAT301-2 (Winter 2020).

### Data Source: [Heart Disease Data Set](https://archive.ics.uci.edu/ml/datasets/Heart+Disease)

This data was published by UC Irvine Machine Learning Repository in 1988 for the purpose of training a  model in which predict the presence of heart disease in the patient. With this information, the researchers hope to help doctors to quickly make quicker, better judgement and provide care needed for patients. The data folder contains 1 csv file with 303 instances of 75 attributes. However, for our purpose of this final project, I will use only a subset of 14 attributes like all published experiments with this dataset did. In the future I might also consider incorporating additional attributes to provide a better summary of the disease.

The subset with the 14 attributes are published on Kaggle for model building competition. To collect this data, I will simply download from the kaggle website where the csv version of the dataset is uploaded. At short glimpse, all variables are represented with integer types. However, there are some categorical variables such as `sex`, `cp` (chest pain type), etc. that use integers to represent their levels. The data has no missing values. If the 14 attributes or the instances are found to be insufficient, I might join with the original dataset published from the UC Irvine repository for more informations.  

### Potential research question

One potential research question is to find what are the physiological factors that can be indicative for presence of heart diseases. This will be reflective in level of significance in the prediction model. A classification approach will work best given our goal is to predict the response variable `ca`, which is the presence (1) or absence (0) of heart diseases in a patient given his/her physiological status. So far I suspect `cp` chest pain type, `thalach` maximum heart rate achieved, and `oldpeak` ST depression induced by exercise relation to at rest will be useful in modeling the response.

### Potential Data Issues

There should not be any complication in the data collection process given these data are available online. By skimming through the datasets, most of the data is cleaned except some minor problems with the variable type. Because all the variables are of integer type but only some are continuous. During the data cleaning process, we should treat those variable that used integers to represent each of their level as factor instead of integers. The main focus of this final project will be the exploratory data analysis and the model. In the EDA, I will include graphics that demonstrated some important relationships between the predictor variables and the response. I will also use 1/3 of the data for cross-validation for checking model performance.

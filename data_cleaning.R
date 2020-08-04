# Load libraries
library(tidyverse)
library(janitor)
library(naniar)
library(dataMaid)

# Parse data column into appropriate types 
# Source: https://archive.ics.uci.edu/ml/datasets/Heart+Disease

heart <- read_csv(
  "data/unprocessed/heart.csv") %>% 
  clean_names() 

heart %>% 
  miss_var_summary() %>% 
  filter(n_miss > 0)

RNGversion("3.5")
set.seed(27182)

# Split data
heart_train <- heart %>% 
  sample_frac(0.90)

heart_test <- heart %>% 
  setdiff(heart_train)

heart_eda <- heart_train %>% 
  sample_frac(0.20)


# Update dataset to `combine_data.csv` (already made)
#write_csv(heart_eda, "data/processed/heart_eda.csv")
#write_csv(heart_test, "data/processed/heart_test.csv")
#write_csv(heart_train, "data/processed/heart_train.csv")

# Update variable description
attr(heart$age, "shortDescription") <- "age in years"
attr(heart$set, "shortDescription") <- "sex (1 = male; 0 = female)"
attr(heart$cp, "shortDescription") <- "chest pain type (0 = typical angina; 1 = atypical angina; 2 = non-anginal pain; 3 = asymptomatic)"
attr(heart$trestbps, "shortDescription") <- "resting blood pressure (in mm Hg on admission to the hospital)"
attr(heart$chol, "shortDescription") <- "serum cholestoral in mg/dl"
attr(heart$fbs, "shortDescription") <- "fasting blood sugar > 120 mg/dl (1 = true; 0 = false) "
attr(heart$restecg, "shortDescription") <- "resting electrocardiographic results (0 = normal; 1 = having ST-T wave abnormality; 2 = showing probable or definite left ventricular hypertrophy by Estes' criteria)"
attr(heart$thalach, "shortDescription") <- "maximum heart rate achieved"
attr(heart$exang, "shortDescription") <- "exercise induced angina (1 = yes; 0 = no)"
attr(heart$oldpeak, "shortDescription") <- "ST depression induced by exercise relative to rest"
attr(heart$slope, "shortDescription") <- "the slope of the peak exercise ST segment (0 = upsloping; 1 = flat; 2 = downsloping)"
attr(heart$ca, "shortDescription") <- "number of major vessels (0-4) colored by flourosopy"
attr(heart$thal, "shortDescription") <- "3 = normal; 6 = fixed defect; 7 = reversable defect"
attr(heart$target, "shortDescription") <- "presence of heart disease in the patient (0 = absence; 1 = presence)"

# Make a codebook containing these variable description (already made)
makeCodebook(heart, replace = TRUE)
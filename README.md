# MechaCar_Statistical_Analysis

## Project Overview
In this analysis, we explore two key skills, essential for success in data analysis field, Statistics and R. Statistics is a cornerstone of data analysis and helps contextualize data.
Infact, statistics plays a critical role when it comes to decision making, troubleshooting and resource planning. Therefore in this analysis, we will review summary statistics, design, interpret statistical studies and then explore linear regression models.

In order to bettter grasp the statistical concepts, we explore R developed for data manipulation, statistical analysis and visualization. In fact, over the years, R is one of the most popular tools for data analysis.

R will help us by
- Reading in a dataset
- Manipulating the data
- Performing calculations
- Using statistical tests and analysis 


## Resources
Software: [RStudio](https://cran.r-project.org/mirrors.html)

library: tidyverse, dplyr

## Results

## Linear Regression to Predict MPG
1- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
To determine which variables provide a significant contribution to the linear model, we must look at the individual variable p-values.
as you see in the summary output, 





<img src="https://github.com/halmasieh/MechaCar_Statistical_Analysis/blob/main/D1-summary-output.PNG" width="600" height="400"  />





each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to our results, vehicle_ length and ground_clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model. In other words the vehicle_ length and ground_clearance have a significant impact on mpg. 

Despite the number of significant variables, the multiple linear regression model outperformed the simple linear regression. According to the summary output, the r-squared value has the value of 0.7149 in our multiple linear regression model while the p-value remained significant.


2- Is the slope of the linear model considered to be zero? Why or why not?

A good linear regression model should approximate most data points accurately if the dependent and independent variables are strongly correlated. In other words, linear regression can be used as an extension of correlation analysis. In contrast to correlation analysis, which asks whether a relationship exists between variables mpg and the independent variables, linear regression asks if we can predict values for variable mpg using a linear model and values from independent variables.

To answer this question, linear regression tests the following hypotheses:

H0 : The slope of the linear model is zero, or m = 0.

Ha : The slope of the linear model is not zero, or m ≠ 0.

The linear regression model for our dataset would be

mpg = 6.267e-00 vl + 1.245e-03 vw + 6.877e-02 sa + 3.546e+00 gc -3.411e-00 AWD -1.040e-02

where vl, vw, sa, gc are vehicle_length, vehicle_weight, spoiler_angle, ground_clearance, respectively.


As shown in the eqaution of multiple linear regression, the coeffients of vl and AWD are very small and tend to zero. In other words, comparing the p-values of vw, sa and gc with significant level 0.05% specifies that we can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our linear model for the non-random variables vl and gc is not zero.  

3- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

To quantify how well our linear model can be used to predict future observations, our linear regression functions calculate an r-squared value of 0.71 which is close to 1. The coefficient of determination represents how well the regression model approximates real-world data points, and it can be used as a probability metric to determine the likelihood that future data points will fit the linear model.

## Summary Statistics on Suspension Coils
By observing total_summary as





<img src="https://github.com/halmasieh/MechaCar_Statistical_Analysis/blob/main/total_summary.PNG" />




it is shown that the variance value is 62.29 which does not exceed 100 pounds per square inch. 
In addition, as shown in the column attributed to variance in the lot_summary table as





<img src="https://github.com/halmasieh/MechaCar_Statistical_Analysis/blob/main/lot_summary.PNG" />




values of variance for Lot1 and Lot2 are 0.98 and 7.47, respectively which are in the range of less than 100, while the variance for Lot3 experiences the value of 170.29.
Therefore, by comparing the two tables total summary and lot_summary, it can be concluded that the current manufacturing data meet this design specification for all manufacturing lots in total but it does not apply to individual lots. 






## T-Tests on Suspension Coils

## Study Design: MechaCar vs Competition

## Summary
We apply statistics and hypothesis testing to analyze a series of datasets. Our analysis include summary statistics, linear regression model, interpretation of the results and statistical tests. All of our statistical analysis is written in RStudio.

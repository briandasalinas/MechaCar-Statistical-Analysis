# MechaCar-Statistical-Analysis

## Purpose
Analyze the data using R for insights that may help the manufacturing team solve production troubles that are blocking the team's progress.

## Results
### Linear Regression to Predict MPG
- Vehicle length data provided the most consistent amount of variance to the mpg values in the dataset.

![length](https://user-images.githubusercontent.com/109987269/204407810-c07f1c87-92bd-4c26-af75-a7c140bc792c.png)


- The linear model would not have a slope of zero since there is consitancy in the data. It does not have an ideal positive slope but it does have a positve slope. This linear model would help predict mpg of MechaCar prototypes but it wouldn't be as effectively.


### Summary Statistics on Suspension Coils
- Looking at the summary with the 3 lots combined the variance of the suspension coils do not exceed 100 pounds per square inch meeting the design specification for MechaCar. But once we look at the data by individual lots, Lot 3 is the only lot that does not comply in the variance of the suspension coils, having the variance at 170.3. Population data vs sample data can give different numbers due to the size of the data. 

### T-Tests on Suspension Coils
- briefly summarize your interpretation and findings for the t-test results. Include screenshots of the t-test to support your summary.
- All Manufacturing Lots
- From the output, the p-value is greater than the significance level 0.05 implying that the distribution of the data are not significantly different from normal distribtion. In other words, we can assume the normality.

<img width="398" alt="Screenshot 2022-11-28 at 6 40 28 PM" src="https://user-images.githubusercontent.com/109987269/204410197-733a95e1-83c5-4a4a-b165-ef4574997602.png">


- Lot 1
- Just like the t-test for all the manufactoring lots, the p-value is greater than the significance level meaning we can assume the normality.

<img width="399" alt="Screenshot 2022-11-28 at 6 41 49 PM" src="https://user-images.githubusercontent.com/109987269/204410335-c44adbf8-e259-4a52-a24f-77c9ed09744c.png">

- Lot 2
- For Lot 2 we almost have the same p-value as for all the manufactoring lots. The p-value is greater than the significance level making our data not signigicantly different from normal distribtion.
<img width="398" alt="Screenshot 2022-11-28 at 6 42 18 PM" src="https://user-images.githubusercontent.com/109987269/204410382-c0100464-c49d-471b-8364-6aa5a1808224.png">

- Lot 3
- As for Lot 3, the p-value of the test is .04168, which is less than the significance level alpha = 0.05. We can conclude that the mean PSI is significantly different from 1500 pounds per square inch.
<img width="397" alt="Screenshot 2022-11-28 at 6 42 52 PM" src="https://user-images.githubusercontent.com/109987269/204410455-6c1a4aa1-75b9-4c6b-bbff-478966b694e3.png">


### Study Design: MechaCar vs Competition 

- To further our analysis on the design for MechaCar, we should look into testing cost and maintenance cost. Our null hypothesis would be that as the cost of the vehicle increases the maintenance cost would remain the same. Our alternative hypothesis would be that as the cost of the vehicle increases the maintenance cost increases as well. To prove this hypothesis, we would use fitting linear models to find the coefficent to either prove or fail to prove our null hypothesis. For this statistical test, we would need to find the average cost of maintance for different priced vehicals. 



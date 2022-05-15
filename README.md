# EDS 230 | ESM 232 Forest Growth - Sobol Analysis

### Authors: Group I - Jake Eisaguirre, Yuitan Fang, Julia Parish

## Assignment: Modeling Growth and Disturbance with Dynamic Models

This model was developed as an assignment for a UCSB Bren School Master’s program course, Environmental Data Science 230: | Environmental Science Management 232: Environmental Modeling. 

Original assignment instructions can be found [here](https://naomitague.github.io/ESM232_course/assignments/TBD.html). 

### Motivation and Goal

This environmental model and analysis was completed as an assignment for the course, Environmental Data Science 230 | Environmental Science & Management: Modeling Environmental Systems. The source data and model design is based on parameters provided from our professor and [here](https://naomitague.github.io/ESM232_course/assignments/TBD). 

The **goal** of this assignment was to conduct a formal sobol sensitivity analysis.

### Installation
The following **packages** were utilized:

- `deSolve`
- `here`
- `kableExtra`
- `sensitivity`
- `tidyverse`


### Data

Provided by professor. 

### Details

Consider the following model of forest growth (where forest size in measured in units of carbon (C))

- dC/dt=r∗C for forests where C is below a threshold canopy closure
- dC/dt=g∗(1−C/K) for forests where carbon is at or above the threshold canopy closure
- The size of the forest (C), Canopy closure threshold and carrying capacity are all in units of carbon
- the canopy closure threshold as the size of the forest at which growth rates change from exponential to linear
- `K` is a carrying capacity in units of carbon
- `r` as early exponential growth rate and g as the linear growth rate once canopy closure has been reached

### Tasks 

- [ ] Implement this model in R (as a differential equation) 
- [ ] Run the model for 300 years (using the ODE solver) starting with an initial forest size of 10 kg/C, and using the following parameters
- canopy closure threshold of 50 kgC
- K = 250 kg C (carrying capacity)
- r = 0.01 (exponential growth rate before before canopy closure)
- g = 2 kg/year (linear growth rate after canopy closure)

- [ ] Graph the results. 
- [ ] Run a sobol sensitivity analysis that explores how the estimated maximum and mean forest size (e.g maximum and mean values of C over the 300 years) varies with the pre canopy closure growth rate (r) and post-canopy closure growth rate (g) and canopy closure threshold and carrying capacity(K).
- Assume that parameters are all normally distributed with means as given above and standard deviation of 10% of mean value
- [ ] Graph the results of the sensitivity analysis as a box plot of maximum forest size and a plot of the two Sobol indices (S and T). 
- [ ] In 2-3 sentences, discuss what the results of your simulation might mean for climate change impacts on forest growth (e.g think about what parameters climate change might influence ). (25% - wee look for reasonable discussion that uses the results from your analysis and give extra points for discussions that offer particularly creative or insightful commentary). Submit R markdown with model implementation, graphs and sensitivity analysis and R file with your model.

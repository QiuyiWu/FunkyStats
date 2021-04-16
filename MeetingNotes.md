## Apr 15, Thursday
Useful viewpoints we may need from the paper [*A large-scale analysis of racial disparities in police stops across the United States*](https://5harad.com/papers/100M-stops.pdf) David sent in the group :
- Daily black drivers were less likely to be stopped after sunset, when a ‘veil of darkness’ masks one’s race, suggesting bias in stop decisions
  - ‘veil of darkness’ test is developed by [Grogger and Ridgeway](https://www.rand.org/content/dam/rand/pubs/reprints/2007/RAND_RP1253.pdf):  examine the racial composition of stopped drivers as a function of sunlight while controlling for time of day 🌞
**JUST NOTICE THE [DATA](https://openpolicing.stanford.edu/data/) FOR AUSTIN DOESN'T HAVE "STOP TIME" INFORMATION**, we may not be able to do this analysis. 

- Post-stop decision to search drivers for contraband with threshold test developed by [Simoiu et al](https://www.jstor.org/stable/26362224?seq=1#metadata_info_tab_contents) and refined by [Pierson et al](http://proceedings.mlr.press/v84/pierson18a.html): a lower search success rate for one group relative to another is seen as evidence of bias against that group, as it suggests that a lower evidentiary bar was applied when making search decisions
 black and Hispanic drivers were searched on the basis of less evidence than white drivers. 
  - By examining the rate at which stopped drivers were searched and the likelihood that searches turned up contraband, we found evidence that the bar for searching black and Hispanic drivers was lower than that for searching white drivers 
**JUST NOTICE THE [DATA](https://openpolicing.stanford.edu/data/) FOR AUSTIN DOESN'T HAVE "STOP TIME" INFORMATION**, we may not be able to do this analysis. 

- Influence of policy: effthe effects of drug policy on racial disparities in traffic stop outcomes (not sure if we can find a analogous policy in Austin and do similar comparison)



## Apr 12, Monday
#### Step 1 (Hypothesis Testing)
Test null hypothesis: Fairness in traffic stops does not exist in Austin. Chi-square test (assumption: Each observation is independent of all the others)

#### Step 2 (Exploratory Analysis)
Obtain demographic data from US Census 2019 Austin (https://www.census.gov/quickfacts/fact/table/austincitytexas/LND110210)
- residential, commericial and industrial areas
- races distribution
- housing, family living arrangements
- education, health, economy, income...
GUI analysis (David)
- check if poorer areas have more traffic stops

#### Step 3 (Modeling)
- measurement of fairness (create fairness index? Search some possible existing measurements, causal inference (Cuong))
- model the distribution of the cops 
- check if cops in different races treat people in races differently

#### Step 4 (Solution)
- change some features to allviate the discrimination 
- redistribute the cops based on races

### TODO before Saturday
- Searching for/ think about the possible measurements for fairness
- Exploratory Analysis
- Seeking other usable data

### Useful Links
- Main data: 2019 Racial Profiling (RP) Warning and Field Observations (https://data.austintexas.gov/Public-Safety/2019-Racial-Profiling-RP-Warning-and-Field-Observa/djcn-eje6)
- Overleaf for report: https://www.overleaf.com/9242377564zvjxkscjvmzj
- Overleaf for presentation:

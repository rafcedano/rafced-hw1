
R version 4.2.1 (2022-06-23 ucrt) -- "Funny-Looking Kid"
Copyright (C) 2022 The R Foundation for Statistical Computing
Platform: x86_64-w64-mingw32/x64 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> load("C:/Users/rcedano002/Desktop/psy  stats/BRFSS2022_rev.RData")
> hist(SLEPTIM1[(SLEPTIM1 >5) & (SLEPTIM1 < 9)])
Error in hist(SLEPTIM1[(SLEPTIM1 > 5) & (SLEPTIM1 < 9)]) : 
  object 'SLEPTIM1' not found
> x <- 1:50
> w <- 1 + sqrt(x)/2
> example1 <- data.frame(x=x, y= x + rnorm(x)*w)
> attach(example1)
The following object is masked _by_ .GlobalEnv:
  
  x

> fm <- lm(y ~ x)
> summary(fm)

Call:
  lm(formula = y ~ x)

Residuals:
  Min      1Q  Median      3Q     Max 
-9.8141 -1.3317  0.1489  2.2602  7.0549 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)  0.66576    1.03834   0.641    0.524    
x            0.94510    0.03544  26.669   <2e-16 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.616 on 48 degrees of freedom
Multiple R-squared:  0.9368,	Adjusted R-squared:  0.9355 
F-statistic: 711.2 on 1 and 48 DF,  p-value: < 2.2e-16

> lrf <- lowess(x, y)
> plot(x, y)
> lines(x, lrf$y)
> abline(0, 1, lty=3)
> abline(coef(fm))
> detach()
> load("BRFSS2022_rev.RData")
Error in readChar(con, 5L, useBytes = TRUE) : cannot open the connection
In addition: Warning message:
  In readChar(con, 5L, useBytes = TRUE) :
  cannot open compressed file 'BRFSS2022_rev.RData', probable reason 'No such file or directory'
> load("BRFSS2022_rev.RData")
Error in readChar(con, 5L, useBytes = TRUE) : cannot open the connection
In addition: Warning message:
  In readChar(con, 5L, useBytes = TRUE) :
  cannot open compressed file 'BRFSS2022_rev.RData', probable reason 'No such file or directory'
> attach(brfss22)
> summary(brfss22)
X_STATE                          X_METSTAT               X_URBSTAT     
Washington: 26152   Metropolitan counties   :318082   urban counties:380732  
New York  : 17800   nonmetropolitan counties:117642   rural counties: 54992  
Minnesota : 16821   NA's                    :  9408   NA's          :  9408  
Ohio      : 16487                                                            
Maryland  : 16418                                                            
Texas     : 14245                                                            
(Other)   :337209                                                            
MSCODE          CHILDREN    
in central city                  : 29393   Min.   : 0.00  
in county containing central city: 16030   1st Qu.: 0.00  
in suburb near city              : 16068   Median : 0.00  
outside MSA                      : 32395   Mean   : 0.49  
NA's                             :351246   3rd Qu.: 1.00  
                                            Max.   :82.00  
                                            NA's   :14464  
MARITAL      
Married                        :227424  
Never married                  : 80001  
Divorced                       : 57516  
Widowed                        : 48019  
A member of an unmarried couple: 18668  
(Other)                        : 13496  
NA's                           :     8  
                                                          EDUCA       
 College 4 years or more (College graduate)                  :187496  
 College 1 year to 3 years (Some college or technical school):120252  
 Grade 12 or GED (High school graduate)                      :108990  
 Grades 9 through 11 (Some high school)                      : 16954  
 Grades 1 through 8 (Elementary)                             :  8381  
 (Other)                                                     :  3054  
 NA's                                                        :     5  
VETERAN3                                   X_PRACE2     
Yes a veteran: 53211   White                            :351032  
No           :386272   Black or African American        : 41522  
NA's         :  5649   Asian                            : 14836  
                        American Indian or Alaskan Native: 10147  
                        Refused                          :  8593  
                        (Other)                          : 18989  
                        NA's                             :    13  
X_HISPANC                X_AGEG5YR          RENTHOM1     
yes Hispanic             : 42917   Age 65 to 69   : 47099   own home:310708  
no                       :396631   Age 60 to 64   : 44511   rent    :108332  
dont know refused missing:  5584   Age 70 to 74   : 43472   other   : 21463  
Age 55 to 59   : 36821   NA's    :  4629  
                                    Age 80 or older: 36251                    
                                    Age 50 to 54   : 33644                    
                                    (Other)        :203334                    
               EMPLOY1      
 Employed for wages:186004  
 Retired           :137083  
 Self-employed     : 38768  
 Unable to work    : 26737  
 A homemaker       : 17477  
 (Other)           : 27823  
 NA's              : 11240  
INCOME3      
Less than $75,000 ($50,000 to less than $75,000)   : 59148  
Less than $150,000 ($100,000 to less than $150,000): 50330  
Less than $100,000 ($75,000 to less than $100,000) : 48436  
Refused                                            : 47001  
Less than $50,000 ($35,000 to less than $50,000)   : 46831  
(Other)                                            :180454  
NA's                                               : 12932  
                 FOODSTMP     
 got food stamps SNAP: 25323  
 no                  :226638  
 NA's                :193171  




SDHFOOD1     
Never                                                                                            :203654  
Rarely                                                                                           : 20768  
Sometimes                                                                                        : 17258  
Always the food that you bought not last, and you didn\x92t have money to get more, in last 12 mo:  4824  
Usually                                                                                          :  4603  
(Other)                                                                                          :  1722  
NA's                                                                                             :192303  
    SEXVAR                      BIRTHSEX     
 Male  :209239   male sex at birth  : 37441  
 Female:235893   female sex at birth: 41456  
                 NA's               :366235  




SOMALE                             SOFEMALE     
Gay                       :  2939   Lesbian or Gay            :  2318  
Straight, that is, not gay:112679   Straight, that is, not gay:123813  
Bisexual                  :  2570   Bisexual                  :  5507  
Something else            :  1974   Something else            :  2789  
I dont know the answer    :  1057   I dont know the answer    :  1760  
Refused                   :  2813   Refused                   :  3443  
NA's                      :321100   NA's                      :305502  
TRNSGNDR     
Yes, Transgender, male-to-female      :   499  
Yes, Transgender, female to male      :   515  
Yes, Transgender, gender nonconforming:   589  
No                                    :258106  
Dont know/Not Sure                    :   811  
Refused                               :  3041  
NA's                                  :181571  
                      HADSEX            GENHLTH          PHYSHLTH     
 yes had sex in last 6 mo: 14744   Very good:148444   Min.   : 0.000  
 no                      :  4231   Good     :143598   1st Qu.: 0.000  
 dont know not sure      :    66   Excellent: 71878   Median : 0.000  
 refused                 :   835   Fair     : 60273   Mean   : 4.348  
 NA's                    :425256   Poor     : 19741   3rd Qu.: 3.000  
(Other)  :  1195   Max.   :30.000  
NA's     :     3   NA's   :10927   
MENTHLTH                          LSATISFY     
Min.   : 0.000   Very satisfied with life:114252  
1st Qu.: 0.000   Satisfied               :123445  
Median : 0.000   Dissatisfied            : 10758  
Mean   : 4.383   Very dissatisfied       :  3062  
3rd Qu.: 5.000   Dont know/Not sure      :  1864  
Max.   :30.000   Refused                 :  1107  
NA's   :9067     NA's                    :190644  
EMTSUPRT     
Always get social and emotional support:118012  
Usually                                : 77907  
Sometimes                              : 33813  
Rarely                                 : 10835  
Never                                  :  9379  
(Other)                                :  4195  
NA's                                   :190991  
                                      SDHISOLT     
 Never                                    :106160  
 Rarely                                   : 70617  
 Sometimes                                : 53072  
 Usually                                  : 13178  
 Always feel socially isolated from others:  8098  
 (Other)                                  :  2665  
 NA's                                     :191342  
SDHSTRE1     
Never                                                                                                                          : 94681  
Rarely                                                                                                                         : 69465  
Sometimes                                                                                                                      : 55913  
Usually                                                                                                                        : 17179  
Always feels tense, restless, nervous, or anxious, or is unable to sleep at night because his/her mind is troubled all the time: 12295  
(Other)                                                                                                                        :  1678  
NA's                                                                                                                           :193921  
                                  ADDEPEV3     
 Yes ever told had depressive disorder: 91410  
 No                                   :350910  
 NA's                                 :  2812  




PRIMINSR     
health ins thr employer or union:161388  
Medicare                        :135848  
private plan                    : 36931  
Medicaid                        : 29072  
no coverage of any type         : 23018  
(Other)                         : 58871  
NA's                            :     4  
                                                                    CHECKUP1     
 last routine checkup within past year (anytime less than 12 months ago):350944  
 Within past 2 years (1 year but less than 2 years ago)                 : 41919  
 Within past 5 years (2 years but less than 5 years ago)                : 24882  
 5 or more years ago                                                    : 19079  
 Dont know Not sure                                                     :  5063  
 (Other)                                                                :  3242  
 NA's                                                                   :     3  
FLUSHOT7     
Yes got flu shot in last 12 mo:209256  
No                            :188755  
NA's                          : 47121  
                                        
                                        
                                        
                                        
                                COVIDPOS     
 Yes had med prof tell positive test:110877  
 No                                 :270055  
 tested positive at home wo med prof: 13436  
 NA's                               : 50764  



COVIDSMP     
Yes had covid symptoms for more than 3 months: 26783  
No                                           : 94596  
NA's                                         :323753  
                                                       
                                                       
                                                       
                                                       
                                                                                                       COVIDPRM     
 Tiredness or fatigue                                                                                      :  7072  
 Difficulty breathing or shortness of breath                                                               :  4772  
 Loss of taste or smell                                                                                    :  4234  
 Difficulty thinking or concentrating or forgetfulness/memory problems (sometimes referred to as brain fog):  2564  
 Some other symptom                                                                                        :  2511  
 (Other)                                                                                                   :  5562  
 NA's                                                                                                      :418417  
COVIDVA1                 COVIDNU1     
Yes had at least 1 covid vax:124818   had 1 covid vax:  6712  
No                          : 27011   2 covid vax    : 36926  
NA's                        :293303   3 covid vax    : 57488  
                                       4 covid vax    : 23051  
                                       NA's           :320955  


EXERANY2         SLEPTIM1      Height_inches  
Yes exercised in past month:337559   Min.   : 1.000   Min.   :24.00  
No                         :106480   1st Qu.: 6.000   1st Qu.:64.00  
NA's                       :  1093   Median : 7.000   Median :67.00  
                                      Mean   : 7.023   Mean   :67.06  
                                      3rd Qu.: 8.000   3rd Qu.:70.00  
                                      Max.   :24.000   Max.   :97.00  
                                      NA's   :5453     NA's   :32468  
    WEIGHT2           X_BMI5              X_BMI5CAT     
 Min.   :  32.0   Min.   :12.02   Underweight  :  6778  
 1st Qu.: 150.0   1st Qu.:24.13   Normal Weight:116976  
 Median : 178.0   Median :27.44   Overweight   :139995  
 Mean   : 183.3   Mean   :28.53   Obese        :132577  
 3rd Qu.: 210.0   3rd Qu.:31.75   NA's         : 48806  
Max.   :1230.0   Max.   :99.64                         
NA's   :44257    NA's   :48806                         
SMOKE100                    SMOKDAY2     
yes smoked at least 100 cigs in life:164217   smoke every day   : 36003  
no                                  :245955   smoke some days   : 13938  
dont know not sure                  :  2297   not at all        :113774  
refused                             :   886   Dont know Not Sure:   165  
NA's                                : 31777   Refused           :   173  
                                               NA's              :281079  

ECIGNOW2     
never used e-cigarettes in life:311988  
use every day                  : 10382  
use some days                  : 11734  
not at all right now           : 75368  
Dont know Not Sure             :   905  
Refused                        :  1176  
NA's                           : 33579  
                           ALCDAY4          AVEDRNK3         DRNK3GE5     
 none                          :187667   Min.   : 0.00    Min.   : 0.00   
 1 in last month               : 31355   1st Qu.: 1.00    1st Qu.: 0.00   
 2 in last month               : 24184   Median : 2.00    Median : 0.00   
 1 alcoholic drink in past week: 19043   Mean   : 2.24    Mean   : 1.34   
 2 in week                     : 15797   3rd Qu.: 3.00    3rd Qu.: 1.00   
 (Other)                       :126323   Max.   :76.00    Max.   :76.00   
 NA's                          : 40763   NA's   :237372   NA's   :238769  
MARIJAN1                       FIREARM5     
Min.   : 0       yes firearms in house: 13839  
1st Qu.: 0       no                   : 23428  
Median : 0       NA's                 :407865  
 Mean   : 2                                     
 3rd Qu.: 0                                     
 Max.   :30                                     
 NA's   :351397                                 
ACEDEPRS     
Yes, Adverse Childhood Exper, lived with someone who was depressed, mentally ill, or suicidal:  8800  
No                                                                                           : 38156  
dont know not sure                                                                           :   489  
refused                                                                                      :   841  
NA's                                                                                         :396846  
                                                                                                       
                                                                                                       
                                                                                    ACEDRINK     
 Yes, Adverse Childhood Exper, lived with someone who was a problem drinker or alcoholic: 11527  
 No                                                                                     : 35692  
 dont know not sure                                                                     :   206  
 refused                                                                                :   806  
 NA's                                                                                   :396901  


ACEDRUGS     
Yes, Adverse Childhood Exper, lived with someone who used illegal street drugs or who abused prescription medications:  4691  
No                                                                                                                   : 42448  
dont know not sure                                                                                                   :   307  
refused                                                                                                              :   774  
NA's                                                                                                                 :396912  
                                                                                                                               
                                                                                                                               
                                                                                                                                              ACEPRISN     
 Yes, Adverse Childhood Exper, lived with someone who served time or was sentenced to serve time in a prison, jail, or other correctional facility:  3549  
 No                                                                                                                                               : 43701  
 dont know not sure                                                                                                                               :   178  
 refused                                                                                                                                          :   766  
 NA's                                                                                                                                             :396938  


ACEDIVRC     
Yes, Adverse Childhood Exper, parents separated or divorced: 12107  
No                                                         : 34367  
dont know not sure                                         :   269  
parents never married                                      :   632  
refused                                                    :   797  
NA's                                                       :396960  
                                                                     
                                                                                                                                ACEPUNCH     
 Adverse Childhood Exper, never: How often did your parents or adults in your home ever slap, hit, kick, punch or beat each other up: 38842  
 once                                                                                                                               :  1795  
 more than once                                                                                                                     :  5816  
 dont know not sure                                                                                                                 :   672  
 refused                                                                                                                            :  1004  
 NA's                                                                                                                               :397003  

ACEHURT1     
Adverse Childhood Exper, never: Not including spanking, (before age 18), how often did a parent or adult in your home ever hit, beat, kick, or physically hurt you in any way: 35092  
once                                                                                                                                                                         :  2939  
more than once                                                                                                                                                               :  8628  
dont know not sure                                                                                                                                                           :   350  
refused                                                                                                                                                                      :  1068  
NA's                                                                                                                                                                         :397055  
                                                                                                                                                                                       
                                                                                                                        ACESWEAR     
 Adverse Childhood Exper, never: How often did a parent or adult in your home ever swear at you, insult you, or put you down: 30266  
 once                                                                                                                       :  2393  
 more than once                                                                                                             : 13722  
 dont know not sure                                                                                                         :   573  
 refused                                                                                                                    :  1075  
 NA's                                                                                                                       :397103  

ACETOUCH     
Adverse Childhood Exper, never:  How often did anyone at least 5 years older than you or an adult, ever touch you sexually: 40941  
once                                                                                                                      :  1940  
more than once                                                                                                            :  3677  
dont know not sure                                                                                                        :   202  
refused                                                                                                                   :  1212  
NA's                                                                                                                      :397160  
                                                                                                                                    
                                             CIMEMLOS     
 experienced confusion memory loss in last 12 mo :  7003  
 no                                              : 56945  
 NA's                                            :381184  




CDHOUSE      
Never                                                                                                                                               :  3642  
Sometimes                                                                                                                                           :  1650  
Rarely                                                                                                                                              :  1272  
Usually                                                                                                                                             :   364  
Always, as a result of confusion or memory loss, how often have you given up day-to-day household activities or chores you used to do, in last 12 mo:   357  
(Other)                                                                                                                                             :   168  
NA's                                                                                                                                                :437679  
                                                CDASSIST     
 Never                                              :  3954  
 Rarely                                             :  1447  
 Sometimes                                          :  1354  
 Always need assist because confusion or memory loss:   304  
 Usually                                            :   281  
 (Other)                                            :    91  
 NA's                                               :437701  
CDSOCIAL     
Never                                                                   :  3726  
Rarely                                                                  :  1387  
Sometimes                                                               :  1313  
Always confusion or memory loss interfere with work or social activities:   458  
Usually                                                                 :   410  
(Other)                                                                 :   121  
NA's                                                                    :437717  
                                                                  CAREGIV1     
 provided care to family or friend with disability or health condition: 19662  
 no                                                                   : 78174  
 caregiving recipient died in past 30 days                            :   177  
 NA's                                                                 :347119  



CRGVREL4     
Mother                    :  3986  
Non-relative/Family friend:  3002  
Husband                   :  2243  
Child                     :  1968  
Wife                      :  1904  
(Other)                   :  6531  
NA's                      :425498  
> summary(SLEPTIM1[X_STATE == "New York"])
   Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
1.000   6.000   7.000   6.905   8.000  24.000     226 
> summary(SLEPTIM1[X_STATE == "Ohio"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
   1.00    6.00    7.00    6.94    8.00   24.00     218 
> mean(SLEPTIM1[X_STATE == "New York"], na.rm = TRUE)
[1] 6.904973
> sd(SLEPTIM1[X_STATE == "New York"], na.rm = TRUE)
[1] 1.50938
> mean(SLEPTIM1[X_STATE == "Ohio"], na.rm = TRUE)
[1] 6.940316
> sd(SLEPTIM1[X_STATE == "Ohio"], na.rm = TRUE)
[1] 1.547165
> hist(SLEPTIM1[(SLEPTIM1 >5) & (SLEPTIM1 < 9)])
> summary(SEXVAR)
  Male Female 
209239 235893 
> summary(BIRTHSEX)
  male sex at birth female sex at birth                NA's 
37441               41456              366235 
> summary(GENHLTH)
Excellent            Very good                 Good 
71878               148444               143598 
Fair                 Poor Dont know - Not Sure 
60273                19741                  810 
Refused                 NA's 
                 385                    3 
> summary(EDUCA)
                  Never attended school or only kindergarten 
                                                         676 
                             Grades 1 through 8 (Elementary) 
                                                        8381 
                      Grades 9 through 11 (Some high school) 
                                                       16954 
                      Grade 12 or GED (High school graduate) 
                                                      108990 
College 1 year to 3 years (Some college or technical school) 
                                                      120252 
                  College 4 years or more (College graduate) 
                                                      187496 
                                                     Refused 
                                                        2378 
                                                        NA's 
5 
> install.packages("tidyverse")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/rcedano002/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/tidyverse_2.0.0.zip'
Content type 'application/zip' length 430954 bytes (420 KB)
downloaded 420 KB

package ‘tidyverse’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\rcedano002\AppData\Local\Temp\RtmpW0YYbw\downloaded_packages
> install.packages("plyr")
WARNING: Rtools is required to build R packages but is not currently installed. Please download and install the appropriate version of Rtools before proceeding:
  
  https://cran.rstudio.com/bin/windows/Rtools/
  Installing package into ‘C:/Users/rcedano002/AppData/Local/R/win-library/4.2’
(as ‘lib’ is unspecified)
trying URL 'https://cran.rstudio.com/bin/windows/contrib/4.2/plyr_1.8.9.zip'
Content type 'application/zip' length 1152873 bytes (1.1 MB)
downloaded 1.1 MB

package ‘plyr’ successfully unpacked and MD5 sums checked

The downloaded binary packages are in
C:\Users\rcedano002\AppData\Local\Temp\RtmpW0YYbw\downloaded_packages
> library(plyr)
Warning message:
  package ‘plyr’ was built under R version 4.2.3 
> library(tidyverse)
── Attaching core tidyverse packages ─────────────────────── tidyverse 2.0.0 ──
✔ dplyr     1.1.4     ✔ readr     2.1.5
✔ forcats   1.0.0     ✔ stringr   1.5.1
✔ ggplot2   3.4.4     ✔ tibble    3.2.1
✔ lubridate 1.9.3     ✔ tidyr     1.3.1
✔ purrr     1.0.2     
── Conflicts ───────────────────────────────────────── tidyverse_conflicts() ──
✖ dplyr::arrange()   masks plyr::arrange()
✖ purrr::compact()   masks plyr::compact()
✖ dplyr::count()     masks plyr::count()
✖ dplyr::desc()      masks plyr::desc()
✖ dplyr::failwith()  masks plyr::failwith()
✖ dplyr::filter()    masks stats::filter()
✖ dplyr::id()        masks plyr::id()
✖ dplyr::lag()       masks stats::lag()
✖ dplyr::mutate()    masks plyr::mutate()
✖ dplyr::rename()    masks plyr::rename()
✖ dplyr::summarise() masks plyr::summarise()
✖ dplyr::summarize() masks plyr::summarize()
ℹ Use the conflicted package to force all conflicts to become errors
Warning messages:
  1: package ‘tidyverse’ was built under R version 4.2.3 
2: package ‘ggplot2’ was built under R version 4.2.3 
3: package ‘tibble’ was built under R version 4.2.3 
4: package ‘tidyr’ was built under R version 4.2.3 
5: package ‘readr’ was built under R version 4.2.3 
6: package ‘purrr’ was built under R version 4.2.3 
7: package ‘dplyr’ was built under R version 4.2.3 
8: package ‘stringr’ was built under R version 4.2.3 
9: package ‘forcats’ was built under R version 4.2.3 
10: package ‘lubridate’ was built under R version 4.2.3 
> summary(X_AGEG5YR)
Age 18 to 24              Age 25 to 29              Age 30 to 34 
26941                     21990                     25807 
Age 35 to 39              Age 40 to 44              Age 45 to 49 
28526                     29942                     28531 
Age 50 to 54              Age 55 to 59              Age 60 to 64 
33644                     36821                     44511 
Age 65 to 69              Age 70 to 74              Age 75 to 79 
47099                     43472                     32518 
Age 80 or older Dont know/Refused/Missing 
36251                      9079 
> summary(INCOME3)
Household income less than $10,000 
10341 
Less than $15,000 ($10,000 to less than $15,000) 
11031 
Less than $20,000 ($15,000 to less than $20,000)  
14300 
Less than $25,000 ($20,000 to less than $25,000)  
20343 
Less than $35,000 ($25,000 to less than $35,000)  
42294 
Less than $50,000 ($35,000 to less than $50,000)  
46831 
Less than $75,000 ($50,000 to less than $75,000) 
59148 
Less than $100,000 ($75,000 to less than $100,000) 
48436 
Less than $150,000 ($100,000 to less than $150,000) 
50330 
Less than $200,000 ($150,000 to less than $200,000) 
22553 
$200,000 or more 
23478 
Dont know/Not sure 
36114 
Refused 
47001 
NA's 
                                              12932 
> ddply(brfss22, .(INCOME3), summarize, mean = round(mean(SLEPTIM1, na.rm = TRUE), 2), sd = round(sd(SLEPTIM1, na.rm = TRUE), 2), n_obsv = length(is.na(SLEPTIM1) == FALSE) )
                                               INCOME3 mean   sd n_obsv
1                   Household income less than $10,000 6.90 2.26  10341
2     Less than $15,000 ($10,000 to less than $15,000) 6.94 2.04  11031
3    Less than $20,000 ($15,000 to less than $20,000)  6.99 1.96  14300
4    Less than $25,000 ($20,000 to less than $25,000)  7.02 1.83  20343
5    Less than $35,000 ($25,000 to less than $35,000)  7.02 1.66  42294
6    Less than $50,000 ($35,000 to less than $50,000)  7.03 1.50  46831
7     Less than $75,000 ($50,000 to less than $75,000) 7.00 1.36  59148
8   Less than $100,000 ($75,000 to less than $100,000) 7.01 1.27  48436
9  Less than $150,000 ($100,000 to less than $150,000) 6.99 1.19  50330
10 Less than $200,000 ($150,000 to less than $200,000) 6.98 1.16  22553
11                                    $200,000 or more 7.03 1.17  23478
12                                  Dont know/Not sure 7.12 1.76  36114
13                                             Refused 7.11 1.42  47001
14                                                <NA> 6.99 1.63  12932
> ddply(brfss22, .(INCOME3), summarize, sleep90th = quantile(SLEPTIM1,probs = 0.9, na.rm = TRUE), sleep10th = quantile(SLEPTIM1,probs = 0.1, na.rm = TRUE), n_obs = length(is.na(SLEPTIM1) == FALSE) )
                                               INCOME3 sleep90th sleep10th
1                   Household income less than $10,000         9         4
2     Less than $15,000 ($10,000 to less than $15,000)         9         4
3    Less than $20,000 ($15,000 to less than $20,000)          9         5
4    Less than $25,000 ($20,000 to less than $25,000)          9         5
5    Less than $35,000 ($25,000 to less than $35,000)          9         5
6    Less than $50,000 ($35,000 to less than $50,000)          8         5
7     Less than $75,000 ($50,000 to less than $75,000)         8         6
8   Less than $100,000 ($75,000 to less than $100,000)         8         6
9  Less than $150,000 ($100,000 to less than $150,000)         8         6
10 Less than $200,000 ($150,000 to less than $200,000)         8         6
11                                    $200,000 or more         8         6
12                                  Dont know/Not sure         9         5
13                                             Refused         8         6
14                                                <NA>         8         5
   n_obs
1  10341
2  11031
3  14300
4  20343
5  42294
6  46831
7  59148
8  48436
9  50330
10 22553
11 23478
12 36114
13 47001
14 12932
> table(GENHLTH,SEXVAR)
                      SEXVAR
GENHLTH                 Male Female
  Excellent            36008  35870
  Very good            69033  79411
  Good                 67482  76116
  Fair                 26974  33299
  Poor                  9156  10585
  Dont know - Not Sure   385    425
  Refused                201    184
> xtabs(~GENHLTH + SEXVAR)
                      SEXVAR
GENHLTH                 Male Female
  Excellent            36008  35870
  Very good            69033  79411
  Good                 67482  76116
  Fair                 26974  33299
  Poor                  9156  10585
  Dont know - Not Sure   385    425
  Refused                201    184
> prop.table(table(GENHLTH,SEXVAR))
                      SEXVAR
GENHLTH                        Male       Female
  Excellent            0.0808934039 0.0805833814
  Very good            0.1550853797 0.1783999694
  Good                 0.1516009966 0.1709976209
  Fair                 0.0605981637 0.0748075277
  Poor                 0.0205693181 0.0237796234
  Dont know - Not Sure 0.0008649178 0.0009547794
  Refused              0.0004515545 0.0004133633
> mean(SLEPTIM1[(EDUCA == "College 4 years or more (College graduate)")], na.rm = TRUE)
[1] 7.070843
> detach()
> Something i noticed from the data is that most participants were college graduates. Something surprising from the data also is how many "NAs" there were for every category. 
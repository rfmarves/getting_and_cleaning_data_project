---
title: "Codebook"
author: "Rene Marves"
date: "26 de febrero de 2017"
output: html_document
---



## Codebook

Codebook was generated on 2017-02-26 23:39:09 during the same process that generated the dataset. See README.md or README.html for details on dataset creation.

## Variable list and descriptions

|Variable name   |Description                                          |
|----------------|-----------------------------------------------------|
|Subject         |ID the subjectwho performed the activity             |
|                |for each window sample. Its range is from 1 to 30.   |
|ActivityName    |Activity name                                        |


The rest of the variables follow the format:

(Measurement Dimension)(Mesurement subject)(Instrument)(Measurement Type)

Where:

|Item                   |Description                                   |
|-----------------------|----------------------------------------------|
|Measurement Dimension  |Can be: frequency or time                     |
|Measurement subject    |Can be: Body, Gravity or BodyBody             |
|Instrument             |Can be: Acceleromenter o Gyroscope            |
|Measurment type        |Can be: Mean or Standard Deviation of a X, Y, |
                        |or Z component, or a magnitude; or a jerk     |
                        |measurement therof                            |

Table: All other variables

## Dataset structure


```r
str(dtTidy2)
```

```
## Classes 'grouped_df', 'tbl_df', 'tbl' and 'data.frame':	180 obs. of  68 variables:
##  $ Subject                                  : int  1 1 1 1 1 1 2 2 2 2 ...
##  $ ActivityName                             : Factor w/ 6 levels "LAYING","SITTING",..: 1 2 3 4 5 6 1 2 3 4 ...
##  $ timeBodyAccelerometerMeanX               : num  0.222 0.261 0.279 0.277 0.289 ...
##  $ timeBodyAccelerometerMeanY               : num  -0.04051 -0.00131 -0.01614 -0.01738 -0.00992 ...
##  $ timeBodyAccelerometerMeanZ               : num  -0.113 -0.105 -0.111 -0.111 -0.108 ...
##  $ timeBodyAccelerometerStdX                : num  -0.928 -0.977 -0.996 -0.284 0.03 ...
##  $ timeBodyAccelerometerStdY                : num  -0.8368 -0.9226 -0.9732 0.1145 -0.0319 ...
##  $ timeBodyAccelerometerStdZ                : num  -0.826 -0.94 -0.98 -0.26 -0.23 ...
##  $ timeGravityAccelerometerMeanX            : num  -0.249 0.832 0.943 0.935 0.932 ...
##  $ timeGravityAccelerometerMeanY            : num  0.706 0.204 -0.273 -0.282 -0.267 ...
##  $ timeGravityAccelerometerMeanZ            : num  0.4458 0.332 0.0135 -0.0681 -0.0621 ...
##  $ timeGravityAccelerometerStdX             : num  -0.897 -0.968 -0.994 -0.977 -0.951 ...
##  $ timeGravityAccelerometerStdY             : num  -0.908 -0.936 -0.981 -0.971 -0.937 ...
##  $ timeGravityAccelerometerStdZ             : num  -0.852 -0.949 -0.976 -0.948 -0.896 ...
##  $ timeBodyAccelerometerJerkMeanX           : num  0.0811 0.0775 0.0754 0.074 0.0542 ...
##  $ timeBodyAccelerometerJerkMeanY           : num  0.003838 -0.000619 0.007976 0.028272 0.02965 ...
##  $ timeBodyAccelerometerJerkMeanZ           : num  0.01083 -0.00337 -0.00369 -0.00417 -0.01097 ...
##  $ timeBodyAccelerometerJerkStdX            : num  -0.9585 -0.9864 -0.9946 -0.1136 -0.0123 ...
##  $ timeBodyAccelerometerJerkStdY            : num  -0.924 -0.981 -0.986 0.067 -0.102 ...
##  $ timeBodyAccelerometerJerkStdZ            : num  -0.955 -0.988 -0.992 -0.503 -0.346 ...
##  $ timeBodyGyroscopeMeanX                   : num  -0.0166 -0.0454 -0.024 -0.0418 -0.0351 ...
##  $ timeBodyGyroscopeMeanY                   : num  -0.0645 -0.0919 -0.0594 -0.0695 -0.0909 ...
##  $ timeBodyGyroscopeMeanZ                   : num  0.1487 0.0629 0.0748 0.0849 0.0901 ...
##  $ timeBodyGyroscopeStdX                    : num  -0.874 -0.977 -0.987 -0.474 -0.458 ...
##  $ timeBodyGyroscopeStdY                    : num  -0.9511 -0.9665 -0.9877 -0.0546 -0.1263 ...
##  $ timeBodyGyroscopeStdZ                    : num  -0.908 -0.941 -0.981 -0.344 -0.125 ...
##  $ timeBodyGyroscopeJerkMeanX               : num  -0.1073 -0.0937 -0.0996 -0.09 -0.074 ...
##  $ timeBodyGyroscopeJerkMeanY               : num  -0.0415 -0.0402 -0.0441 -0.0398 -0.044 ...
##  $ timeBodyGyroscopeJerkMeanZ               : num  -0.0741 -0.0467 -0.049 -0.0461 -0.027 ...
##  $ timeBodyGyroscopeJerkStdX                : num  -0.919 -0.992 -0.993 -0.207 -0.487 ...
##  $ timeBodyGyroscopeJerkStdY                : num  -0.968 -0.99 -0.995 -0.304 -0.239 ...
##  $ timeBodyGyroscopeJerkStdZ                : num  -0.958 -0.988 -0.992 -0.404 -0.269 ...
##  $ timeBodyAccelerometerMagMean             : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
##  $ timeBodyAccelerometerMagStd              : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
##  $ timeGravityAccelerometerMagMean          : num  -0.8419 -0.9485 -0.9843 -0.137 0.0272 ...
##  $ timeGravityAccelerometerMagStd           : num  -0.7951 -0.9271 -0.9819 -0.2197 0.0199 ...
##  $ timeBodyAccelerometerJerkMagMean         : num  -0.9544 -0.9874 -0.9924 -0.1414 -0.0894 ...
##  $ timeBodyAccelerometerJerkMagStd          : num  -0.9282 -0.9841 -0.9931 -0.0745 -0.0258 ...
##  $ timeBodyGyroscopeMagMean                 : num  -0.8748 -0.9309 -0.9765 -0.161 -0.0757 ...
##  $ timeBodyGyroscopeMagStd                  : num  -0.819 -0.935 -0.979 -0.187 -0.226 ...
##  $ timeBodyGyroscopeJerkMagMean             : num  -0.963 -0.992 -0.995 -0.299 -0.295 ...
##  $ timeBodyGyroscopeJerkMagStd              : num  -0.936 -0.988 -0.995 -0.325 -0.307 ...
##  $ frequencyBodyAccelerometerMeanX          : num  -0.9391 -0.9796 -0.9952 -0.2028 0.0382 ...
##  $ frequencyBodyAccelerometerMeanY          : num  -0.86707 -0.94408 -0.97707 0.08971 0.00155 ...
##  $ frequencyBodyAccelerometerMeanZ          : num  -0.883 -0.959 -0.985 -0.332 -0.226 ...
##  $ frequencyBodyAccelerometerStdX           : num  -0.9244 -0.9764 -0.996 -0.3191 0.0243 ...
##  $ frequencyBodyAccelerometerStdY           : num  -0.834 -0.917 -0.972 0.056 -0.113 ...
##  $ frequencyBodyAccelerometerStdZ           : num  -0.813 -0.934 -0.978 -0.28 -0.298 ...
##  $ frequencyBodyAccelerometerJerkMeanX      : num  -0.9571 -0.9866 -0.9946 -0.1705 -0.0277 ...
##  $ frequencyBodyAccelerometerJerkMeanY      : num  -0.9225 -0.9816 -0.9854 -0.0352 -0.1287 ...
##  $ frequencyBodyAccelerometerJerkMeanZ      : num  -0.948 -0.986 -0.991 -0.469 -0.288 ...
##  $ frequencyBodyAccelerometerJerkStdX       : num  -0.9642 -0.9875 -0.9951 -0.1336 -0.0863 ...
##  $ frequencyBodyAccelerometerJerkStdY       : num  -0.932 -0.983 -0.987 0.107 -0.135 ...
##  $ frequencyBodyAccelerometerJerkStdZ       : num  -0.961 -0.988 -0.992 -0.535 -0.402 ...
##  $ frequencyBodyGyroscopeMeanX              : num  -0.85 -0.976 -0.986 -0.339 -0.352 ...
##  $ frequencyBodyGyroscopeMeanY              : num  -0.9522 -0.9758 -0.989 -0.1031 -0.0557 ...
##  $ frequencyBodyGyroscopeMeanZ              : num  -0.9093 -0.9513 -0.9808 -0.2559 -0.0319 ...
##  $ frequencyBodyGyroscopeStdX               : num  -0.882 -0.978 -0.987 -0.517 -0.495 ...
##  $ frequencyBodyGyroscopeStdY               : num  -0.9512 -0.9623 -0.9871 -0.0335 -0.1814 ...
##  $ frequencyBodyGyroscopeStdZ               : num  -0.917 -0.944 -0.982 -0.437 -0.238 ...
##  $ frequencyBodyAccelerometerMagMean        : num  -0.8618 -0.9478 -0.9854 -0.1286 0.0966 ...
##  $ frequencyBodyAccelerometerMagStd         : num  -0.798 -0.928 -0.982 -0.398 -0.187 ...
##  $ frequencyBodyBodyAccelerometerJerkMagMean: num  -0.9333 -0.9853 -0.9925 -0.0571 0.0262 ...
##  $ frequencyBodyBodyAccelerometerJerkMagStd : num  -0.922 -0.982 -0.993 -0.103 -0.104 ...
##  $ frequencyBodyBodyGyroscopeMagMean        : num  -0.862 -0.958 -0.985 -0.199 -0.186 ...
##  $ frequencyBodyBodyGyroscopeMagStd         : num  -0.824 -0.932 -0.978 -0.321 -0.398 ...
##  $ frequencyBodyBodyGyroscopeJerkMagMean    : num  -0.942 -0.99 -0.995 -0.319 -0.282 ...
##  $ frequencyBodyBodyGyroscopeJerkMagStd     : num  -0.933 -0.987 -0.995 -0.382 -0.392 ...
##  - attr(*, ".internal.selfref")=<externalptr> 
##  - attr(*, "vars")=List of 1
##   ..$ : symbol Subject
##  - attr(*, "drop")= logi TRUE
```

## Show a few rows of the dataset


```r
dtTidy2
```

## Summary of variables


```r
summary(dtTidy2)
```

```
##     Subject                 ActivityName timeBodyAccelerometerMeanX
##  Min.   : 1.0   LAYING            :30    Min.   :0.2216            
##  1st Qu.: 8.0   SITTING           :30    1st Qu.:0.2712            
##  Median :15.5   STANDING          :30    Median :0.2770            
##  Mean   :15.5   WALKING           :30    Mean   :0.2743            
##  3rd Qu.:23.0   WALKING_DOWNSTAIRS:30    3rd Qu.:0.2800            
##  Max.   :30.0   WALKING_UPSTAIRS  :30    Max.   :0.3015            
##  timeBodyAccelerometerMeanY timeBodyAccelerometerMeanZ
##  Min.   :-0.040514          Min.   :-0.15251          
##  1st Qu.:-0.020022          1st Qu.:-0.11207          
##  Median :-0.017262          Median :-0.10819          
##  Mean   :-0.017876          Mean   :-0.10916          
##  3rd Qu.:-0.014936          3rd Qu.:-0.10443          
##  Max.   :-0.001308          Max.   :-0.07538          
##  timeBodyAccelerometerStdX timeBodyAccelerometerStdY
##  Min.   :-0.9961           Min.   :-0.99024         
##  1st Qu.:-0.9799           1st Qu.:-0.94205         
##  Median :-0.7526           Median :-0.50897         
##  Mean   :-0.5577           Mean   :-0.46046         
##  3rd Qu.:-0.1984           3rd Qu.:-0.03077         
##  Max.   : 0.6269           Max.   : 0.61694         
##  timeBodyAccelerometerStdZ timeGravityAccelerometerMeanX
##  Min.   :-0.9877           Min.   :-0.6800              
##  1st Qu.:-0.9498           1st Qu.: 0.8376              
##  Median :-0.6518           Median : 0.9208              
##  Mean   :-0.5756           Mean   : 0.6975              
##  3rd Qu.:-0.2306           3rd Qu.: 0.9425              
##  Max.   : 0.6090           Max.   : 0.9745              
##  timeGravityAccelerometerMeanY timeGravityAccelerometerMeanZ
##  Min.   :-0.47989              Min.   :-0.49509             
##  1st Qu.:-0.23319              1st Qu.:-0.11726             
##  Median :-0.12782              Median : 0.02384             
##  Mean   :-0.01621              Mean   : 0.07413             
##  3rd Qu.: 0.08773              3rd Qu.: 0.14946             
##  Max.   : 0.95659              Max.   : 0.95787             
##  timeGravityAccelerometerStdX timeGravityAccelerometerStdY
##  Min.   :-0.9968              Min.   :-0.9942             
##  1st Qu.:-0.9825              1st Qu.:-0.9711             
##  Median :-0.9695              Median :-0.9590             
##  Mean   :-0.9638              Mean   :-0.9524             
##  3rd Qu.:-0.9509              3rd Qu.:-0.9370             
##  Max.   :-0.8296              Max.   :-0.6436             
##  timeGravityAccelerometerStdZ timeBodyAccelerometerJerkMeanX
##  Min.   :-0.9910              Min.   :0.04269               
##  1st Qu.:-0.9605              1st Qu.:0.07396               
##  Median :-0.9450              Median :0.07640               
##  Mean   :-0.9364              Mean   :0.07947               
##  3rd Qu.:-0.9180              3rd Qu.:0.08330               
##  Max.   :-0.6102              Max.   :0.13019               
##  timeBodyAccelerometerJerkMeanY timeBodyAccelerometerJerkMeanZ
##  Min.   :-0.0386872             Min.   :-0.067458             
##  1st Qu.: 0.0004664             1st Qu.:-0.010601             
##  Median : 0.0094698             Median :-0.003861             
##  Mean   : 0.0075652             Mean   :-0.004953             
##  3rd Qu.: 0.0134008             3rd Qu.: 0.001958             
##  Max.   : 0.0568186             Max.   : 0.038053             
##  timeBodyAccelerometerJerkStdX timeBodyAccelerometerJerkStdY
##  Min.   :-0.9946               Min.   :-0.9895              
##  1st Qu.:-0.9832               1st Qu.:-0.9724              
##  Median :-0.8104               Median :-0.7756              
##  Mean   :-0.5949               Mean   :-0.5654              
##  3rd Qu.:-0.2233               3rd Qu.:-0.1483              
##  Max.   : 0.5443               Max.   : 0.3553              
##  timeBodyAccelerometerJerkStdZ timeBodyGyroscopeMeanX
##  Min.   :-0.99329              Min.   :-0.20578      
##  1st Qu.:-0.98266              1st Qu.:-0.04712      
##  Median :-0.88366              Median :-0.02871      
##  Mean   :-0.73596              Mean   :-0.03244      
##  3rd Qu.:-0.51212              3rd Qu.:-0.01676      
##  Max.   : 0.03102              Max.   : 0.19270      
##  timeBodyGyroscopeMeanY timeBodyGyroscopeMeanZ timeBodyGyroscopeStdX
##  Min.   :-0.20421       Min.   :-0.07245       Min.   :-0.9943      
##  1st Qu.:-0.08955       1st Qu.: 0.07475       1st Qu.:-0.9735      
##  Median :-0.07318       Median : 0.08512       Median :-0.7890      
##  Mean   :-0.07426       Mean   : 0.08744       Mean   :-0.6916      
##  3rd Qu.:-0.06113       3rd Qu.: 0.10177       3rd Qu.:-0.4414      
##  Max.   : 0.02747       Max.   : 0.17910       Max.   : 0.2677      
##  timeBodyGyroscopeStdY timeBodyGyroscopeStdZ timeBodyGyroscopeJerkMeanX
##  Min.   :-0.9942       Min.   :-0.9855       Min.   :-0.15721          
##  1st Qu.:-0.9629       1st Qu.:-0.9609       1st Qu.:-0.10322          
##  Median :-0.8017       Median :-0.8010       Median :-0.09868          
##  Mean   :-0.6533       Mean   :-0.6164       Mean   :-0.09606          
##  3rd Qu.:-0.4196       3rd Qu.:-0.3106       3rd Qu.:-0.09110          
##  Max.   : 0.4765       Max.   : 0.5649       Max.   :-0.02209          
##  timeBodyGyroscopeJerkMeanY timeBodyGyroscopeJerkMeanZ
##  Min.   :-0.07681           Min.   :-0.092500         
##  1st Qu.:-0.04552           1st Qu.:-0.061725         
##  Median :-0.04112           Median :-0.053430         
##  Mean   :-0.04269           Mean   :-0.054802         
##  3rd Qu.:-0.03842           3rd Qu.:-0.048985         
##  Max.   :-0.01320           Max.   :-0.006941         
##  timeBodyGyroscopeJerkStdX timeBodyGyroscopeJerkStdY
##  Min.   :-0.9965           Min.   :-0.9971          
##  1st Qu.:-0.9800           1st Qu.:-0.9832          
##  Median :-0.8396           Median :-0.8942          
##  Mean   :-0.7036           Mean   :-0.7636          
##  3rd Qu.:-0.4629           3rd Qu.:-0.5861          
##  Max.   : 0.1791           Max.   : 0.2959          
##  timeBodyGyroscopeJerkStdZ timeBodyAccelerometerMagMean
##  Min.   :-0.9954           Min.   :-0.9865             
##  1st Qu.:-0.9848           1st Qu.:-0.9573             
##  Median :-0.8610           Median :-0.4829             
##  Mean   :-0.7096           Mean   :-0.4973             
##  3rd Qu.:-0.4741           3rd Qu.:-0.0919             
##  Max.   : 0.1932           Max.   : 0.6446             
##  timeBodyAccelerometerMagStd timeGravityAccelerometerMagMean
##  Min.   :-0.9865             Min.   :-0.9865                
##  1st Qu.:-0.9430             1st Qu.:-0.9573                
##  Median :-0.6074             Median :-0.4829                
##  Mean   :-0.5439             Mean   :-0.4973                
##  3rd Qu.:-0.2090             3rd Qu.:-0.0919                
##  Max.   : 0.4284             Max.   : 0.6446                
##  timeGravityAccelerometerMagStd timeBodyAccelerometerJerkMagMean
##  Min.   :-0.9865                Min.   :-0.9928                 
##  1st Qu.:-0.9430                1st Qu.:-0.9807                 
##  Median :-0.6074                Median :-0.8168                 
##  Mean   :-0.5439                Mean   :-0.6079                 
##  3rd Qu.:-0.2090                3rd Qu.:-0.2456                 
##  Max.   : 0.4284                Max.   : 0.4345                 
##  timeBodyAccelerometerJerkMagStd timeBodyGyroscopeMagMean
##  Min.   :-0.9946                 Min.   :-0.9807         
##  1st Qu.:-0.9765                 1st Qu.:-0.9461         
##  Median :-0.8014                 Median :-0.6551         
##  Mean   :-0.5842                 Mean   :-0.5652         
##  3rd Qu.:-0.2173                 3rd Qu.:-0.2159         
##  Max.   : 0.4506                 Max.   : 0.4180         
##  timeBodyGyroscopeMagStd timeBodyGyroscopeJerkMagMean
##  Min.   :-0.9814         Min.   :-0.99732            
##  1st Qu.:-0.9476         1st Qu.:-0.98515            
##  Median :-0.7420         Median :-0.86479            
##  Mean   :-0.6304         Mean   :-0.73637            
##  3rd Qu.:-0.3602         3rd Qu.:-0.51186            
##  Max.   : 0.3000         Max.   : 0.08758            
##  timeBodyGyroscopeJerkMagStd frequencyBodyAccelerometerMeanX
##  Min.   :-0.9977             Min.   :-0.9952                
##  1st Qu.:-0.9805             1st Qu.:-0.9787                
##  Median :-0.8809             Median :-0.7691                
##  Mean   :-0.7550             Mean   :-0.5758                
##  3rd Qu.:-0.5767             3rd Qu.:-0.2174                
##  Max.   : 0.2502             Max.   : 0.5370                
##  frequencyBodyAccelerometerMeanY frequencyBodyAccelerometerMeanZ
##  Min.   :-0.98903                Min.   :-0.9895                
##  1st Qu.:-0.95361                1st Qu.:-0.9619                
##  Median :-0.59498                Median :-0.7236                
##  Mean   :-0.48873                Mean   :-0.6297                
##  3rd Qu.:-0.06341                3rd Qu.:-0.3183                
##  Max.   : 0.52419                Max.   : 0.2807                
##  frequencyBodyAccelerometerStdX frequencyBodyAccelerometerStdY
##  Min.   :-0.9966                Min.   :-0.99068              
##  1st Qu.:-0.9820                1st Qu.:-0.94042              
##  Median :-0.7470                Median :-0.51338              
##  Mean   :-0.5522                Mean   :-0.48148              
##  3rd Qu.:-0.1966                3rd Qu.:-0.07913              
##  Max.   : 0.6585                Max.   : 0.56019              
##  frequencyBodyAccelerometerStdZ frequencyBodyAccelerometerJerkMeanX
##  Min.   :-0.9872                Min.   :-0.9946                    
##  1st Qu.:-0.9459                1st Qu.:-0.9828                    
##  Median :-0.6441                Median :-0.8126                    
##  Mean   :-0.5824                Mean   :-0.6139                    
##  3rd Qu.:-0.2655                3rd Qu.:-0.2820                    
##  Max.   : 0.6871                Max.   : 0.4743                    
##  frequencyBodyAccelerometerJerkMeanY frequencyBodyAccelerometerJerkMeanZ
##  Min.   :-0.9894                     Min.   :-0.9920                    
##  1st Qu.:-0.9725                     1st Qu.:-0.9796                    
##  Median :-0.7817                     Median :-0.8707                    
##  Mean   :-0.5882                     Mean   :-0.7144                    
##  3rd Qu.:-0.1963                     3rd Qu.:-0.4697                    
##  Max.   : 0.2767                     Max.   : 0.1578                    
##  frequencyBodyAccelerometerJerkStdX frequencyBodyAccelerometerJerkStdY
##  Min.   :-0.9951                    Min.   :-0.9905                   
##  1st Qu.:-0.9847                    1st Qu.:-0.9737                   
##  Median :-0.8254                    Median :-0.7852                   
##  Mean   :-0.6121                    Mean   :-0.5707                   
##  3rd Qu.:-0.2475                    3rd Qu.:-0.1685                   
##  Max.   : 0.4768                    Max.   : 0.3498                   
##  frequencyBodyAccelerometerJerkStdZ frequencyBodyGyroscopeMeanX
##  Min.   :-0.993108                  Min.   :-0.9931            
##  1st Qu.:-0.983747                  1st Qu.:-0.9697            
##  Median :-0.895121                  Median :-0.7300            
##  Mean   :-0.756489                  Mean   :-0.6367            
##  3rd Qu.:-0.543787                  3rd Qu.:-0.3387            
##  Max.   :-0.006236                  Max.   : 0.4750            
##  frequencyBodyGyroscopeMeanY frequencyBodyGyroscopeMeanZ
##  Min.   :-0.9940             Min.   :-0.9860            
##  1st Qu.:-0.9700             1st Qu.:-0.9624            
##  Median :-0.8141             Median :-0.7909            
##  Mean   :-0.6767             Mean   :-0.6044            
##  3rd Qu.:-0.4458             3rd Qu.:-0.2635            
##  Max.   : 0.3288             Max.   : 0.4924            
##  frequencyBodyGyroscopeStdX frequencyBodyGyroscopeStdY
##  Min.   :-0.9947            Min.   :-0.9944           
##  1st Qu.:-0.9750            1st Qu.:-0.9602           
##  Median :-0.8086            Median :-0.7964           
##  Mean   :-0.7110            Mean   :-0.6454           
##  3rd Qu.:-0.4813            3rd Qu.:-0.4154           
##  Max.   : 0.1966            Max.   : 0.6462           
##  frequencyBodyGyroscopeStdZ frequencyBodyAccelerometerMagMean
##  Min.   :-0.9867            Min.   :-0.9868                  
##  1st Qu.:-0.9643            1st Qu.:-0.9560                  
##  Median :-0.8224            Median :-0.6703                  
##  Mean   :-0.6577            Mean   :-0.5365                  
##  3rd Qu.:-0.3916            3rd Qu.:-0.1622                  
##  Max.   : 0.5225            Max.   : 0.5866                  
##  frequencyBodyAccelerometerMagStd
##  Min.   :-0.9876                 
##  1st Qu.:-0.9452                 
##  Median :-0.6513                 
##  Mean   :-0.6210                 
##  3rd Qu.:-0.3654                 
##  Max.   : 0.1787                 
##  frequencyBodyBodyAccelerometerJerkMagMean
##  Min.   :-0.9940                          
##  1st Qu.:-0.9770                          
##  Median :-0.7940                          
##  Mean   :-0.5756                          
##  3rd Qu.:-0.1872                          
##  Max.   : 0.5384                          
##  frequencyBodyBodyAccelerometerJerkMagStd
##  Min.   :-0.9944                         
##  1st Qu.:-0.9752                         
##  Median :-0.8126                         
##  Mean   :-0.5992                         
##  3rd Qu.:-0.2668                         
##  Max.   : 0.3163                         
##  frequencyBodyBodyGyroscopeMagMean frequencyBodyBodyGyroscopeMagStd
##  Min.   :-0.9865                   Min.   :-0.9815                 
##  1st Qu.:-0.9616                   1st Qu.:-0.9488                 
##  Median :-0.7657                   Median :-0.7727                 
##  Mean   :-0.6671                   Mean   :-0.6723                 
##  3rd Qu.:-0.4087                   3rd Qu.:-0.4277                 
##  Max.   : 0.2040                   Max.   : 0.2367                 
##  frequencyBodyBodyGyroscopeJerkMagMean
##  Min.   :-0.9976                      
##  1st Qu.:-0.9813                      
##  Median :-0.8779                      
##  Mean   :-0.7564                      
##  3rd Qu.:-0.5831                      
##  Max.   : 0.1466                      
##  frequencyBodyBodyGyroscopeJerkMagStd
##  Min.   :-0.9976                     
##  1st Qu.:-0.9802                     
##  Median :-0.8941                     
##  Mean   :-0.7715                     
##  3rd Qu.:-0.6081                     
##  Max.   : 0.2878
```

## Save to file

Save data table objects to 2 tab-delimited text files called 
**tidy_project_data(large).txt** and 
**tidy_project_data(reduced).txt**

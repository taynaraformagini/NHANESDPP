//////NHANES  ANALYSIS - PREDIABETES, DIET PATTERNS AND PHYSICAL ACTIVITY PRACTICES AMONG LATINXS FITTING DIFFERENT PATTERNS OF ASSIMILATION ////////

*****FIRST STEP IS TO MERGE AND APPEND ALL DATASETS NEEDED FROM FOUR CYCLES (2011/2012, 2013/2014, 2015/2016, 2017/2018) + THE HEALTHY EATING INDEX-2015******


******** 2017/2018 *********

*importing datasets*
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DEMO_J.XPT", clear
sort seqn
save "DEMO_J.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DIQ_J.XPT", clear
sort seqn
save "DIABETES_J.DTA",replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/GHB_J.XPT", clear
sort seqn
save "HEMOGLOBIN_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/ACQ_J.XPT", clear
sort seqn
save "ACCULTURATION_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HSQ_J.XPT", clear
sort seqn
save "HEALTHSTATUS_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HIQ_J.XPT", clear
sort seqn
save "HEALTHINSURANCE_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/MCQ_J.XPT", clear
sort seqn
save "MEDICALCONDITIONS_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PAQ_J.XPT", clear
sort seqn
save "PHYSICALACTIVITY_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DBQ_J.XPT", clear
sort seqn
save "DIETBEHAVIOR_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/BMX_J.XPT", clear
sort seqn
save "BMI_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/HIQ_J.XPT", clear 
sort seqn
save "INSURANCE_J.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/DPQ_J.XPT", clear
sort seqn
save "DEPRESSION_J.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/OCQ_J.XPT", clear
sort seqn
save "OCUPATION_J.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/PFQ_J.XPT", clear
sort seqn
save "PHYSICAL_J.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2017-2018/RHQ_J.XPT", clear
sort seqn
save "REPRODUCTIVE_J.DTA",replace

*merging all datasets*
clear all
use "DEMO_J.DTA", clear
merge 1:1 seqn using "DIABETES_J.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_J.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_J.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_J.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_J.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_J.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_J.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_J.DTA"
drop  _merge
merge 1:1 seqn using "BMI_J.DTA"
drop  _merge
merge 1:1 seqn using "INSURANCE_J.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_J.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_J.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICAL_J.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_J.DTA"
drop  _merge

*saving as one merged dataset*
save nhanes2017.dta, replace


******* 2015/2016 **********

*importing datasets*
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DEMO_I.XPT", clear
sort seqn
save "DEMO_I.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DIQ_I.XPT", clear
sort seqn
save "DIABETES_I.DTA",replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/GHB_I.XPT", clear
sort seqn
save "HEMOGLOBIN_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/ACQ_I.XPT", clear
sort seqn
save "ACCULTURATION_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HSQ_I.XPT", clear
sort seqn
save "HEALTHSTATUS_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HIQ_I.XPT", clear
sort seqn
save "HEALTHINSURANCE_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/MCQ_I.XPT", clear
sort seqn
save "MEDICALCONDITIONS_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PAQ_I.XPT", clear
sort seqn
save "PHYSICALACTIVITY_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DBQ_I.XPT", clear
sort seqn
save "DIETBEHAVIOR_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/BMX_I.XPT", clear
sort seqn
save "BMI_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/HIQ_I.XPT", clear 
sort seqn
save "INSURANCE_I.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/DPQ_I.XPT", clear
sort seqn
save "DEPRESSION_I.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/OCQ_I.XPT", clear
sort seqn
save "OCUPATION_I.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/PFQ_I.XPT", clear
sort seqn
save "PHYSICAL_I.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2015-2016/RHQ_I.XPT", clear
sort seqn
save "REPRODUCTIVE_I.DTA",replace

*merging all datasets*
clear all
use "DEMO_I.DTA", clear
merge 1:1 seqn using "DIABETES_I.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_I.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_I.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_I.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_I.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_I.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_I.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_I.DTA"
drop  _merge
merge 1:1 seqn using "BMI_I.DTA"
drop  _merge
merge 1:1 seqn using "INSURANCE_I.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_I.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_I.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICAL_I.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_I.DTA"
drop  _merge

*saving as one merged dataset*
save nhanes2015.dta, replace


*********** 2013/2014 **********


*importing datasets*
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DEMO_H.XPT", clear
sort seqn
save "DEMO_H.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DIQ_H.XPT", clear
sort seqn
save "DIABETES_H.DTA",replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/GHB_H.XPT", clear
sort seqn
save "HEMOGLOBIN_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/ACQ_H.XPT", clear
sort seqn
save "ACCULTURATION_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HSQ_H.XPT", clear
sort seqn
save "HEALTHSTATUS_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HIQ_H.XPT", clear
sort seqn
save "HEALTHINSURANCE_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/MCQ_H.XPT", clear
sort seqn
save "MEDICALCONDITIONS_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PAQ_H.XPT", clear
sort seqn
save "PHYSICALACTIVITY_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DBQ_H.XPT", clear
sort seqn
save "DIETBEHAVIOR_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/BMX_H.XPT", clear
sort seqn
save "BMI_H.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/HIQ_H.XPT", clear 
sort seqn
save "INSURANCE_H.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/DPQ_H.XPT", clear
sort seqn
save "DEPRESSION_H.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/OCQ_H.XPT", clear
sort seqn
save "OCUPATION_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/PFQ_H.XPT", clear
sort seqn
save "PHYSICAL_H.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2013-2014/RHQ_H.XPT", clear
sort seqn
save "REPRODUCTIVE_H.DTA",replace



*merging all datasets*
clear all
use "DEMO_H.DTA", clear
merge 1:1 seqn using "DIABETES_H.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_H.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_H.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_H.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_H.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_H.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_H.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_H.DTA"
drop  _merge
merge 1:1 seqn using "BMI_H.DTA"
drop  _merge
merge 1:1 seqn using "INSURANCE_H.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_H.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_H.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICAL_H.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_H.DTA"
drop  _merge

*saving as one merged dataset*
save nhanes2013.dta, replace


********** 2011/2012 *******

*importing datasets*
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DEMO_G.XPT", clear
sort seqn
save "DEMO_G.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DIQ_G.XPT", clear
sort seqn
save "DIABETES_G.DTA",replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/GHB_G.XPT", clear
sort seqn
save "HEMOGLOBIN_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/ACQ_G.XPT", clear
sort seqn
save "ACCULTURATION_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HSQ_G.XPT", clear
sort seqn
save "HEALTHSTATUS_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HIQ_G.XPT", clear
sort seqn
save "HEALTHINSURANCE_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/MCQ_G.XPT", clear
sort seqn
save "MEDICALCONDITIONS_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PAQ_G.XPT", clear
sort seqn
save "PHYSICALACTIVITY_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DBQ_G.XPT", clear
sort seqn
save "DIETBEHAVIOR_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/BMX_G.XPT", clear
sort seqn
save "BMI_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/HIQ_G.XPT", clear 
sort seqn
save "INSURANCE_G.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/DPQ_G.XPT", clear
sort seqn
save "DEPRESSION_G.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/OCQ_G.XPT", clear
sort seqn
save "OCUPATION_G.DTA", replace 
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/PFQ_G.XPT", clear 
sort seqn 
save "PHYSICAL_G.DTA", replace
import sasxport "https://wwwn.cdc.gov/Nchs/Nhanes/2011-2012/RHQ_G.XPT", clear
sort seqn
save "REPRODUCTIVE_G.DTA",replace

*merging all datasets*
clear all
use "DEMO_G.DTA", clear
merge 1:1 seqn using "DIABETES_G.DTA"
drop  _merge
merge 1:1 seqn using "HEMOGLOBIN_G.DTA"
drop  _merge
merge 1:1 seqn using "ACCULTURATION_G.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHSTATUS_G.DTA"
drop  _merge
merge 1:1 seqn using "HEALTHINSURANCE_G.DTA"
drop  _merge
merge 1:1 seqn using "MEDICALCONDITIONS_G.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICALACTIVITY_G.DTA"
drop  _merge
merge 1:1 seqn using "DIETBEHAVIOR_G.DTA"
drop  _merge
merge 1:1 seqn using "BMI_G.DTA"
drop  _merge
merge 1:1 seqn using "INSURANCE_G.DTA"
drop  _merge
merge 1:1 seqn using "DEPRESSION_G.DTA"
drop  _merge
merge 1:1 seqn using "OCUPATION_G.DTA"
drop  _merge
merge 1:1 seqn using "PHYSICAL_G.DTA"
drop  _merge
merge 1:1 seqn using "REPRODUCTIVE_G.DTA"
drop  _merge

*saving as one merged dataset*
save nhanes2011.dta, replace

///////// APENDINGING ALL FOUR DATASETS INTO ONE)

use "nhanes2017.dta"

*append datasets together
append using "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanes2015.dta" "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanes2013.dta" "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanes2011.dta"


*saving as one merged dataset*
save nhanescombined0210.dta, replace

use nhanescombined0210.dta, clear
rename *, lower
set more off

/**** ALL THE STEPS BELOW WERE NEEDED TO CREATE ONE SINGLE DATASET WITH ALL THE QUESTIONNARIE VARIABLES NEEDED. STILL NEED TO ADD THE HEI-2015 OF ALL FOUR CYCLES.  THERE ARE SOME STEPS THAT NEEDS TO BE DONE 
USING SAS (I WILL ADD THE CODES IN A WORD DOCUMENT AND IN A .sas FORMAT. ONCE YOU HAVE ALL FOUR HEI CYCLES IN STATA (.DTA) FORMAT, USE THE CODE BELOW. ****/ 


*merging all 4 CYCLES (2011,2013,2015,2017)*
clear all
use "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\HEI test 1\savehere\hei2015R2011.dta", clear

append using "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\HEI test 1\2013\savehere\hei2015R2013.dta" "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\HEI test 1\2015\savehere\hei2015R2015.dta" "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\HEI test 1\2017\savehere\hei2015R2017.dta"


*saving as one dataset*
save "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\HEI test 1\heitogetherappendmerge.dta", replace

rename *, lower

clear all 

use "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanescombined0210.dta", clear

merge 1:1 seqn using "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\HEI test 1\heitogetherappendmerge.dta"


*SAVING AS THE FINAL DATASET*
save "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\TFNHANESDIABETES.dta", replace 



***** EVERY TIME YOU NEED TO USE THE DATASET YOU CAN START HERE:****************

use "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\TFNHANESDIABETES.dta", clear



**********CREATING VARIABLES ********

****Create variable RACES combining mexican with other hispanics
gen races =.
replace races = 1 if ( ridreth3 == 1 | ridreth3 == 2)
replace races = 2 if ( ridreth3 == 3)
replace races = 3 if ( ridreth3 == 4)
replace races =4 if ( ridreth3 == 6)
replace races =5 if ( ridreth3 == 7)

*Label variable race
label define races 1 "Hispanic" 2 "White" 3 "Black" 4 "Asian" 5 "Other"
label values races races


***Create variable AGE to exclude individuals younger than 18 years old
egen age = cut( ridageyr ), at(0,18,81)

label define age 0 "17less" 18 "18older" 
label values age age


***Create variable of main group of interest: Hispanic, 18 or older, that are not pregnant and do not have diabetes 
*first, no diabetes
gen diabetes =.
replace diabetes = 0 if (diq010 == 2  | diq010 == 3 | diq010 == 7 | diq010 == 9 | diq010 == .)
replace diabetes = 1 if (diq010 == 1) 

label define diabetes 0 "nodiabetic" 1 "diabetic"
label values diabetes diabetes

*second, not pregnant 
gen pregnant =.
replace pregnant = 0 if (rhd143 == 2 | rhd143 == 7 | rhd143 == 9 | rhd143 ==.)
replace pregnant = 1 if (rhd143 == 1)

label define pregnant 0 "notpregnant" 1 "pregnant" 
label values pregnant pregnant 


**Then, create the main variable**
gen latinos =.
replace latinos = 1 if (races ==1 & age ==18 & diabetes ==0 & pregnant ==0)


*INDEPENDENT VARIABLES - Create the sub-groups of Latinxs based on the segmented assimilation theory (OLD DEFINITION, WITH ONLY ENGLISH AS HIGH ACCULTURATIOL LEVEL)

*First, create a dichotomous variable for ACCULTURATION using language as a proxy -  
gen language =.
replace language = 1 if (acd040 == 5)
replace language = 2 if (acd040 == 1 | acd040 == 2 |acd040 == 3 |acd040 == 4)

label define language 1 "English" 2 "Spanish"
label values language language


***Using EDUCATION as a proxy for SES 

**Create a dichotomous variable for education - adults 18 and 19 years old
recode dmdeduc3 (77/99=.)
gen education1 =. 
replace education1 = 0 if (dmdeduc3 ==0 | dmdeduc3 ==1 |dmdeduc3 ==2 |dmdeduc3 ==3 |dmdeduc3 ==4 |dmdeduc3 == 5 |dmdeduc3 ==6 |dmdeduc3 ==7 |dmdeduc3 ==8 |dmdeduc3 ==9 |dmdeduc3 ==10 |dmdeduc3 ==11 |dmdeduc3 ==12 |dmdeduc3 ==55 |dmdeduc3 ==66)
replace education1 = 1 if (dmdeduc3 ==13 | dmdeduc3 ==14 | dmdeduc3 ==15)

*Create a dichotomous variable for education - adults 20 or older

recode dmdeduc2 (7/9=.)
gen education2 =.
replace education2 = 0 if( dmdeduc2 == 1 | dmdeduc2 == 2)
replace education2 = 1 if( dmdeduc2 == 3 | dmdeduc2 == 4 | dmdeduc2 == 5)

*Combine both education1 and education2 into one single education variable* - 2 groups: less than high school + high school or more
gen education =.
replace education = 0 if (education1 ==0 | education2 ==0)
replace education = 1 if (education1 ==1 | education2 ==1)

label define education 0 "lesshigh" 1 "highschool"
label values education education


***ALTERNATIVELY, CREATE VARIABLE EDUCATIONH as a proxy for SES  = BUT CREATING 2 GROUPS: HIGH SCHOOL GRADUATE OR LESS + MORE THAN HIGH SCHOOL

**Create a dichotomous variable for education - adults 18 and 19 years old

gen education10 =. 
replace education10 = 0 if (dmdeduc3 ==0 | dmdeduc3 ==1 |dmdeduc3 ==2 |dmdeduc3 ==3 |dmdeduc3 ==4 |dmdeduc3 == 5 |dmdeduc3 ==6 |dmdeduc3 ==7 |dmdeduc3 ==8 |dmdeduc3 ==9 |dmdeduc3 ==10 |dmdeduc3 ==11 |dmdeduc3 ==12 | dmdeduc3 ==13 | dmdeduc3 ==14 | dmdeduc3 ==15 | dmdeduc3 ==55 |dmdeduc3 ==66)


*Create a dichotomous variable for education - adults 20 or older

gen education20 =.
replace education20 = 0 if(dmdeduc2 == 1 | dmdeduc2 == 2 | dmdeduc2 == 3)
replace education20 = 1 if(dmdeduc2 == 4 | dmdeduc2 == 5)

*Combine both education1 and education2 into one single education variable*
gen educationh =.
replace educationh = 0 if (education10 ==0 | education20 ==0)
replace educationh = 1 if (education20 ==1)

label define educationh 0 "lesshigh" 1 "highschool"
label values educationh educationh



*Patterns of assimilation among latinos - EDUCATION AND LANGUAGE 
gen pattern =.
replace pattern = 1 if (latinos ==1 & language == 1 & education == 1)
replace pattern = 2 if (latinos ==1 & language == 2 & education == 0)
replace pattern = 3 if (latinos ==1 & language == 2 & education == 1)
replace pattern = 4 if (latinos ==1 & language == 1 & education == 0)


***Using FEDERAL POVERTY LEVEL as a proxy for SES 
*Create a categorical variable from the nuemrical variable INDFMPIR (poverty-income ratio) to separate 130% of the FPL to more than 130%
egen fpl = cut(indfmpir), at(0,1.4,5.1)

*multiplying fpl by 10 to have a variable with integer numbers"
gen fpl2 = (fpl)*10


*label variable federal poverty level   
label define fpl2 0 "<=130%" 14 ">130%"
label values fpl2 fpl2 


*patterns of assimilation among latino adults - FPL AND LANGUAGE
gen pattern2 =.
replace pattern2 = 1 if (latinos ==1 & language == 1 & fpl2 == 14)
replace pattern2 = 2 if (latinos ==1 & language == 2 & fpl2 == 0)
replace pattern2 = 3 if (latinos ==1 & language == 2 & fpl2 == 14)
replace pattern2 = 4 if (latinos ==1 & language == 1 & fpl2 == 0)


******* CREATING DIFFERENT PATTERNS OF ASSIMILATION CONSIDERING LANGUAGE AT HOME AS A PROXY FOR AS LOW, MIDDLE AND HIGH ACCULTURATION  *****

*create a variable for ACCULTURATION using language as a proxy BUT classyfing language at home as 3 levels of acculturations  - HERE WE CONSIDER SELECTIVE ACCUTLURATION ONLY INDIVIDUALS WHO SPEAK ENGLISH AND SPANISH EQUALLY
gen language3 =.
replace language3 = 1 if (acd040 == 1 | acd040 == 2)
replace language3 = 2 if (acd040 == 3)
replace language3 = 3 if (acd040 == 4 | acd040 == 5)


label define language3 1 "low" 2 "middle" 3 "high"
label values language3 language3

*Patterns of assimilation among latinos - EDUCATION AND LANGUAGE 
gen pattern6 =.

replace pattern6 = 1 if (latinos ==1 & language3 == 1 & education == 1)
replace pattern6 = 2 if (latinos ==1 & language3 == 2 & education == 1)
replace pattern6 = 3 if (latinos ==1 & language3 == 3 & education == 1)
replace pattern6 = 4 if (latinos ==1 & language3 == 1 & education == 0)
replace pattern6 = 5 if (latinos ==1 & language3 == 2 & education == 0)
replace pattern6 = 6 if (latinos ==1 & language3 == 3 & education == 0)


*create a variable for ACCULTURATION using language as a proxy BUT classyfing language at home as 3 levels of acculturations  - HERE WE CONSIDER SELECTIVE ACCUTLURATION AS INDIVIDUALS WHO SPEAK ENGLISH AND SPANISH NO MATTER WHICH ONE THEY SPEAK THE MOST - THIS IS THE ONE USED IN THE FINAL ANALYSIS 
gen language4 =.
replace language4 = 1 if (acd040 == 1)
replace language4 = 2 if (acd040 == 2 | acd040 == 3 | acd040 == 4 )
replace language4 = 3 if (acd040 == 5)


label define language4 1 "low" 2 "middle" 3 "high"
label values language4 language4

*Patterns of assimilation among latinos - EDUCATION AND LANGUAGE 
gen pattern63 =.
replace pattern63 = 1 if (latinos ==1 & language4 == 1 & education == 1)
replace pattern63 = 2 if (latinos ==1 & language4 == 2 & education == 1)
replace pattern63 = 3 if (latinos ==1 & language4 == 3 & education == 1)
replace pattern63 = 4 if (latinos ==1 & language4 == 1 & education == 0)
replace pattern63 = 5 if (latinos ==1 & language4 == 2 & education == 0)
replace pattern63 = 6 if (latinos ==1 & language4 == 3 & education == 0)


****** i will now use the same groups but replacing education by the FPL to see the frequency in each group. Will do for both options, pattern 6 and pattern 63


*Patterns of assimilation among latinos - FP AND LANGUAGE 
gen fplpattern6 =.
replace fplpattern6 = 1 if (latinos ==1 & language3 == 1 & fpl2 == 14)
replace fplpattern6 = 2 if (latinos ==1 & language3 == 2 & fpl2 == 14)
replace fplpattern6 = 3 if (latinos ==1 & language3 == 3 & fpl2 == 14)
replace fplpattern6 = 4 if (latinos ==1 & language3 == 1 & fpl2 == 0)
replace fplpattern6 = 5 if (latinos ==1 & language3 == 2 & fpl2 == 0)
replace fplpattern6 = 6 if (latinos ==1 & language3 == 3 & fpl2 == 0)



*Patterns of assimilation among latinos - EDUCATION AND LANGUAGE 
gen fplpattern63 =.
replace fplpattern63 = 1 if (latinos ==1 & language4 == 1 & fpl2 == 14)
replace fplpattern63 = 2 if (latinos ==1 & language4 == 2 & fpl2 == 14)
replace fplpattern63 = 3 if (latinos ==1 & language4 == 3 & fpl2 == 14)
replace fplpattern63 = 4 if (latinos ==1 & language4 == 1 & fpl2 == 0)
replace fplpattern63 = 5 if (latinos ==1 & language4 == 2 & fpl2 == 0)
replace fplpattern63 = 6 if (latinos ==1 & language4 == 3 & fpl2 == 0)



*********************OUTCOME VARIABLES **********************

*** PHYSICAL ACTIVITY ***

*Create categorical variable PA to assess if participants engaged in any PA at all in a typical week

*exclude refused and don't know (7,9) 
mvdecode paq605, mv(7,9)
mvdecode paq620, mv(7,9)
mvdecode paq650, mv(7,9)
mvdecode paq665, mv(7,9)
mvdecode paq635, mv(7,9)

gen anypa =.
replace anypa = 1 if (paq605 ==1 | paq620 ==1 | paq635 ==1 | paq650 ==1 | paq665 ==1)
replace anypa = 0 if(anypa == .)


*Create categorical variable PA to access if participants engaged in MODERATE PA at all in a typical week
gen anymoderatepa =.
replace anymoderatepa = 1 if (paq620 ==1 | paq635 ==1 |paq665 ==1)
replace anymoderatepa = 0 if(anymoderatepa == .)


*Create categorical variable PA to access if participants engaged in VIGOROUS PA at all in a typical week
gen anyvigorouspa =.
replace anyvigorouspa = 1 if (paq605 ==1 | paq650 ==1)
replace anyvigorouspa = 0 if(anyvigorouspa == .)



*Exclude the refused and don't know data from days of PA and minutes of PA (77,99, 7777 and 9999)
mvdecode paq610, mv(77,99)
mvdecode paq625, mv(77,99)
mvdecode paq640, mv(77,99)
mvdecode paq655, mv(77,99)
mvdecode paq670, mv(77,99)

mvdecode pad630, mv(7777,9999)
mvdecode pad645, mv(7777,9999)
mvdecode pad675, mv(7777,9999)
mvdecode pad615, mv(7777,9999)
mvdecode pad660, mv(7777,9999)


*Percentage of respondents not meeting WHO recommendations on physical activity for health (respondents doing less than 150 minutes of moderateintensity physical activity per week, or equivalent).
*Check METs (methabolic equivalents) to understand the multiplication by 4 and 8 in each equation.

* Create variables multplying how many days in a typical week perform physical activity * minutes in a typical day * MET
gen pa1t3 = (paq610*pad615*8)
gen pa4t6 = (paq625*pad630*4)
gen pa7t9 = (paq640*pad645*4)
gen pa10t12 = (paq655*pad660*8)
gen pa13t15 = (paq670*pad675*4)

*Sums the rows of each of the 5 types of physical activity
egen patotal =rowtotal (pa1t3 pa4t6 pa7t9 pa10t12 pa13t15)

*Create a dychomotous variable so see if individuals meet at least 600 MET value for total physical acitivty 
*Meaning (≥ 600 MET adjusted minutes)
gen pa150 =.
replace pa150 = 0 if (patotal <600)
replace pa150 = 1 if (patotal >=600)

label define pa150 0 "<600" 1 ">=600"
label values pa150 pa150


*total work related PA - Sums the rows of each of the 2 types of physical activity
egen pawork =rowtotal (pa1t3 pa4t6)

gen pawork150 =.
replace pawork150 = 0 if (pawork <600)
replace pawork150 = 1 if (pawork >=600)

*total transportationrelated PA- Sums the rows of each of the 1 types of physical activity
egen patrans =rowtotal (pa7t9)

gen patrans150 =.
replace patrans150 = 0 if (patrans <600)
replace patrans150 = 1 if (patrans >=600)

*Sums the rows of each of the 5 types of physical activity
egen parecrea =rowtotal (pa10t12 pa13t15)

gen parecrea150 =.
replace parecrea150 = 0 if (parecrea <600)
replace parecrea150 = 1 if (parecrea >=600)


********** DIET QUALITY *************
***HEI-2015: already defined using SAS (hei2015_total_score)

** HEI-2015 dichotomous categorical variable higher diet quality vs. lower diet quality (using 59 points as the cut-off since it's the mean diet score of the US population)

gen hei2015=.
replace hei2015 = 0 if (hei2015_total_score <= 58.3)
replace hei2015 = 1 if (hei2015_total_score > 58.3)

*how healthy your diet is - recategorized into a dichomotous variable good (excellent, very good, good) and poor (fair, poor)

gen healthydiet =.
replace healthydiet = 0 if (dbq700 ==4 | dbq700 ==5)
replace healthydiet = 1 if (dbq700 ==1 | dbq700 ==2 | dbq700 ==3)


**** treating variables related to eating food at home, fast food etc.
*created "copy variables" to later exclude missing values 
gen mealshome = dbd895
gen fastfood = dbd900
gen frozen = dbd910

*excluding missing values
mvdecode mealshome, mv(5555,7777,9999)
mvdecode fastfood, mv(5555,7777,9999)
mvdecode frozen, mv(6666,7777,9999)




***PREDIABETES STATUS

**Awareness of prediabetes: already defined by nhanes (diq160)
*Exclude refused and don't know
mvdecode diq160, mv(7,9)

gen diq160copy =.
replace diq160copy = 0 if (diq160 ==2)
replace diq160copy = 1 if (diq160 ==1)



****Prediabetes diagnosis creiterion (Glycohemoglobin HbA1c (laboratory data))Create variable for PLASMA based on prediabetes and diabetes criteria)
*gen plasma =.
*replace plasma = 1 if (lbxgh == 3.8 | lbxgh == 4.1 |  lbxgh == 4.2 |  lbxgh == 4.3 |  lbxgh == 4.4 | lbxgh == 4.5 | lbxgh == 4.6 | lbxgh == 4.7 | lbxgh == 4.8 | lbxgh == 4.9 | lbxgh == 5 | lbxgh == 5.1 | lbxgh == 5.2 | lbxgh == 5.3 | lbxgh == 5.4 |lbxgh == 5.5 |lbxgh == 5.6)
*replace plasma = 2 if (lbxgh == 5.7 | lbxgh == 5.8 |  lbxgh == 5.9 |  lbxgh == 6 |  lbxgh == 6.1 | lbxgh == 6.2 | lbxgh == 6.3 | lbxgh == 6.4)
*replace plasma = 3 if (lbxgh == 6.5 | lbxgh == 6.6 |  lbxgh == 6.7 |  lbxgh == 6.8 |  lbxgh == 6.9 | lbxgh == 7 | lbxgh == 7.1 | lbxgh == 7.2 | lbxgh == 7.3 | lbxgh == 7.4 | lbxgh == 7.5 | lbxgh == 7.6 | lbxgh == 7.7 | lbxgh == 7.8 | lbxgh == 7.9 |lbxgh == 8 |lbxgh == 8.1 |lbxgh == 8.2 |lbxgh == 8.3 |lbxgh == 8.4 |lbxgh == 8.5 |lbxgh == 8.6 |lbxgh == 8.7 |lbxgh == 8.8 |lbxgh == 8.9| lbxgh == 9 | lbxgh == 9.1 | lbxgh == 9.2 | lbxgh == 9.3 | lbxgh == 9.4 | lbxgh == 9.5 | lbxgh == 9.6 | lbxgh == 9.7 |lbxgh == 9.8 |lbxgh == 9.9 | lbxgh == 10 | lbxgh == 10.1 |lbxgh == 10.2 |lbxgh == 10.3 |lbxgh == 10.4 |lbxgh == 10.5 |lbxgh == 10.6 |lbxgh == 10.7 |lbxgh == 10.8 |lbxgh == 10.9 |lbxgh == 11| lbxgh == 11.1 |lbxgh == 11.3 |lbxgh == 11.4 | lbxgh == 11.5 |lbxgh == 11.6 |lbxgh == 11.7| lbxgh == 11.8 | lbxgh == 12 |lbxgh == 12.1 |lbxgh == 12.2 |lbxgh == 12.4 |lbxgh == 12.7 | lbxgh == 12.8 |lbxgh == 13.1|lbxgh == 13.2 | lbxgh == 13.3 |lbxgh == 13.5 |lbxgh == 13.7 | lbxgh == 13.9 |lbxgh == 14.2 |lbxgh == 14.3 |lbxgh == 15.2 |lbxgh == 16.2)

*lable plasma variable*
*label define plasma 1 "normal" 2 "prediabetes" 3 "diabetes"
*label values plasma plasma

*Found an easier (and likely more accurate) way of cutting the numerical variable for HbA1c into groups
egen a1 = cut (lbxgh), at (3.5,5.7,6.5,17.8)

gen a1c = (a1)*10
label define a1c 35 "normal" 57 "prediabetes" 65 "diabetes"
label values a1c a1c


gen a1cprediabetes=.
replace a1cprediabetes = 0 if (a1c ==35 | a1c == 65)
replace a1cprediabetes =1 if (a1c == 57)

*Awareness of prediabetes among pattern 
gen aware =.
replace aware = 1 if (pattern63 ==1 & diq160 ==1)
replace aware = 2 if (pattern63 ==2 & diq160 ==1)
replace aware = 3 if (pattern63 ==3 & diq160 ==1)
replace aware = 4 if (pattern63 ==4 & diq160 ==1)
replace aware = 5 if (pattern63 ==5 & diq160 ==1)
replace aware = 6 if (pattern63 ==6 & diq160 ==1)

**aware of the sub-groups of Latinxs  flipped to the "right order"
gen aware2 =.
replace aware2 = 1 if (pattern63g ==1 & diq160 ==1)
replace aware2 = 2 if (pattern63g ==2 & diq160 ==1)
replace aware2 = 3 if (pattern63g ==3 & diq160 ==1)
replace aware2 = 4 if (pattern63g ==4 & diq160 ==1)
replace aware2 = 5 if (pattern63g ==5 & diq160 ==1)
replace aware2 = 6 if (pattern63g ==6 & diq160 ==1)


*Increasing physical activity and decreasing calories/fat in diet:

*First, need to combine variables mcq371b (from 2017 cycle) and mcq370b (from 2011,2013,2015 cycles) into one single variable (are you now increasing exercise)

gen mcq37b =.
replace mcq37b = 1 if (mcq371b == 1 | mcq370b ==1)
replace mcq37b = 2 if (mcq371b == 2 | mcq370b ==2)

gen mcq37bcopy =.
replace mcq37bcopy = 1 if (mcq37b == 1)
replace mcq37bcopy = 0 if (mcq37b == 2)


*Same with variables mcq371d (from 2017 cycle) and mcq370d (from 2011,2013,2015 cycles) into one single variable (are you now reducing sfat in diet)

gen mcq37d =.
replace mcq37d = 1 if (mcq371d == 1 | mcq370d ==1)
replace mcq37d = 2 if (mcq371d == 2 | mcq370d ==2)

gen mcq37dcopy =.
replace mcq37dcopy = 1 if (mcq37d == 1)
replace mcq37dcopy = 0 if (mcq37d == 2)



***COVARIATES 

**Demographic variables 

*GENDER (given by NHANES)

*create variables AGE GROUPS
*option 1 (younger adults, middle-aged, older adults)
egen agegroup1 = cut( ridageyr ), at(18,40,60,81)

*option 2 (cut off as the National Diabetes Report 2020 does: 18-44, 45-64, >=65)
egen agegroup2 = cut ( ridageyr ), at(18,45,65,81)

*option 3: Age group recommended by NHANES for estimates by age and Hispanic origin to reduce variability in the sample weights.
egen agegroup3 = cut ( ridageyr ), at(18,20,40,60,81)

*option 34: Age group to separate younger to older adults and have a cutoff of 65 or older to mirror Medicare eligibility
egen agegroup4 = cut ( ridageyr ), at(18,30,50,65,81)


*Marrital status - create a variable to include 77 and 99 as unknowns
gen marrital =.
replace marrital =1 if (dmdmartl==1)
replace marrital =2 if (dmdmartl==2)
replace marrital =3 if (dmdmartl==3)
replace marrital =4 if (dmdmartl==4)
replace marrital =5 if (dmdmartl==5)
replace marrital =6 if (dmdmartl==6)
replace marrital =7 if (dmdmartl==77 |dmdmartl==99)


*Country of birth (given by NHANES) - create a variable to include 77 and 99 as unknowns
gen country =.
replace country = 1 if (dmdborn4 ==1)
replace country = 2 if (dmdborn4 ==2 |dmdborn4 ==77 |dmdborn4 ==99)


*Length of time in the U.S. (given by NHANES) - create a variable to include 77 and 99 as unknowns
gen length =.
replace length = 1 if (dmdyrsus ==1)
replace length = 2 if (dmdyrsus ==2)
replace length = 3 if (dmdyrsus ==3)
replace length = 4 if (dmdyrsus ==4)
replace length = 5 if (dmdyrsus ==5)
replace length = 6 if (dmdyrsus ==6)
replace length = 7 if (dmdyrsus ==7)
replace length = 8 if (dmdyrsus ==8)
replace length = 9 if (dmdyrsus ==9)
replace length = 10 if (dmdyrsus ==77 |dmdyrsus ==99)

*Created another varibles for Length of time in the U.S.but now dichotomizing as <10 years OR >= 10 years
gen length2 =.
replace length2 = 1 if (dmdyrsus ==1 | dmdyrsus ==2| dmdyrsus ==3)
replace length2 = 2 if (dmdyrsus ==4 | dmdyrsus ==5| dmdyrsus ==6 | dmdyrsus ==7| dmdyrsus ==8 | dmdyrsus ==9)



*Household composition: children or no children ; create variable CHILDREN
gen children =.
replace children = 0 if (dmdhhsza==0 & dmdhhszb ==0)
replace children = 1 if (dmdhhsza==1 |dmdhhsza==2 | dmdhhsza==3 | dmdhhszb ==1 |dmdhhszb ==2  | dmdhhszb ==3  |dmdhhszb ==4)

label define children 0 "no children" 1 "children"
label values children children

*Labor Force : create a variable to classify participants into working vs. not working - WORK
gen work =.
replace work = 1 if (ocd150 == 2 |ocd150 == 3 | ocd150 == 4)
replace work = 2 if (ocd150 == 1)
replace work = 3 if (ocd150 == 7 | ocd150 == 9)

*Create variable hours worked
recode ocq180 (77777/99999 =.)
egen workhours = cut (ocq180), at (1,31,134)

label define workhours 1 "part-time" 31 "full-time"
label values workhours workhours


**Health-related variables

*create a variable HEALTH STATUS good health condition based on hsd010
gen health =.
replace health = 1 if (hsd010 == 1 | hsd010 == 2 | hsd010 == 3)
replace health = 2 if (hsd010 == 4)
replace health = 3 if (hsd010 == 5)
replace health = 4 if (hsd010 == 7 |hsd010 == 9)

label define health 1 "good" 2 "fair" 3 "poor" 4 "unkown"
label values health health


*Insurance (given by NHANES) - create a variable to include 7 and 9s
gen insurance =.
replace insurance = 1 if (hiq011 ==1)
replace insurance = 2 if (hiq011 ==2)
replace insurance = 3 if (hiq011 ==7 |hiq011 ==9)



*Depression (PHQ-2) - Create variable DEPRESSION (should have 16 combinations)
gen depression =.
replace depression = 0 if (dpq010 == 0  & dpq020 == 0 | dpq010 == 0  & dpq020 == 1 | dpq010 == 0  & dpq020 == 2 | dpq010 == 1  & dpq020 == 0 | dpq010 == 1  & dpq020 == 1 |dpq010 == 2  & dpq020 == 0)
replace depression = 1 if (dpq010 == 0  & dpq020 == 3 | dpq010 == 1  & dpq020 == 2 | dpq010 == 1  & dpq020 == 3 | dpq010 == 2  & dpq020 == 1 | dpq010 == 2  & dpq020 == 2 | dpq010 == 2  & dpq020 == 3 | dpq010 == 3  & dpq020 == 0 | dpq010 == 3  & dpq020 == 1 | dpq010 == 3  & dpq020 == 2 | dpq010 == 3  & dpq020 == 3)

label define depression 0 "negative" 1 "positive" 
label values depression depression 


* Create Binary Depression variable using PHQ-9 (used NHANES example of code)
recode dpq* (7/9 = .)
gen phq9 = dpq010+dpq020+dpq030+dpq040+dpq050+dpq060+dpq070+dpq080+dpq090
recode phq9 (0/9 = 0) (10/27= 1), generate(depressionindicator)

*Disability - given by NHANES - create a variable to include 7 and 9s
gen disability =.
replace disability = 1 if (pfq059  ==1)
replace disability = 2 if (pfq059  ==2)
replace disability = 3 if (pfq059  ==7 |pfq059  ==9)



*Generate variable OBESEBMI according to BMI"
egen obesebmi = cut( bmxbmi ), at(11.5,18.5,25,30,40,87)

*multiply by 2 to have integer numbers
gen bmi = (obesebmi)*2

*label variable bmi 
label define bmi 23 "underweight" 37 "normal" 50 "overweight" 60 "obese" 80 "extreme"
label values bmi bmi




************************* APPLY WEIGHTS *******************************

** Note: using the MEC Exam Weights (WTMEC2YR), per the analytic notes
* Used website https://stats.idre.ucla.edu/stata/seminars/applied-svy-stata13/ for explanation of how to apply the sample weights
** Divide weight by 4 because I am appending 4 survey cycles (2011, 2013, 2015, 2017)

gen wtmec8yr = wtmec2yr / 4
svyset sdmvpsu [w=wtmec8yr], psu(sdmvpsu) strata(sdmvstra) vce(linearized) singleunit(missing)

** Some calculations of SE and CI were not possible due to some stratum with single sampling unit. Therefore, strata with single sampling unuts were centeres at overall mean.

svyset sdmvpsu [w=wtmec8yr], psu(sdmvpsu) strata(sdmvstra) vce(linearized) singleunit(centered)


*Note: if wanting to clear the current set use "svyset, clear"

*Alternatively, use the SURVEY weights (wtint2yr)
gen wtint4yr = wtint2yr / 4
svyset sdmvpsu [w=wtint4yr], psu(sdmvpsu) strata(sdmvstra) vce(linearized) singleunit(missing)





************************* DATA ANALYSIS *******************************

************DESCRIPTIVE STATISTICS ******************

**Sample size
tab pattern
svy: tab pattern, chi2

*to add confidence intervals
proportion pattern
svy: proportion pattern

*to have counts
svy: tab pattern, count

*six groups 
tab pattern63
svy: tab pattern63, chi2

*to add confidence intervals
proportion pattern63
svy: proportion pattern63

*to have counts
svy: tab pattern3, count

***Demographic and health-related characteristics  (unweighted)

tab pattern, sum (ridageyr)
tab pattern riagendr
tab pattern country,row
tab pattern fpl2,row
tab pattern work,row
tab pattern insurance,row
tab pattern health,row
tab pattern, sum (bmxbmi)
tab pattern depressionindicator
tab pattern disability

mean ridageyr , over(pattern)
proportion riagendr, over(pattern)
proportion country, over(pattern)
proportion fpl2, over(pattern)
proportion work, over(pattern)
proportion insurance, over(pattern)
proportion health, over(pattern)
mean bmxbmi , over(pattern)
proportion depressionindicator, over(pattern)
proportion disability, over(pattern)


***Demographic and health-related characteristics  (unweighted) - PATTERN63

tab pattern63, sum (ridageyr)
oneway ridageyr pattern63, tabulate
tab pattern63 riagendr, row chi
tab pattern63 marrital, row chi 
tab pattern63 country,row chi
tab pattern63 length,row chi
tab pattern63 length2,row chi
tab pattern63 children,row chi
tab pattern63 work,row chi
tab pattern63 workhours,row chi
tab pattern63 fpl2,row chi
tab pattern63 insurance,row chi
tab pattern63 health,row chi
tab pattern63 depressionindicator, row chi
tab pattern63 disability, row chi
tab pattern63, sum (bmxbmi)
oneway bmxbmi pattern63, tabulate


***Demographic and health-related characteristics  (weighted) - this also calculates the chi-square


svy: tab pattern63 riagendr,row
svy: proportion riagendr, over(pattern63)

svy: tab pattern63 marrital, row
svy: proportion marrital, over(pattern63)

svy: tab pattern63 country,row
svy: proportion country, over(pattern63)

svy: tab pattern63 length,row 
svy: proportion length, over(pattern63)

svy: tab pattern63 length2,row 
svy: proportion length2, over(pattern63)

svy: tab pattern63 children,row 
svy: proportion children, over(pattern63)

svy: tab pattern63 work,row
svy: proportion work, over(pattern63)

svy: tab pattern63 workhours,row
svy: proportion workhours, over(pattern63)

svy: tab pattern63 fpl2,row
svy: proportion fpl2, over(pattern63)

svy: tab pattern63 insurance,row
svy: proportion insurance, over(pattern63)

svy: tab pattern63 health,row
svy: proportion health, over(pattern63)

svy: tab pattern63 depressionindicator,row
svy: proportion depressionindicator, over(pattern63)

svy: tab pattern63 disability,row
svy: proportion disability, over(pattern63)


*Use regress to perform ANOVA test with the two numerical variables - ANOVA WAS RECASTED AS REGRESSION
svy: mean ridageyr , over(pattern63)
svy: regress ridageyr i.pattern63
svy: mean bmxbmi , over(pattern63)
svy: regress bmxbmi i.pattern63


***************** DIET QUALITY TOTAL HEI-2015 SCORE *******************
*HEi total score by each pattern of assimilation*
*unweighted + anova (p-value)
tab pattern63, sum(hei2015_total_score)
mean hei2015_total_score , over(pattern63)
oneway hei2015_total_score pattern63, tabulate


*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean hei2015_total_score , over(pattern63)
svy: regress hei2015_total_score i.pattern63

******** PERCEPTION OF HEALTHY DIET
*unweighted
tab pattern63 healthydiet,row chi
proportion healthydiet, over(pattern63)
*weighted
svy: tab pattern63 healthydiet,row
svy: proportion healthydiet, over(pattern63)

*meals not at home
*unweighted + anova (p-value)
tab pattern63, sum(mealshome)
mean mealshome , over(pattern63)
oneway mealshome pattern63, tabulate

*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean mealshome , over(pattern63)
svy: regress mealshome i.pattern63


*meals from fast food
tab pattern63, sum(fastfood)
mean fastfood , over(pattern63)
oneway fastfood pattern63, tabulate

*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean fastfood , over(pattern63)
svy: regress fastfood i.pattern63

*frozen meals
tab pattern63, sum(frozen)
mean frozen , over(pattern63)
oneway frozen pattern63, tabulate

*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean frozen , over(pattern63)
svy: regress frozen i.pattern63


******************PHYSICAL ACTIVITY *********************

*** % PERFORMING ANY PA, ANY MODERATE PA, OR ANY VIGOROUS PA
*unweighted
tab pattern63 anypa,row chi
proportion anypa, over(pattern63)
*weighted
svy: tab pattern63 anypa,row
svy: proportion anypa, over(pattern63)

*unweighted
tab pattern63 anymoderatepa,row chi
proportion anymoderatepa, over(pattern63)
*weighted
svy: tab pattern63 anymoderatepa,row
svy: proportion anymoderatepa, over(pattern63)

*unweighted
tab pattern63 anyvigorouspa,row chi
proportion anyvigorouspa, over(pattern63)
*weighted
svy: tab pattern63 anyvigorouspa,row
svy: proportion anyvigorouspa, over(pattern63)

********** % of participants achieving guideliness *******
**** % of participants achieving guideliness for WORK PA 
*unweighted
tab pattern63 pawork150,row chi
proportion pawork150, over(pattern63)
*weighted
svy: tab pattern63 pawork150,row
svy: proportion pawork150, over(pattern63)

**** % of participants achieving guideliness for TRANSPORTATION PA 
*unweighted
tab pattern63 patrans150,row chi
proportion patrans150, over(pattern63)
*weighted
svy: tab pattern63 patrans150,row
svy: proportion patrans150, over(pattern63)

**** % of participants achieving guideliness for RECREATIONAL PA 
*unweighted
tab pattern63 parecrea150,row chi
proportion parecrea150, over(pattern63)
*weighted
svy: tab pattern63 parecrea150,row
svy: proportion parecrea150, over(pattern63)


**** % of participants achieving guideliness for TOTAL PA 
*unweighted
tab pattern63 pa150,row chi
proportion pa150, over(pattern63)
*weighted
svy: tab pattern63 pa150,row
svy: proportion pa150, over(pattern63)




******************* PREDIABETES ****************************
****unweighted
*Prediabetes diagnosis

tab pattern63 diq160,row chi
proportion diq160, over(pattern63)

*prediabetes measured by the A1c level 
tab pattern63 a1c,row chi
proportion a1c, over(pattern63)


*weighted
*prediabete diagnosis
svy: tab pattern63 diq160,row
svy: proportion diq160, over(pattern63)

*prediabetes measured by the A1c level
svy: tab pattern63 a1c,row
svy: proportion a1c, over(pattern63)

** GAP BETWEEN HAVING PREDIABETES AND KNOWING ABOUT IT

**Created a variable that includes individuals from each pattern that have prediabets measured by the A1c level to determine the % of those that were aware of their diagnosis

gen a1cby63 =.
replace a1cby63 = 1 if (pattern63 ==1 & a1c ==57)
replace a1cby63 = 2 if (pattern63 ==2 & a1c ==57)
replace a1cby63 = 3 if (pattern63 ==3 & a1c ==57)
replace a1cby63 = 4 if (pattern63 ==4 & a1c ==57)
replace a1cby63 = 5 if (pattern63 ==5 & a1c ==57)
replace a1cby63 = 6 if (pattern63 ==6 & a1c ==57)

*Then, I calculated the n and % of awareness in each group
**unweighted
tab a1cby63 diq160,row chi
proportion diq160, over(a1cby63)

*weighted
svy: tab a1cby63 diq160,row
svy: proportion diq160, over(a1cby63)






***************Among indiviudals aware of the prediabetes diagnosis(AWARE)*******

*six groups 
tab aware
svy: tab aware

*to add confidence intervals
svy: proportion aware

*to have counts
svy: tab aware, count


*************DIET QUALITY
*HEI-2015

tab aware, sum(hei2015_total_score)
mean hei2015_total_score , over(aware)
oneway hei2015_total_score aware, tabulate


*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean hei2015_total_score , over(aware)
svy: regress hei2015_total_score i.aware

******** PERCEPTION OF HEALTHY DIET
*unweighted
tab aware healthydiet,row chi
proportion healthydiet, over(aware)
*weighted
svy: tab aware healthydiet,row
svy: proportion healthydiet, over(aware)

*meals not at home
*unweighted + anova (p-value)
tab aware, sum(mealshome)
mean mealshome , over(aware)
oneway mealshome aware, tabulate

*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean mealshome , over(aware)
svy: regress mealshome i.aware


*meals from fast food
tab aware, sum(fastfood)
mean fastfood , over(aware)
oneway fastfood aware, tabulate

*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean fastfood , over(aware)
svy: regress fastfood i.aware

*frozen meals
tab aware, sum(frozen)
mean frozen , over(aware)
oneway frozen aware, tabulate

*weighted and ANOVA - - ANOVA WAS RECAST AS REGRESSION
svy: mean frozen , over(aware)
svy: regress frozen i.aware


**decreasing fat and calories in DIET
*unweighted
tab aware mcq37d,row chi
proportion mcq37d, over(aware)
*weighted
svy: tab aware mcq37d,row
svy: proportion mcq37d, over(aware)


*PHYSICAL ACTIVITY


*** % PERFORMING ANY PA, ANY MODERATE PA, OR ANY VIGOROUS PA
*unweighted
tab aware anypa,row chi
proportion anypa, over(aware)
*weighted
svy: tab aware anypa,row
svy: proportion anypa, over(aware)

*unweighted
tab aware anymoderatepa,row chi
proportion anymoderatepa, over(aware)
*weighted
svy: tab aware anymoderatepa,row
svy: proportion anymoderatepa, over(aware)

*unweighted
tab aware anyvigorouspa,row chi
proportion anyvigorouspa, over(aware)
*weighted
svy: tab aware anyvigorouspa,row
svy: proportion anyvigorouspa, over(aware)

********** % of participants achieving guideliness *******
**** % of participants achieving guideliness for WORK PA 
*unweighted
tab aware pawork150,row chi
proportion pawork150, over(aware)
*weighted
svy: tab aware pawork150,row
svy: proportion pawork150, over(aware)

**** % of participants achieving guideliness for TRANSPORTATION PA 
*unweighted
tab aware patrans150,row chi
proportion patrans150, over(aware)
*weighted
svy: tab aware patrans150,row
svy: proportion patrans150, over(aware)

**** % of participants achieving guideliness for RECREATIONAL PA 
*unweighted
tab aware parecrea150,row chi
proportion parecrea150, over(aware)
*weighted
svy: tab aware parecrea150,row
svy: proportion parecrea150, over(aware)

*PA total  guideliness
*unweighted
tab aware pa150,row chi
proportion pa150, over(aware)
*weighted
svy: tab aware pa150,row 
svy: proportion pa150, over(aware)


*INCREASING PA 
**physical activity
*unweighted
tab aware mcq37b,row chi
proportion mcq37b, over(aware)
*weighted
svy: tab aware mcq37b,row
svy: proportion mcq37b, over(aware)



************************* LOGISTIC REGRESSIONS*****************************

****** diet quality 

*HEI-2015 TOTAL SCORE DICHOTOMOUS VARIABLES (group 6 as the reference)
svy: logistic hei2015 ib6.pattern63g

*perception of healthy diet
svy: logistic healthydiet ib6.pattern63g

** Reducing fat/calories in diet

svy: logistic mcq37dcopy ib6.pattern63g



******* Physical activity

**Any PA
svy: logistic anypa ib6.pattern63g

** Any moderate PA
svy: logistic anymoderatepa ib6.pattern63g

** Any vigorous PA
svy: logistic anyvigorouspa ib6.pattern63g

** US guideliness work PA
svy: logistic pawork150 ib6.pattern63g

** US guideliness transportation PA
svy: logistic patrans150 ib6.pattern63g

** US guideliness recreational PA
svy: logistic parecrea150 ib6.pattern63g

** total PA US guideliness
svy: logistic pa150 ib6.pattern63g

**Increasing PA
svy: logistic mcq37bcopy ib6.pattern63g



******* Prediabetes

*awareness
svy: logistic diq160copy ib6.pattern63g

**A1c level
svy: logistic a1cprediabetes ib6.pattern63g



***** Diet quality and PA among the group aware of prediabetes


*HEI-2015 TOTAL SCORE DICHOTOMOUS VARIABLES 
svy: logistic hei2015 ib6.aware2

*perception of healthy diet
svy: logistic healthydiet ib6.aware2















************************** GRAPHS


*NEW participants groups just to flip low/high SES in graph to follow the tables in the dissertation
gen pattern63g =.
replace pattern63g = 1 if (latinos ==1 & language4 == 1 & education == 0)
replace pattern63g = 2 if (latinos ==1 & language4 == 2 & education == 0)
replace pattern63g = 3 if (latinos ==1 & language4 == 3 & education == 0)
replace pattern63g = 4 if (latinos ==1 & language4 == 1 & education == 1)
replace pattern63g = 5 if (latinos ==1 & language4 == 2 & education == 1)
replace pattern63g = 6 if (latinos ==1 & language4 == 3 & education == 1)


graph bar (mean) hei2015_total_score [pweight = wtmec8yr], over(pattern63g) blabel(bar) ytitle(Total HEI-2015 mean score) ytitle(, size(small)) title(Participants' total HEI-2015 mean score by sub-group) legend(on)











*sensitivity analysis looking at acculturation using language as proxy - assessing whether I should use language spoken at home or language during interview 

tab sialang latinos
tab sialang pattern
tab sialang acd040

svy, subpop (latinos): mean hei2015_total_score , over(sialang)
svy, subpop(latinos): proportion pa150, over(pattern)
svy, subpop(latinos): proportion pa150, over(sialang)
svy, subpop(latinos): proportion a1c, over(sialang)
svy, subpop(latinos): proportion diq160, over(sialang)

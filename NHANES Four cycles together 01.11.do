//////NHANES  ANALYSIS - PREDIABETES, DIET PATTERNS AND PHYSICAL ACTIVITY PRACTICES AMONG LATINXS FITTING DIFFERENT PATTERNS OF ASSIMILATION ////////


*MERGING ALL DATASETS NEEDED FROM FOUR CYCLES (2011/2012, 2013/2014, 2015/2016, 2017/2018)


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

*saving as one merged dataset*
save nhanes2011.dta, replace

///////// APENDINGING ALL FOUR DATASETS INTO ONE)


use "nhanes2017.dta"


*append datasets together
append using "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanes2015.dta" "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanes2013.dta" "C:\Users\tformagini\OneDrive - University of Kansas Medical Center\NHANES combined\nhanes2011.dta"


*saving as one merged dataset*
save nhanescombined0111.dta, replace

use nhanescombined0111.dta, clear
rename *, lower
set more off



*create variable for hemoglobyn based on prediabetes and diabetes criteria)
gen plasma =.
replace plasma = 1 if (lbxgh == 3.8 | lbxgh == 4.1 |  lbxgh == 4.2 |  lbxgh == 4.3 |  lbxgh == 4.4 | lbxgh == 4.5 | lbxgh == 4.6 | lbxgh == 4.7 | lbxgh == 4.8 | lbxgh == 4.9 | lbxgh == 5 | lbxgh == 5.1 | lbxgh == 5.2 | lbxgh == 5.3 | lbxgh == 5.4 |lbxgh == 5.5 |lbxgh == 5.6)
replace plasma = 2 if (lbxgh == 5.7 | lbxgh == 5.8 |  lbxgh == 5.9 |  lbxgh == 6 |  lbxgh == 6.1 | lbxgh == 6.2 | lbxgh == 6.3 | lbxgh == 6.4)
replace plasma = 3 if (lbxgh == 6.5 | lbxgh == 6.6 |  lbxgh == 6.7 |  lbxgh == 6.8 |  lbxgh == 6.9 | lbxgh == 7 | lbxgh == 7.1 | lbxgh == 7.2 | lbxgh == 7.3 | lbxgh == 7.4 | lbxgh == 7.5 | lbxgh == 7.6 | lbxgh == 7.7 | lbxgh == 7.8 | lbxgh == 7.9 |lbxgh == 8 |lbxgh == 8.1 |lbxgh == 8.2 |lbxgh == 8.3 |lbxgh == 8.4 |lbxgh == 8.5 |lbxgh == 8.6 |lbxgh == 8.7 |lbxgh == 8.8 |lbxgh == 8.9| lbxgh == 9 | lbxgh == 9.1 | lbxgh == 9.2 | lbxgh == 9.3 | lbxgh == 9.4 | lbxgh == 9.5 | lbxgh == 9.6 | lbxgh == 9.7 |lbxgh == 9.8 |lbxgh == 9.9 | lbxgh == 10 | lbxgh == 10.1 |lbxgh == 10.2 |lbxgh == 10.3 |lbxgh == 10.4 |lbxgh == 10.5 |lbxgh == 10.6 |lbxgh == 10.7 |lbxgh == 10.8 |lbxgh == 10.9 |lbxgh == 11| lbxgh == 11.1 |lbxgh == 11.3 |lbxgh == 11.4 | lbxgh == 11.5 |lbxgh == 11.6 |lbxgh == 11.7| lbxgh == 11.8 | lbxgh == 12 |lbxgh == 12.1 |lbxgh == 12.2 |lbxgh == 12.4 |lbxgh == 12.7 | lbxgh == 12.8 |lbxgh == 13.1|lbxgh == 13.2 | lbxgh == 13.3 |lbxgh == 13.5 |lbxgh == 13.7 | lbxgh == 13.9 |lbxgh == 14.2 |lbxgh == 14.3 |lbxgh == 15.2 |lbxgh == 16.2)

*lable plasma variable*
label define plasma 1 "normal" 2 "prediabetes" 3 "diabetes"
label values plasma plasma

*Create variable Race combining mexican with other hispanics
gen race =.
replace race = 1 if ( ridreth3 == 1 | ridreth3 == 2)
replace race = 2 if ( ridreth3 == 3)
replace race = 3 if ( ridreth3 == 4)
replace race =43 if ( ridreth3 == 6)
replace race =4 if ( ridreth3 == 6)
replace race =5 if ( ridreth3 == 7)

*label variabe race
label define race 1 "Hispanic" 2 "White" 3 "Black" 4 "Asian" 5 "Other"
label values race race


*create variable for education 
gen education =.
replace education = 1 if( dmdeduc2 == 1 | dmdeduc2 == 2)
replace education = 2 if( dmdeduc2 == 3 | dmdeduc2 == 4 | dmdeduc2 == 5)
replace education =. if ( dmdeduc2 == 7 | dmdeduc2 == 9)

label define education 1"lesshigh" 2"highschool"
label values education education


*create variable age to exclude younger than 18 years old
egen age = cut( ridageyr ), at(0,18,81)

label define age 0 "17less" 18 "18older" 
label values age age

*create variable latinx adults
gen latinos =.
replace latinos = 1 if (race ==1 & age ==18)


*create a variable good health condition based on hsd010
gen health =.
replace health = 1 if (hsd010 == 1 | hsd010 == 2 | hsd010 == 3)
replace health = 2 if (hsd010 == 4)
replace health = 3 if (hsd010 == 5)

label define health 1 "good" 2 "fair" 3 "poor"
label values health health


*Generate variable obesity according to BMI"
egen obesebmi = cut( bmxbmi ), at(12,25,30,40,87)

*label variable obesebmi 
label define obesebmi 12 "normal" 25 "overweight" 30 "obese" 40 "extreme"
label values obesebmi obesebmi


*NEW VARIABLE FOR LANGUAGE (DEFINED ON OCTOBER 21, 2020) 
gen language =.
replace language = 1 if (acd040 == 5)
replace language = 2 if (acd040 == 1 | acd040 == 2 |acd040 == 3 |acd040 == 4)


*patterns of assimilation among latino adults
gen pattern =.
replace pattern = 1 if (latinos ==1 & language == 1 & education == 2)
replace pattern = 2 if (latinos ==1 & language == 2 & education == 1)
replace pattern = 3 if (latinos ==1 & language == 2 & education == 2)
replace pattern = 4 if (latinos ==1 & language == 1 & education == 1)

*create variable age groups
egen agegroups = cut( ridageyr ), at(18,40,60,81)





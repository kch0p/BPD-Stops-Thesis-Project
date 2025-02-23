





use "\\Client\C$\Users\"
sysdir set PLUS "\\Client\C$\Users\"





gen race = 1
replace race = 2 if perceivedraceorethnicity=="White"  
replace race = 3 if perceivedraceorethnicity=="Black/African American" |  perceivedraceorethnicity=="Black"
replace race = 4 if perceivedraceorethnicity=="Hispanic/Latino" |  perceivedraceorethnicity=="Hispanic"
replace race = 5 if perceivedraceorethnicity=="Asian"   
replace race = 1 if !inlist(race,1,2,3,4,5)
lab def race 1 "Other" 2 "White" 3 "Black/African American" 4 "Hispanic/Latino" 5 "Asian" 
lab value race race

gen perceivedgender = 1 if gender=="Male"
replace perceivedgender = 2 if gender=="Female"
replace perceivedgender = 0 if gender=="Transgender Man/Boy" | gender=="Transgender Woman/Girl"
lab def perceivedgender 1 "Male" 2 "Female" 0 "Other"
lab value perceivedgender perceivedgender

gen male = 1 if gender=="Male"
replace male = 0 if !inlist(male,1)
lab def male 1 "Male" 0 "Non-male"
lab value male male

gen resultofstoptype = 1 if resultofstop=="Citation for infraction" | resultofstop=="Citation"
replace resultofstoptype = 1 if resultofstop=="Citation for infraction| Psychiatric hol(W&I Code 5150 or 5585.20)"
replace resultofstoptype = 1 if resultofstop=="Citation for infraction|Contacted parent/legal guardian or other person responsible for the minor"
replace resultofstoptype = 1 if resultofstop=="Citation for infraction|In-field cite and release"
replace resultofstoptype = 1 if resultofstop=="Citation for infraction|Warning (verbal or written)"
replace resultofstoptype = 2 if resultofstop=="Contacted parent/legal guardian or other person responsible for the minor"
replace resultofstoptype = 2 if resultofstop=="Contacted parent/legal guardian or other person responsible for the minor|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)|Warning (verbal or written)"
replace resultofstoptype = 2 if resultofstop=="Contacted parent/legal guardian or other person responsible for the minor|Warning (verbal or written)"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant| Psychiatric hold (W&I Code 5150 or 5585.20)"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant| Psychiatric hold (W&I Code 5150 or 5585.20)|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant|Citation for infraction"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant|Custodial arrest without warrant"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant|Custodial arrest without warrant| Psychiatric hold (W&I Code 5150 or 5585.20)"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant|Field interview card completed"
replace resultofstoptype = 3 if resultofstop=="Custodial arrest pursuant to outstanding warrant|Warning (verbal or written)"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant| Psychiatric hold (W&I Code 5150 or 5585.20)"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant|Contacted parent/legal guardian or other person responsible for the minor"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant|Custodial arrest pursuant to outstanding warrant"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant|Custodial arrest pursuant to outstanding warrant|Contacted parent/legal guardian or other person responsible for the minor"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant|In-field cite and release"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)"
replace resultofstoptype = 4 if resultofstop=="Custodial arrest without warrant|Field interview card completed"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed| Psychiatric hold (W&I Code 5150 or 5585.20)"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed|In-field cite and release"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)|Contacted parent/legal guardian or other person responsible for the minor| Psychiatric hold (W&I Code 5150 or 5585.20)"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed|In-field cite and release"
replace resultofstoptype = 5 if resultofstop=="Field interview card completed|Warning (verbal or written)"
replace resultofstoptype = 6 if resultofstop== "In-field cite and release" 
replace resultofstoptype = 6 if resultofstop==  "In-field cite and release| Psychiatric hold (W&I Code 5150 or 5585.20)" 
replace resultofstoptype = 6 if resultofstop==  "In-field cite and release|Citation for infraction" 
replace resultofstoptype = 6 if resultofstop==  "In-field cite and release|Custodial arrest pursuant to outstanding warrant" 
replace resultofstoptype = 6 if resultofstop==  "In-field cite and release|Custodial arrest without warrant" 
replace resultofstoptype = 6 if resultofstop==  "In-field cite and release|Field interview card completed" 
replace resultofstoptype = 6 if resultofstop==  "In-field cite and release|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)" 
replace resultofstoptype = 6 if resultofstop== "In-field cite and release|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)| Psychiatric hold (W&I Code 5150 or 5585.20)" 
replace resultofstoptype = 7 if resultofstop== "No action" 
replace resultofstoptype = 8 if resultofstop== "Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)" 
replace resultofstoptype = 8 if resultofstop== "Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)| Psychiatric hold (W&I Code 5150 or 5585.20)" 
replace resultofstoptype = 8 if resultofstop== "Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)| Psychiatric hold (W&I Code 5150 or 5585.20)|In-field cite and release" 
replace resultofstoptype = 8 if resultofstop== "Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)|Citation for infraction" 
replace resultofstoptype = 8 if resultofstop== "Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)|Contacted parent/legal guardian or other person responsible for the minor" 
replace resultofstoptype = 8 if resultofstop== "Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)|Contacted parent/legal guardian or other person responsible for the minor| Psychiatric hold (W&I Code 5150 or 5585.20)" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|Citation for infraction" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|Custodial arrest pursuant to outstanding warrant" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|Custodial arrest without warrant" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|Field interview card completed" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|In-field cite and release" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)" 
replace resultofstoptype = 9 if resultofstop== "Psychiatric hold (W&I Code 5150 or 5585.20)|Warning (verbal or written)" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)" | resultofstop=="Warning"
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)| Psychiatric hold (W&I Code 5150 or 5585.20)" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|Citation for infraction" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|Citation for infraction|Field interview card completed" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|Custodial arrest pursuant to outstanding warrant" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|Custodial arrest without warrant" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|Field interview card completed" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|In-field cite and release" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|In-field cite and release|Field interview card completed" 
replace resultofstoptype = 10 if resultofstop== "Warning (verbal or written)|Noncriminal transport or caretaking transport (including transport by officer / ambulance or other agency)"
replace resultofstoptype = 11 if !inlist(resultofstoptype,1,2,3,4,5,6,7,8,9,10)
lab def resultofstoptype 1 "Citation for Infraction" 2 "Contacted Guardians" 3 "Custodial Arrest With Warrant" 4 "Custodial Arrest Without Warrant" 5 "Field Interview Card" 6 "In-Field Cite and Release" 7 "No Action" 8 "Noncriminal Transport" 9 "Psychiatric Hold" 10 "Warning" 11 "Other"
lab value resultofstoptype resultofstoptype

gen reason = 1 if reasonforstop=="Traffic Violation" | reasonforstop=="Traffic"
replace reason = 3 if reasonforstop=="Knowledge of outstanding arrest warrant/wanted person"
replace reason = 2 if reasonforstop=="Reasonable suspicion" | reasonforstop=="Reas. Susp."
replace reason = 4 if reasonforstop=="Consensual encounter resulting in search"
replace reason = 5 if reasonforstop=="Investigation"| reasonforstop=="Investigation to determine whether person was truant"
replace reason = 6 if reasonforstop=="Prob./Parole"| reasonforstop=="Parole/probation/PRCS/mandatory supervision"
replace reason = 7 if !inlist(reason,1,2,3,4,5,6)
lab def reason 1 "Traffic Violation" 2 "Reasonable Suspicion" 3 "Warrant" 4 "Consensual Search" 5 "Investigation" 6 "Probation/Parole" 7 "Other" 
lab value reason reason


gen type = 1 if typeofstop == "Bicycle"
replace type = 2 if typeofstop == "Pedestrian"
replace type = 3 if typeofstop == "Vehicle"
lab def type 1 "Vehicle" 2 "Pedestrian" 3 "Vehicle"
lab value type type 

gen arrest = 1 if inlist(resultofstoptype,3,4)
replace arrest = 1 if resultofstop == "Warning (verbal or written)|Custodial arrest without warrant" 
replace arrest = 1 if resultofstop == "Warning (verbal or written)|Custodial arrest pursuant to outstanding warrant" 
replace arrest = 1 if resultofstop == "Psychiatric hold (W&I Code 5150 or 5585.20)|Custodial arrest without warrant" 
replace arrest = 1 if resultofstop == "Psychiatric hold (W&I Code 5150 or 5585.20)|Custodial arrest pursuant to outstanding warrant" 
replace arrest = 1 if resultofstop == "In-field cite and release|Custodial arrest without warrant"
replace arrest = 1 if resultofstop == "In-field cite and release|Custodial arrest pursuant to outstanding warrant" 
// replace arrest if resultofstop == 
replace arrest = 0 if !inlist(arrest, 1)
lab def arrest 1 "Arrested" 0 "Not Arrested"
lab value arrest arrest


gen other = 1 if race == 1
replace other = 0 if race !=1
lab def other 1 "Other " 0 "Not Other " 
lab value other other


gen white = 1 if race == 2
replace white = 0 if race !=2
lab def white  1 "White" 0 "Not White"
lab value white white


gen black = 1 if race == 3
replace black = 0 if race !=3
lab def black 1 "Black/African American" 0 "Not Black/African American" 
lab value black black


gen hispanic = 1 if race == 4
replace hispanic = 0 if race !=4
lab def hispanic 1 "Hispanic" 0 "Not Hispanic" 
lab value hispanic hispanic


gen asian = 1 if race == 5
replace asian = 0 if race !=5
lab def asian 1 "Asian " 0 "Not Asian " 
lab value asian asian


gen nonwhite = 1 if inlist(race,1,3,4,5) 
replace nonwhite = 0 if inlist(race,2)
lab def nonwhite 0 "White" 1 "Nonwhite"
lab value nonwhite nonwhite

gen poc = 1 if inlist(race,1,3,4) 
replace poc = 0 if !inlist(poc,1)
lab def poc 0 "Not POC" 1 "POC"
lab value poc poc

gen far = 1 if tract_distancefromcal >= 2
replace far = 0 if tract_distancefromcal < 2
lab def far 1 "Far from university" 0 "Not far from university" 
lab value far far

gen close = 1 if tract_distancefromcal <= 1.5
replace close = 0 if tract_distancefromcal > 1.5
lab def close 1 "Close to university" 0 "Not close to university" 
lab value close close

gen reasonablesuspicion = 1 if reasonforstop == "Reasonable suspicion" | reasonforstop=="Reas. Susp."
replace reasonablesuspicion = 0 if !inlist(reasonablesuspicion, 1)
lab def reasonablesuspicion 1 "Stop based on reasonable suspicion" 0 "Stop based on other reason" 
lab value reasonablesuspicion reasonablesuspicion

gen trafficstop = 1 if reason == 2 | typeofstop == "Vehicle"
replace trafficstop = 0 if !inlist(trafficstop,1)
lab def trafficstop 1 "Traffic Stop" 0 "Pedestrian or Bicycle stop" 
lab value trafficstop trafficstop

gen noactions = 1 if resultofstoptype == 7 | resultofstoptype == 10
replace noactions = 0 if !inlist(noaction,1)
lab def noactions 1 "Released with no citation or arrest" 0 "Other" 
lab value noactions noactions

gen warning = 1 if resultofstoptype == 10 
replace warning = 0 if !inlist(warning,1)
lab def warning 1 "Let off with Warning" 0 "Other"
lab value warning warning

// replace perceivedgender = 2 if !inlist(perceivedgender,0,1)


sum arrest reason resultofstoptype arrest perceivedage nonwhite poc race trafficstop noactions warning tract_totalnumstops tract_annualstops tract_medianincome

corr perceivedraceorethnicity perceivedgender perceivedage reason resultofstoptype arrest perceivedage nonwhite poc race reasonablesuspicion trafficstop noactions warning tract_totalnumstops tract_annualstops tract_medianincome



// sum arrest durationofstop infobased perceivedage distancefromcal area_totalstops area_medianincome area_annualstops nonwhitecomp race perceivedgender reason nonwhite poc far close reasonablesuspicion trafficstop noactions warning racepercieved longstop 
//
// corr arrest durationofstop infobased type perceivedage distancefromcal area_totalstops area_medianincome area_annualstops nonwhitecomp race perceivedgender reason nonwhite poc far close reasonablesuspicion trafficstop noactions warning racepercieved longstop 







////////////////////THIS CODE ONLY APPLIES FOR THE SMALLER DATASET
drop if durationofstop >270

gen racepercieved = 1 if raceperceivedpriortostop=="TRUE"
// replace stop = 1 if raceperceivedpriortostop=="True"
replace racepercieved = 0 if raceperceivedpriortostop == "FALSE"
replace racepercieved = 0 if !inlist(racepercieved,1)
lab def racepercieved 1 "Race Percieved Prior" 0 "Race Not Percieved Prior"
lab value racepercieved racepercieved

gen longstop = 1 if durationofstop >= 20
replace longstop = 0 if durationofstop < 20
lab def longstop 1 "Longer than average stop" 0 "Normal/shorter than average stop" 
lab value longstop longstop

gen infobased = 1 if informationbasedstop == "yes"
replace infobased = 0 if !inlist(infobased,1)
lab def infobased 1 "Stop based on previous information" 0 "Stop not based on previous information" 
lab value infobased infobased

gen notinfobased = 1 if infobased == 1
replace notinfobased = 0 if !inlist(notinfobased,1)
lab def notinfobasednotinfobased 1 "Stop not based on previous information" 0 "Stop  based on previous information" 
lab value notinfobased notinfobased







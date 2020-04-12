## Process
The data set has a bad format:
- values are seperated by ";" instead of ","
- values are in parantheses
like so:
```
"dep";"sexe";"jour";"hosp";"rea";"rad";"dc"
"01";0;"2020-03-18";2;0;1;0
"01";1;"2020-03-18";1;0;1;0
```
And we want this:
```
dep,sexe,jour,hosp,rea,rad,dc
01,0,2020-03-18,2,0,1,0
01,1,2020-03-18,1,0,1,0
```

### Step 1: reformating the data set
I'm using a simple bash script to automate this task (new data set gets uploaded every day).

```
sed 's/"//g' $1 | sed 's/;/,/g' > "clean_$1"
```

### Step 2: cleaning
**Changing column names for more explicit ones**


**Looking for missing values**


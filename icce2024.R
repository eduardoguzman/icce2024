

library(sirt)


################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 10
################################################################################

# Input file: answers of items which evaluate concept 10.
answers_concept_10 <- read.csv("~/answers_concept_10.csv", header=FALSE, sep=";")

# Copula definition
itemcluster <- rep(0,22)
itemcluster[1:6]=9
itemcluster[7]=8
itemcluster[8:9]=9
itemcluster[10:18]=11
itemcluster[19]=8
itemcluster[20]=11
itemcluster[21:22]=8

res.rasch.copula2 <- rasch.copula2( answers_concept_10, itemcluster = itemcluster, numdiff.parm = 1e-05, mmliter = 100)
student <- person.parameter.rasch.copula(res.rasch.copula2)
write.table(student$person$theta.dep,file="~/output.csv",dec=",",sep=";")

################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 12
################################################################################

# Input file: answers of items which evaluate concept 12.
answers_concept_12 <- read.csv("~/answers_concept_12.csv", header=FALSE, sep=";")

# Copula definition
itemcluster <- rep(0,22)
itemcluster[1:6]=1
itemcluster[7]=2
itemcluster[8:9]=3
itemcluster[10]=4
itemcluster[11]=5
itemcluster[12]=6
itemcluster[13]=7
itemcluster[14]=8
itemcluster[15]=9
itemcluster[16]=10
itemcluster[17]=11
itemcluster[18]=12
itemcluster[19:22]=13

res.rasch.copula2 <- rasch.copula2( answers_concept_12 , itemcluster = itemcluster, numdiff.parm = 1e-05, mmliter = 100)
student <- person.parameter.rasch.copula(res.rasch.copula2)
write.table(student$person$theta.dep,file="~/output.csv",dec=",",sep=";")

################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 11
################################################################################

# Input file: answers of items which evaluate concept 11.
answers_concept_11 <- read.csv("~/answers_concept_11.csv", header=FALSE, sep=";")

# Copula definition
itemcluster <- rep(0,11)
itemcluster[1]=1
itemcluster[2]=2
itemcluster[3]=3
itemcluster[4]=4
itemcluster[5]=5
itemcluster[6]=6
itemcluster[7]=7
itemcluster[8]=8
itemcluster[9]=9
itemcluster[10]=10
itemcluster[11]=11

res.rasch.copula2 <- rasch.copula2( answers_concept_11 , itemcluster = itemcluster, numdiff.parm = 1e-05, mmliter = 100)
student <- person.parameter.rasch.copula(res.rasch.copula2)

# Output: knowledge level computed for each student 
write.table(student$person$theta.dep,file="~/output.csv",dec=",",sep=";")

################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 9
################################################################################

# Input file: answers of items which evaluate concept 9.
answers_concept_9 <- read.csv("~/answers_concept_9.csv", header=FALSE, sep=";")

# Copula definition
itemcluster <- rep(0,9)
itemcluster[1:6]=1
itemcluster[7:8]=2
itemcluster[9]=3

res.rasch.copula2_9 <- rasch.copula2( answers_concept_9 , itemcluster = itemcluster, numdiff.parm = 1e-05, mmliter = 100)
student <- person.parameter.rasch.copula(res.rasch.copula2_9)

# Output: knowledge level computed for each student 
write.table(student$person$theta.dep,file="~/output.csv",dec=",",sep=";")

################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 8
################################################################################

# Input file: answers of items which evaluate concept 8.
answers_concept_8 <- read.csv("~/workspace/@PROJECTS/R | AIED 2018/answers_concept_8.csv", header=FALSE, sep=";")

# Copula definition
itemcluster <- rep(0,4)
itemcluster[1]=1
itemcluster[2]=2
itemcluster[3:4]=3

res.rasch.copula2_8 <- rasch.copula2( answers_concept_8 , itemcluster = itemcluster, numdiff.parm = 1e-05, mmliter = 100)
student <- person.parameter.rasch.copula(res.rasch.copula2_8)

# Output: knowledge level computed for each student 
write.table(student$person$theta.dep,file="~/output.csv",dec=",",sep=";")

################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 7
################################################################################

# Input file: answers of items which evaluate concept 7.
answers_concept_7 <- read.csv("~/workspace/@PROJECTS/R | AIED 2018/answers_concept_7.csv", header=FALSE, sep=";")

# Copula definition
itemcluster <- rep(0,8)
itemcluster[1]=1
itemcluster[2]=2
itemcluster[3]=3
itemcluster[4]=4
itemcluster[5]=5
itemcluster[6]=6
itemcluster[7]=7
itemcluster[8]=8

res.rasch.copula2_7 <- rasch.copula2( answers_concept_7 , itemcluster = itemcluster, numdiff.parm = 1e-05, mmliter = 100)
student <- person.parameter.rasch.copula(res.rasch.copula2_7)

# Output: knowledge level computed for each student 
write.table(student$person$theta.dep,file="~/output.csv",dec=",",sep=";")

################################################################################
## CALIBRATION AND ASSESSMENT FOR CONCEPT 6
################################################################################

# Input file: answers of items which evaluate concept 6.
answers_concept_6 <- read.csv("~/answers_concept_6.csv", header=FALSE, sep=";")
model_6=rasch(answers_concept_6)
theta_6=factor.scores(model_6, answers_concept_6)

# Output: knowledge level computed for each student 
write.table(theta_6$score.dat['z1'],file="~/output.csv",dec=",",sep=";")


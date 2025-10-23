paludisme_data = data.frame(
ID = 1:12,
Age = c(5,12,8,34,27,34,5,12,NA,40,45,NA),
Sexe = c("M","F","M","F","M","M","M","F","F","M",NA,"F"),
Taux_plasmodium = c(3.2,0.0,2.8,0.0,4.1,3.2,3.2,0.0,2.8,NA,4.3,2.5),
Region = c("Nord","Sud","Nord","Est","Ouest","Nord","Nord","Sud","Est","Ouest","Sud",NA),
Hospitalise = c("oui","non","oui","non","oui","oui","oui","non","oui","non","oui","non"))
#2
length(paludisme_data)
dim(paludisme_data)
#3
summary(paludisme_data)
#4
duplicated(paludisme_data)
#5
paludisme_data1 = distinct(paludisme_data)
paludisme_data1 = unique(paludisme_data)
#6
paludisme_data[!complete.cases(paludisme_data), ]
#7
paludisme_data_sans_na = na.omit(paludisme_data)
paludisme_data_sans_na
#8
paludisme_data$Age[is.na(paludisme_data$Age)] = mean(paludisme_data$Age, na.rm = TRUE)
paludisme_data$Taux_plasmodium[is.na(paludisme_data$Taux_plasmodium)] = mean(paludisme_data$Taux_plasmodium, na.rm = TRUE)
paludisme_data$Sexe[is.na(paludisme_data$Sexe)] = ("F")
paludisme_data$Region [is.na(paludisme_data$Region )] = ("Nord")
paludisme_data
#9
summary(paludisme_data)
#10
dim(paludisme_data_sans_na)
#11
paludisme_data = mutate(paludisme_data,Categorie = ifelse(Age > 15, "Enfant", "Adulte"))
#12
aggregate(Taux_plasmodium~Region,data = paludisme_data, mean)
#13
mean(paludisme_data$Age)
sd(paludisme_data$Age)
paludisme_data = data.frame(
ID = 1:12,
Age = c(5,12,8,34,27,34,5,12,NA,40,45,NA),
Sexe = c("M","F","M","F","M","M","M","F","F","M",NA,"F"),
Taux_plasmodium = c(3.2,0.0,2.8,0.0,4.1,3.2,3.2,0.0,2.8,NA,4.3,2.5),
Region = c("Nord","Sud","Nord","Est","Ouest","Nord","Nord","Sud","Est","Ouest","Sud",NA),
Hospitalise = c("oui","non","oui","non","oui","oui","oui","non","oui","non","oui","non"))
#2
dim(paludisme_data)
#3
summary(paludisme_data)
#4
duplicated(paludisme_data)
#5
paludisme_data1 = distinct(paludisme_data)
paludisme_data1 = unique(paludisme_data)
#6
paludisme_data[!complete.cases(paludisme_data), ]
#7
paludisme_data_sans_na = na.omit(paludisme_data)
paludisme_data_sans_na
#8
paludisme_data$Age[is.na(paludisme_data$Age)] = mean(paludisme_data$Age, na.rm = TRUE)
paludisme_data$Taux_plasmodium[is.na(paludisme_data$Taux_plasmodium)] = mean(paludisme_data$Taux_plasmodium, na.rm = TRUE)
paludisme_data$Sexe[is.na(paludisme_data$Sexe)] = ("F")
paludisme_data$Region [is.na(paludisme_data$Region )] = ("Nord")
paludisme_data
#9
summary(paludisme_data)
#10
dim(paludisme_data_sans_na)
#11
paludisme_data = mutate(paludisme_data,Categorie = ifelse(Age > 15, "Enfant", "Adulte"))
#12
aggregate(Taux_plasmodium~Region,data = paludisme_data, mean)
#13
mean(paludisme_data$Age)
sd(paludisme_data$Age)
#14
aggregate(Taux_plasmodium~Age,data = paludisme_data, mean)
#15
cor(paludisme_data$Age , paludisme_data$Taux_plasmodium)
#16
hist(paludisme_data$Age , main = "Distribution des Age ", xlab = "Age générale", col = "lightblue", border = "black")



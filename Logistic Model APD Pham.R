##################### Austin population ##########################
# https://www.census.gov/quickfacts/fact/table/austincitytexas/AGE295219
#pop = 978980  

#race.percent = c(7.8, 0.7, 7.6, 33.9, 48.3, 1.7) 
#names(race.percent) = c("Black", "Native American", "Asian", "Hispanic", "White", "Others")
#race.population = pop*race.percent/100

#race filing report in 2018
#total.stop = c(17754, 60, 4387 + 2180, 39946, 57173, 685)
#names(total.stop) = names(race.percent)

#stop.ratio = total.stop/race.population

#plot.bar = function(variable){
#  barplot(variable[order(variable)])
#}

#plot.bar(total.stop)
#plot.bar(race.population)
#plot.bar(stop.ratio) #black people are more likely to be stopped in 2018

#search resulting from motor vehicle stops
#total.search = c(3072, 7, 150, 5514, 3704, 43)
#names(total.search) = names(race.percent)

#search.pop = total.search/race.population
#plot.bar(search.pop)

#search.stop = total.search/total.stop
#plot.bar(search.stop)

###################################################
#data from 2017

#dat2019 = '2019_Racial_Profiling__RP__Warning_and_Field_Observations'

#dat19 = read.csv("C:/Users/cuong/Downloads/2019_Racial_Profiling__RP__Warning_and_Field_Observations.csv")
#summary(dat19)

##########################################################################################
austin.dat = readRDS("C:\\Users\\cuong\\Downloads\\austin.rds")

library(dplyr)
austin.dat1 = austin.dat %>% select(date, subject_age, subject_race, subject_sex, frisk_performed)#, search_conducted, contraband_found,
                                    #contraband_drugs, contraband_weapons) 

austin.dat1$frisk_performed = as.factor(austin.dat1$frisk_performed)

austin.dat1$year = substr(austin.dat1$date, 1,4)
austin.dat1$year = as.numeric(austin.dat1$year)

#austin.dat1 = austin.dat1[austin.dat1$subject_race != "unknow", ]
austin.dat1 = na.omit(austin.dat1)
mod.1 = glm(frisk_performed ~ subject_race + subject_age + subject_sex, data = austin.dat1, family = binomial())
summary(mod.1)

#mod.2 = glm(search_conducted ~ subject_race + subject_age + subject_sex + year, data = austin.dat1, family = binomial())
#summary(mod.2)

austin.dat2 = austin.dat %>% select(date, subject_age, subject_race, subject_sex, search_conducted, contraband_found,
contraband_drugs, contraband_weapons)

austin.dat2$search_conducted = as.factor(austin.dat2$search_conducted)
austin.dat2$contraband_found = as.factor(austin.dat2$contraband_found)
austin.dat2$contraband_others = ifelse(austin.dat2$contraband_weapons == F & austin.dat2$contraband_drugs == F & austin.dat2$contraband_found == T,T,F)


mod.4 = glm(as.factor(contraband_found) ~ subject_race, data = austin.dat2[austin.dat2$search_conducted == T,], family = binomial())
summary(mod.4)

mod.5 = glm(as.factor(contraband_drugs) ~ subject_race, data = austin.dat2[austin.dat2$search_conducted == T,], family = binomial())
summary(mod.5)

mod.6 =  glm(as.factor(contraband_weapons) ~ subject_race, data = austin.dat2[austin.dat2$search_conducted == T,], family = binomial())
summary(mod.6)

mod.7 = glm(as.factor(contraband_others) ~ subject_race, data = austin.dat2[austin.dat2$search_conducted ==T,], family = binomial())
summary(mod.7)


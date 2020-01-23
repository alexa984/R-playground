# plot and hist functions come from graphics package
plot(Cars93$Max.Price) # numerical
plot(Cars93$Price, Cars93$Horsepower) # two numericals
plot(log(Cars93$Price), log(Cars93$Horsepower)) # it is okay to use logs

plot(Cars93$Cylinders) # categorical
plot(Cars93$Type, Cars93$Cylinders) # two categoricals, better use histogram

sport_cars = Cars93$Type == "Sporty"
sporty = Cars93[sport_cars, ]
hist(sporty$Horsepower, breaks = 30, col = "tomato")

  
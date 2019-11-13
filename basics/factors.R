# factors are categorical variables
# sth like enums, they represent limited number of different values

# ex. Blood type
blood = c("0", "A", "B", "AB", "0", "B")
blood_factor= factor(blood)
# contains unique values and sorts levels alphabetically

str(blood_factor) # returns Factor w/ 4 levels "0","A","AB","B": 1 2 4 3 1 4
# Each level is encoded with integer corresponding to its order

# we can specify the order and give labels(to represent elements instead of ordering number) if wanted:
blood_factor2 = factor(blood, levels = c("A", "B", "AB", "0"), labels = c("Blood Type A", "Blood Type B", "Blood Type AB", "Blood Type 0"))

# if we want to perform a comparison between factors, we need to specify ordering
tshirt = c("M", "L", "S", "L", "M", "L", "M", "M", "S")
tshirt_factor = factor(tshirt, ordered = TRUE, levels = c("S", "M", "L"))

# Bus stops at 10 stops
# - at each stop it picks 
#   - 0 passengers with 0.5 probability
#   - 1 passenger with 0.4 probability
#   - 2 passengers with 0.1 probability
# - each passenger will ride for at least one step
# - at each stop there is a 20% chance the passenger will get off.

N <- 100000
stops <- 10
data <- c()
pmatrix <- c(0.5,0.4,0.1)
premove <- 0.1

for (i in 1:N) { 
    passengers <- 0
    for (i in 1:stops-1) {
        if (passengers > 0) { 
            remove_passengers<- sum(sample(c(0,1), passengers, replace=TRUE, c(1-premove,premove)))
            passengers <- passengers - remove_passengers
        }
        pickup_passengers <- sample(c(0,1,2),1,replace=TRUE,pmatrix)
        passengers <- passengers + pickup_passengers 
    }
    data <- c(data,passengers)
}
    df<- data.frame(simnumber=1:length(data),passenger=data)
    df %>% group_by(passenger) %>% ggplot(aes(x=passenger)  ) + geom_histogram( binwidth = 1)  


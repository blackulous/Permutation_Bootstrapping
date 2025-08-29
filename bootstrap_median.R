
n = 60
#x = rpois(n, lambda=1)
 x = rexp(n, rate=1)
##n = length(x)

muhat = median(x)

n_boot = 2000

boot_muhats = rep(0, n_boot)

for (cur_boot in 1:n_boot){
  
  xboot = sample(x, n, replace=TRUE)
  boot_muhats[cur_boot] = median(xboot)
    
}

print(paste("Bootstrap standard deviation: ", sd(boot_muhats)))
print(paste("Bootstrap conf interval: ", 
            muhat-2*sd(boot_muhats), muhat + 2*sd(boot_muhats)))
hist(boot_muhats)

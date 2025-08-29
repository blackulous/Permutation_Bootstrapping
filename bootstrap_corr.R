
n = 100
x = rexp(n)

n = length(x)

n_sim = 2000

all_muhats = rep(0, n_sim)

for (cur_sim in 1:n_sim){
  
  xboot = sample(x, n, replace=TRUE)
  all_muhats[cur_sim] = mean(xboot)
    
}

print(sd(all_muhats))

hist(all_muhats)
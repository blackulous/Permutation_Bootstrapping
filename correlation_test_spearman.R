
spearmanRho <- function(x1, x2){
  rho = cor(order(x1), order(x2))
  return(rho)
}


X = cbind( c(2, 4, 5, 1, 3, 2), c(2.7, 4.0, 3.7, 3.1, 3.2, 2.4) )

n = nrow(X)

my_rho = spearmanRho(X[, 1], X[, 2])

n_sim = 2000

all_results = rep(0, n_sim)

for (cur_sim in 1:n_sim){
 
    Xprime = cbind( sample(X[, 1], n, replace=FALSE), X[, 2] ) 
    all_results[cur_sim] = spearmanRho(Xprime[, 1], Xprime[, 2])
}

print( sum(abs(all_results) > my_rho)/n_sim )
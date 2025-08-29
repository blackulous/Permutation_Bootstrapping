
X = c(0.2, -1.9, 1.4, -2.7, -1.7, -1.4, 0.3, 1.2, -1.1, -0.2, -2.1)
n = length(X)

n_boot = 1000

Xc = X - mean(X)

boot_results = rep(0, n_boot)

for (cur_boot in 1:n_boot){
  Xboot = sample(Xc, n, replace=TRUE)
  boot_results[cur_boot] = abs(mean(Xboot))
}

print(paste("bootstrap p-value:", sum(boot_results >= abs(mean(X)))/n_boot))
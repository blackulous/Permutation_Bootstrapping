
n_sim = 5000

my_viewsA = 98
my_viewsB = 162
all_views = my_viewsA + my_viewsB

n_impsA = 1000
n_impsB = 2000
all_imps = n_impsA + n_impsB

my_diff = abs(my_viewsA/n_impsA - my_viewsB/n_impsB)

all_results = rep(0, n_sim)

for (cur_sim in 1:n_sim){
  
  pool = c(rep(1, all_views), rep(0, all_imps - all_views))
  
  impsA = sample(pool, n_impsA, replace=FALSE)
  viewsA = sum(impsA)
  viewsB = all_views - viewsA
  
  diff = abs(viewsA/n_impsA - viewsB/n_impsB)
  all_results[cur_sim] = diff
  
}

hist(all_results)
abline(v = my_diff, col="red")
print(sum(all_results >= my_diff)/n_sim)
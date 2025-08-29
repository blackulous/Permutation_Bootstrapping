N = 200000
mask = (runif(N) > 0.5)
Z = mask * rnorm(N) + (1-mask) * rnorm(N, -3.7, 1.6)

plot(density(Z, bw=0.2), yaxt="n", xaxt="n", lwd="2")


n = 100

mask = (runif(n) > 0.5)
X = mask * rnorm(n) + (1-mask) * rnorm(n, -3.7, 1.6)

Xdf = data.frame(cbind(X, rep(0, n)))

hist(X, yaxt="n", xaxt="n")
points(Xdf, pch=4, lwd=1)

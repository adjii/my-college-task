# Randomized Complete Block Designs
# Rancangan Acak Kelompok Lengkap

# Create data
treatments <- factor(rep(1:4, each = 4))
blocks  <- factor(rep(1:4, times = 4))
y <- c(8, 7, 9, 6,
       1, 0, 3, 2,
       6, 5, 7, 5,
       5, 6, 9, 8)
data <- data.frame(y, treatments, blocks)

# Making plot
fit.aov <- aov(y ~ blocks + treatments, data = data)                 
fit.res <- resid(fit.aov)
plot(data$y, fit.res, xlab = "Y", ylab = "Residuals",
     main = "Uji Independensi Galat", 
     ylim = c(-1.5,1.5))
abline(0,0)


# Randomized Complete Block Designs
# Rancangan Acak Kelompok Lengkap

# Create data
treatments <- factor(rep(1:4, each = 4))
# treatments <- factor(rep(1:4, each = 3))
blocks  <- factor(rep(1:4, times = 4))
# blocks  <- factor(rep(1:3, times = 4))
y <- c(8, 7, 9, 6,
       1, 0, 3, 2,
       6, 5, 7, 5,
       5, 6, 9, 8)
# y <- c(8.1, 8.9, 7.7,
#        6.5, 6.8, 5.9,
#        7.4, 6, 5.9,
#        8.4, 7.4, 9.4)
data <- data.frame(y, treatments, blocks)

# Analyze data
fit <- aov(y ~ blocks + treatments, data = data)                 
summary(fit)
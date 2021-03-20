# Latin Squares Design
# Rancangan Bujur Sangkar Latin

# Create data
time <- factor(rep(1:4, times = 4))
courses <- c(rep("Aljabar",4), rep("Geometri",4), 
                rep("Statistika",4), rep("Kalkulus",4))
profesor <- c("A","B","C","D", 
              "B","C","D","A", 
              "C","D","A","B", 
              "D","A","B","C")
y <- c(84,91,59,75,
       79,82,70,91, 
       63,80,77,75, 
       97,93,80,68)
data <- data.frame(courses, time, profesor, y)

# Analyze data
fit <- lm(y ~ time+courses+profesor, data)
anova(fit)
# fit <- aov(y ~ time+courses+profesor, data = data)                 
# summary(fit)

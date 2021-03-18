# Task quality control 1

# Import the qcc library
library(qcc)

# Data from R dataset
data("pistonrings")

# Group the diameter per sample
diameter = with(pistonrings, qcc.groups(diameter, sample))

# I only need length for diameter in 25
pistonrings = diameter[1:25, 1:5]

# Create title
title <- "Cincin piston"

# Create the R-chart
r_chart <- qcc(pistonrings, type = "R", data.name = title)

# Create the x-bar chart
xbar <- qcc(pistonrings, type = "xbar", data.name = title)

# If you plot is not appear
# You should make your plot window large and running again
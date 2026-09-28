# analysis.R
# Edited by: Ammikam
# Simple exploratory analysis of weekly sales data
# This is the script people will edit during the Git tutorial

library(dplyr)
library(ggplot2)

# --- Load data ---
sales <- read.csv("data/sales_sample.csv")

# --- Quick look ---
str(sales)
summary(sales)

# --- Total revenue by region ----
revenue_by_region <- sales %>%
  group_by(region) %>%
  summarise(total_revenue = sum(revenue), .groups = "drop") %>%
  arrange(desc(total_revenue))

print(revenue_by_region)

# --- Total revenue by region  ---
ggplot(revenue_by_region, aes(x = reorder(region, -total_revenue), y = total_revenue)) +
  geom_col(fill = "steelblue") +
  labs(
    title = "Total Revenue by Region",
    x = "Region",
    y = "Revenue (KES)"
  ) +
  theme_minimal()

# TODO (tutorial exercise): add a second summary, e.g. revenue by product,
# commit it, push it, and open a pull 
# --- Total revenue by region (edited on GitHub) ---
revenue_by_product <- sales %>%
  group_by(product) %>%
  summarise(
    total_units = sum(units_sold),
    total_revenue = sum(revenue),
    .groups = "drop"
  ) %>%
  arrange(desc(total_revenue))

print(revenue_by_product)
# --- Plot: revenue by product ---
ggplot(revenue_by_product, aes(x = product, y = total_revenue)) +
  geom_col(fill = "darkorange") +
  labs(
    title = "Total Revenue by Product",
    x = "Product",
    y = "Revenue (KES)"
  ) +
  theme_minimal()

# --- Units sold by region ---
units_by_region <- sales %>%
  group_by(region) %>%
  summarise(total_units = sum(units_sold), .groups = "drop") %>%
  arrange(desc(total_units))

print(units_by_region)

ggplot(units_by_region, aes(x = reorder(region, -total_units), y = total_units)) +
  geom_col(fill = "purple") +
  labs(
    title = "Units Sold by Region",
    x = "Region",
    y = "Units"
  ) +
  theme_minimal()



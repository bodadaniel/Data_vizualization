
rg <- data.frame(rg = rnorm(100000))

breaks <- seq(min(rg), 
              max(rg), 
              by = 0.1)

ggplot(data = rg) + 
  geom_histogram(breaks = breaks, 
                 aes(x = rg, y = ..density..), 
                 color = "white", 
                 fill = "deepskyblue") +
  geom_density(aes(x = rg, y = ..density..), 
               alpha = 0.6, 
               size = 1) + 
  geom_vline(aes(xintercept = mean(rg)),
             color = "grey", 
             linetype = "dashed", 
             size = 1) +
  geom_vline(aes(xintercept = quantile(rg, p = 0.999)),
             color = "grey", 
             linetype = "dashed", 
             size = 1) +
  labs(title = "The title", x = "x", y = "f(x)") +
  theme_dark() +
  annotate("text", x = 4, y = 0.2, 
           label = paste0("99.9% Quantile = ", round(quantile(rg[,1], p = 0.999),4))) +
  annotate("text", x = 1, y = 0.4,
           label = paste0("Mean = ", round(mean(rg[,1]),4))) 




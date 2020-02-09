
data <- (mpg)
drv_desc <- data.frame(drv_desc = c("Front-wheel drive", "Rear-wheel drive", "Four-wheel drive"),
                       drv = c("f", "r", "4"))
data <- merge(data, drv_desc, by = "drv")

fl_wrap <- c("Natural gas", "Diesel", "Ethanol", "Premium", "Regular")
names(fl_wrap) <- c("c", "d", "e", "p", "r")

ggplot(data = data) +
  geom_point(aes(x = hwy, y = displ, col = cyl, shape = drv_desc.y),
             size = 3,
             alpha = 0.6) +
  facet_wrap(~fl, 
             nrow = 2, 
             labeller = labeller(fl =  fl_wrap)) + 
  labs(title = "Fuel Economy Data From 1999 And 2008 For 38 Popular Models Of Car", 
       x = "Highway miles per gallon", 
       y = "Engine displacement, in litres",
       col = "Number of cylinders",
       shape = "Type of drive") +
  theme_dark() +
  theme(strip.text.x = element_text(size = 12, 
                                    color = "white", 
                                    face = "bold.italic"),
        strip.text.y = element_text(size = 12, 
                                    color = "white", 
                                    face = "bold.italic"),
        plot.title = element_text(size = 18,
                                  face = "bold"),
        plot.background = element_rect(fill = "gray80")
  )


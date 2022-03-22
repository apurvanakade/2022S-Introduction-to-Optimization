resource_allocation_plot +
  geom_point(aes(x=2, y=2), color = "black") +
  geom_text(aes(x=2, y=2), label="(2, 2)", vjust=-.5, hjust=0) +
  stat_function(fun = function(x) {(110 - 25*x)/30}, color = "black")

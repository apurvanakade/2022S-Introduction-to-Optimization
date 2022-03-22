resource_allocation_plot <- ggplot() +
  xlim(0, max(200/80, 200/25)) +
  ylim(0, max(200/20, 200/75)) +
  geom_vline(xintercept=c(0), alpha = 0.4) +
  geom_hline(yintercept=c(0), alpha = 0.4) +
  theme_bw() +
  geom_polygon(
    data = data.frame(
      x = c(0, 0, 200/80),
      y = c(0, 200/20, 0)),
    aes(x = x, y = y, fill = "1: 80x + 20y <= 200"),
    inherit.aes = FALSE, alpha = 0.4) +
  geom_polygon(
    data = data.frame(
      x = c(0, 0, 200/25),
      y = c(0, 200/75, 0)),
    aes(x = x, y = y, fill = "2: 25x + 75y <= 200"),
    inherit.aes = TRUE, alpha = 0.4) +
  scale_fill_discrete(name = "Constraints")

resource_allocation_plot +
  geom_point(aes(x=2, y=2), color = "black") +
  geom_text(aes(x=2, y=2), label="(2, 2)", vjust=-.5, hjust=-.5)

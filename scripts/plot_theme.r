##Simulation of scenarios without including between subject variation parameters                                            ### the theme to use for plotting. Applicable to all plots
plot_theme<-function(){
  theme(axis.text.x=element_text(hjust=1,vjust=1, size=14, color="black"), 
        axis.text.y=element_text(hjust=1,vjust=1, size=14, color="black"),
        panel.background=element_rect(fill="white",color="black"),
        plot.title = element_text(size = 14),
        panel.grid.minor.y = element_blank(),
        panel.grid.major.y = element_line(colour = "grey"),
        panel.grid.minor.x = element_blank(),
        panel.grid.major.x = element_line(colour = "grey"),
        axis.line.x=element_line(size=1.5, color="black"),
        axis.line.y=element_line(size=1.5, color="black"),
        axis.ticks.length=unit(0.3, "cm"),
        axis.ticks.x=element_line(size=1, color="black"),
        axis.ticks.y=element_line(size=1, color="black"),
        axis.title.x=element_text(size=16), 
        axis.title.y=element_text(size=16), 
        strip.text=element_text(size=14), 
        legend.text=element_text(size=14), 
        legend.position="right", 
        legend.title=element_text(size=14)) 
}

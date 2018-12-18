#Editor: yl3733
#Data Visualization Part

sem <- read.csv("E:\\Files\\Columbia\\18fall Courses\\EECS6690 Statistical Learning\\final\\train.csv", header = T, sep = ",", stringsAsFactors = F);
require(ggplot2);
require(ggcorrplot);
require(grid);

#correlation plot
main <- sem[,c(1,2,12,22,32,42,52,62,72)];
y <- sem[,82];
corr_main <- cor(main);
ggcorrplot(corr_main, hc.order = TRUE, outline.color = "white", lab = TRUE);

wtd_mean <- sem[,c(1,3,13,23,33,43,53,63,73)];
corr_wtd_mean <- cor(wtd_mean);
ggcorrplot(corr_wtd_mean, hc.order = TRUE, outline.color = "white", lab = TRUE);

entropy <- sem[,c(1,6,16,26,36,46,56,66,76)];
corr_entropy <- cor(entropy);
ggcorrplot(corr_entropy, hc.order = TRUE, outline.color = "white", lab = TRUE);

wtd_entropy <- sem[,c(1,7,17,27,37,47,57,67,77)];
corr_wtd_entropy <- cor(wtd_entropy);
ggcorrplot(corr_wtd_entropy, hc.order = TRUE, outline.color = "white", lab = TRUE);

radius <- sem[,c(22:31)];
corr_radius <- cor(radius);
ggcorrplot(corr_radius, hc.order = TRUE, outline.color = "white", lab = TRUE);


#scatter plot
a1<-qplot(x = main$number_of_elements, y = y, geom = "point");
a2<-qplot(x = main$mean_atomic_mass, y = y, geom = "point");
a3<-qplot(x = main$mean_fie, y = y, geom = "point");
a4<-qplot(x = main$mean_atomic_radius, y = y, geom = "point");
a5<-qplot(x = main$mean_Density, y = y, geom = "point");
a6<-qplot(x = main$mean_ElectronAffinity, y = y, geom = "point");
a7<-qplot(x = main$mean_FusionHeat, y = y, geom = "point");
a8<-qplot(x = main$mean_ThermalConductivity, y = y, geom = "point");
a9<-qplot(x = main$mean_Valence, y = y, geom = "point");

grid.newpage();
pushViewport(viewport(layout = grid.layout(3,3)));
print(a1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1));
print(a2, vp = viewport(layout.pos.row = 1, layout.pos.col = 2));
print(a3, vp = viewport(layout.pos.row = 1, layout.pos.col = 3));
print(a4, vp = viewport(layout.pos.row = 2, layout.pos.col = 1));
print(a5, vp = viewport(layout.pos.row = 2, layout.pos.col = 2));
print(a6, vp = viewport(layout.pos.row = 2, layout.pos.col = 3));
print(a7, vp = viewport(layout.pos.row = 3, layout.pos.col = 1));
print(a8, vp = viewport(layout.pos.row = 3, layout.pos.col = 2));
print(a9, vp = viewport(layout.pos.row = 3, layout.pos.col = 3));

d1<-qplot(x = sem$number_of_elements, y = y, geom = "point");
d2<-qplot(x = sem$entropy_atomic_mass, y = y, geom = "point");
d3<-qplot(x = sem$entropy_fie, y = y, geom = "point");
d4<-qplot(x = sem$entropy_atomic_radius, y = y, geom = "point");
d5<-qplot(x = sem$entropy_Density, y = y, geom = "point");
d6<-qplot(x = sem$entropy_ElectronAffinity, y = y, geom = "point");
d7<-qplot(x = sem$entropy_FusionHeat, y = y, geom = "point");
d8<-qplot(x = sem$entropy_ThermalConductivity, y = y, geom = "point");
d9<-qplot(x = sem$entropy_Valence, y = y, geom = "point");

grid.newpage();
pushViewport(viewport(layout = grid.layout(3,3)));
print(d1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1));
print(d2, vp = viewport(layout.pos.row = 1, layout.pos.col = 2));
print(d3, vp = viewport(layout.pos.row = 1, layout.pos.col = 3));
print(d4, vp = viewport(layout.pos.row = 2, layout.pos.col = 1));
print(d5, vp = viewport(layout.pos.row = 2, layout.pos.col = 2));
print(d6, vp = viewport(layout.pos.row = 2, layout.pos.col = 3));
print(d7, vp = viewport(layout.pos.row = 3, layout.pos.col = 1));
print(d8, vp = viewport(layout.pos.row = 3, layout.pos.col = 2));
print(d9, vp = viewport(layout.pos.row = 3, layout.pos.col = 3));


e1<-qplot(x = sem$mean_atomic_radius, y = y, geom = "point");
e2<-qplot(x = sem$wtd_mean_atomic_radius, y = y, geom = "point");
e3<-qplot(x = sem$gmean_atomic_radius, y = y, geom = "point");
e4<-qplot(x = sem$wtd_gmean_atomic_radius, y = y, geom = "point");
e5<-qplot(x = sem$entropy_atomic_radius, y = y, geom = "point");
e6<-qplot(x = sem$wtd_entropy_atomic_radius, y = y, geom = "point");
e7<-qplot(x = sem$range_atomic_radius, y = y, geom = "point");
e8<-qplot(x = sem$wtd_range_atomic_radius, y = y, geom = "point");
e9<-qplot(x = sem$std_atomic_radius, y = y, geom = "point");
e10<-qplot(x = sem$wtd_std_atomic_radius, y = y, geom = "point");

grid.newpage();
pushViewport(viewport(layout = grid.layout(3,4)));
print(e1, vp = viewport(layout.pos.row = 1, layout.pos.col = 1));
print(e2, vp = viewport(layout.pos.row = 1, layout.pos.col = 2));
print(e3, vp = viewport(layout.pos.row = 1, layout.pos.col = 3));
print(e4, vp = viewport(layout.pos.row = 1, layout.pos.col = 4));
print(e5, vp = viewport(layout.pos.row = 2, layout.pos.col = 1));
print(e6, vp = viewport(layout.pos.row = 2, layout.pos.col = 2));
print(e7, vp = viewport(layout.pos.row = 2, layout.pos.col = 3));
print(e8, vp = viewport(layout.pos.row = 2, layout.pos.col = 4));
print(e9, vp = viewport(layout.pos.row = 3, layout.pos.col = 2));
print(e10, vp = viewport(layout.pos.row = 3, layout.pos.col = 3));

#Insight of elementes
b1 <- ggplot(data = sem, aes(x = mean_atomic_mass, y = entropy_atomic_mass));
b1 + geom_point(aes(color = factor(number_of_elements)));

b2 <- ggplot(data = sem, aes(x = mean_atomic_mass, y = gmean_atomic_mass));
b2 + geom_point(aes(color = factor(number_of_elements)));

b3 <- ggplot(data = sem, aes(x = mean_atomic_mass, y = range_atomic_mass));
b3 + geom_point(aes(color = factor(number_of_elements)));

b4 <- ggplot(data = sem, aes(x = range_atomic_mass, y = entropy_atomic_mass));
b4 + geom_point(aes(color = factor(number_of_elements)));

c1 <- ggplot(data = sem, aes(x = mean_atomic_radius, y = entropy_atomic_radius));
c1 + geom_point(aes(color = factor(number_of_elements)));

c2 <- ggplot(data = sem, aes(x = mean_atomic_radius, y = gmean_atomic_radius));
c2 + geom_point(aes(color = factor(number_of_elements)));

c3 <- ggplot(data = sem, aes(x = mean_atomic_radius, y = range_atomic_radius));
c3 + geom_point(aes(color = factor(number_of_elements)));

c4 <- ggplot(data = sem, aes(x = range_atomic_radius, y = entropy_atomic_radius));
c4 + geom_point(aes(color = factor(number_of_elements)));

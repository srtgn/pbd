#install.packages("")
library(xlsx)
library(minpack.lm)
library(nlstools)
data <- read.xlsx("data.xlsx",sheetName = 2)
attach(data)
dim(data)
str(data)
colnames(data)=read.table("conames.txt")
plot(CP~p.Agfc,data,xlab="what u want")
corr.line <- cor(data[,6],y=data[8:19])
write.xlsx(corr.line,file = "corr.xlsx")
###################### 
## CP versus p.Agfc
m <- nls(CP~alpha_0*exp(p.Agfc*alpha_1),data = data,start=list(alpha_0=3,alpha_1=5),control = list(minFactor=1e-8))
summary(m)
plot(CP~p.Agfc,data)
lines(sort(p.Agfc),summary(m)$parameters[1,1]*exp(summary(m)$parameters[2,1]*sort(p.Agfc)),col=2)
plot(nlsResiduals(m),which=1)
identify(nlsResiduals(m)$resi1)

#########
data.rm <- data[-c(33,41),]
attach(data.rm)
mm <- nls(CP~alpha_0*exp(p.Agfc*alpha_1),data = data.rm,start=list(alpha_0=3,alpha_1=5),control = list(minFactor=1e-8))
sm <- summary(mm)
plot(CP~p.Agfc,data.rm)
lines(sort(p.Agfc),sm$parameters[1,1]*exp(sm$parameters[2,1]*sort(p.Agfc)),col=2)
plot(nlsResiduals(mm),which=5)
################
plot(CP~Ib.4Ic,data.rm)
plot(CP~factor(Ib.4Ic),data.rm)
plot(CP~fy.eq,data.rm)
plot(CP~log(V.bd.fc),data.rm)
summary(lm(CP~factor(S.H) ,data.rm))
################
# Regression
model0 <- log(CP) ~ constant + alpha_1*fc + alpha_2* exp(alpha_3 * p.Agfc) + alpha_4*H.D 
#+alpha_5* S.H +alpha_6* rs + alpha_7* rl + alpha_8* V.bd.fc

#model0 <- CP ~ const+alpha_1*rs+alpha_2*exp(alpha_3*p.Agfc)+alpha_4*(V.bd.fc^alpha_5)+alpha_4*exp(V.bd.fc*alpha_5)+#alpha_6*(fy)+
 # alpha_7*H.D+alpha_8*fc
model.out0 <- nlsLM(model0,data=data.rm,start=list(constant=-10,alpha_1=70,alpha_2=5.3,alpha_3=-2,alpha_4=.007),control = list(maxiter = 1000,maxfev=1000))
summary(model.out0)
1-(sum(residuals(model.out0)^2)/((326-1)*var(log(CP))))
plot(nlsResiduals(model.out0),which=5)
######################
model1 <- log(CP) ~ const+alpha_1*rs+alpha_2*exp(alpha_3*p.Agfc)+#alpha_4*(V.bd.fc^alpha_5)+
alpha_4*exp(V.bd.fc*alpha_5)+#alpha_6*(fy)+
  alpha_7*H.D+alpha_8*fc

model.out1 <- nlsLM(model1,data=data.rm,start=list(const=-10,alpha_1=70,alpha_2=5.3,alpha_3=-2,alpha_4=.007,
                                 alpha_5=-.8,alpha_7=.82,alpha_8=.01),control = list(maxiter = 1000,maxfev=1000))
summary(model.out1)
1-(sum(residuals(model.out1)^2)/((326-1)*var(log(CP))))
plot(nlsResiduals(model.out1),which=6)
sum(abs(residuals(model.out1)))
####################
model2 <- log(CP) ~ alpha_1+alpha_2*exp(alpha_3*p.Agfc)+#alpha_4*exp(V.bd.fc*alpha_5)+#alpha_6*(fy)+
  alpha_7*H.D+alpha_8*fc
model.out2 <- nlsLM(model2,data=data.rm,start=list(alpha_1=10,alpha_2=5.3,alpha_3=-2,#alpha_4=.007,
                                                alpha_7=.82,alpha_8=-1),control = list(maxiter = 1000,maxfev=1000))
summary(model.out2)
1-(sum(residuals(model.out2)^2)/((326-1)*var(log(CP))))
sum(abs(residuals(model.out2)))
modelCP <- 0.191213+1.869801*exp(-3.513975*p.Agfc)+0.075466*H.D-0.024974*fc
###########################
model3 <- LS ~ alpha_1+alpha_2*modelLS
model.out3 <- nlsLM(model3,data=data.rm,start=list(alpha_1=10,alpha_2=5.3),control = list(maxiter = 1000,maxfev=1000))
summary(model.out3)
1-(sum(residuals(model.out3)^2)/((326-1)*var(LS)))
sum(abs(residuals(model.out3)))
##############################################################
model4 <- LS ~ alpha_1+alpha_2*CP
model.out4 <- nlsLM(model4,data=data.rm,start=list(alpha_1=10,alpha_2=5.3),control = list(maxiter = 1000,maxfev=1000))
summary(model.out4)
1-(sum(residuals(model.out4)^2)/((326-1)*var(LS)))
sum(abs(residuals(model.out4)))
plot(nlsResiduals(model.out4),which=5)
plot(nlsResiduals(model.out4),which=6)
#################################################
model5 <- IO ~ alpha_1+alpha_2*CP
model.out5 <- nlsLM(model5,data=data.rm,start=list(alpha_1=10,alpha_2=5.3),control = list(maxiter = 1000,maxfev=1000))
summary(model.out5)
1-(sum(residuals(model.out5)^2)/((326-1)*var(IO)))
sum(abs(residuals(model.out5)))
plot(nlsResiduals(model.out5),which=5)
plot(nlsResiduals(model.out5),which=6)
#################################################
model6 <- O ~ constant + alpha_1 * exp(alpha_2 * CP)
model.out6 <- nlsLM(model6,data=data.rm,start=list(constant=0.1,alpha_1=.1,alpha_2=.1),control = list(maxiter = 1000,maxfev=1000))
summary(model.out6)
1-(sum(residuals(model.out6)^2)/((326-1)*var(O)))
sum(abs(residuals(model.out6)))
plot(nlsResiduals(model.out6),which=5)
plot(nlsResiduals(model.out6),which=6)

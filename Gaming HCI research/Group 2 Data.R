setwd("C:/Users/User/OneDrive - KU Leuven/Jobs/Data_Analysis/Gaming HCI research")
Group2Data <- read.table("Group 2 Data.csv", header=TRUE, sep="," )

Group2Data$Condition <- gsub("1", "Autonomy Support", Group2Data$Condition)
Group2Data$Condition <- gsub("2", "Non-Autonomy Support", Group2Data$Condition)

IEQScales <- Group2Data[c("TotalImm", "CI", "EI","RWD", "Ch", "Ctrl", "Condition")]
PENSScales <- Group2Data[c("TotalAuto", "Condition")]

library(psych)
describeBy(PENSScales, PENSScales$Condition)
describeBy(IEQScales, IEQScales$Condition)

library(lsr)
t.test(TotalAuto ~Condition, data = PENSScales, paired = TRUE)
describeBy(PENSScales$TotalAuto, PENSScales$Condition)
cohensD(TotalAuto ~Condition, data = PENSScales)
boxplot(TotalAuto ~Condition,
        data = PENSScales,
        ylim = c(1,5))

t.test(TotalImm ~Condition, data = IEQScales, paired = TRUE)
describeBy(IEQScales$TotalImm, IEQScales$Condition)
cohensD(TotalImm ~Condition, data = IEQScales)
boxplot(TotalImm ~Condition,
        data = IEQScales,
        ylim = c(1,5))

t.test(CI ~Condition, data = IEQScales, paired = TRUE)
describeBy(IEQScales$CI, IEQScales$Condition)
cohensD(CI ~Condition, data = IEQScales)
boxplot(CI ~Condition,
        data = IEQScales,
        ylim = c(1,5))

t.test(EI ~Condition, data = IEQScales, paired = TRUE)
describeBy(IEQScales$EI, IEQScales$Condition)
cohensD(EI ~Condition, data = IEQScales)
boxplot(EI ~Condition,
        data = IEQScales,
        ylim = c(1,5))

t.test(RWD ~Condition, data = IEQScales, paired = TRUE)
describeBy(IEQScales$RWD, IEQScales$Condition)
cohensD(RWD ~Condition, data = IEQScales)
boxplot(RWD ~Condition,
        data = IEQScales,
        ylim = c(1,5))

t.test(Ch ~Condition, data = IEQScales, paired = TRUE)
describeBy(IEQScales$Ch, IEQScales$Condition)
cohensD(Ch ~Condition, data = IEQScales)
boxplot(Ch ~Condition,
        data = IEQScales,
        ylim = c(1,5))

t.test(Ctrl ~Condition, data = IEQScales, paired = TRUE)
describeBy(IEQScales$Ctrl, IEQScales$Condition)
cohensD(Ctrl ~Condition, data = IEQScales)
boxplot(Ctrl ~Condition,
        data = IEQScales,
        ylim = c(1,5))

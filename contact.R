#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)


#LeprosyPrevalence Vaccine0 Treatment025
T0 <- read_csv("leprosy/InfectiousPrevalence.csv")
T0 <- T0[-1,]
T1 <- read_csv("contact/case1/InfectiousPrevalence.csv")
T1 <- T1[-1,]
T2 <- read_csv("contact/case2/InfectiousPrevalence.csv")
T2 <- T2[-1,]

PrevalenceV00T25 <- plot_ly( x=T0$Time, y=T0$TotalInfectious ,name = 'Contact Tracing 0',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T1$TotalInfectious, name = 'Contact Tracing 1', mode = 'lines') %>%
  add_trace(y= T2$TotalInfectious, name = 'Contact Tracing 2', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - teste contact tracing </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalenceV00T25


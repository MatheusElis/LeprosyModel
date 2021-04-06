#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)


#LeprosyPrevalence Vaccine0 Treatment025
Teste <- read_csv("dados/data-07-07-2020/Treatment095/T3Years/Vaccine099/InfectiousPrevalence.csv")
Teste <- T2[-1,]

graficototal <- plot_ly( x=Teste$Time, y=Teste$Latent ,name = 'Latent',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= Teste$Infectious, name = 'Infectious', mode = 'lines') %>%
  add_trace(y= Teste$InfectiousIdentified, name = 'Infectious Identified', mode = 'lines') %>%
  add_trace(y= Teste$InfectiousUnderTreatmean, name = 'Infectious Under Treatment', mode = 'lines') %>%
  add_trace(y= Teste$InfectiousNotCured, name = 'Infectious Not Cured', mode = 'lines') %>%
  add_trace(y= Teste$RecoveredLatent, name = 'Recovered Latent', mode = 'lines') %>%
  add_trace(y= Teste$Relapse, name = 'Relapse', mode = 'lines') %>%
  add_trace(y= Teste$TotalInfectious, name = 'Total Infectious', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - teste contact tracing </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
graficototal


#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)
g <- list(
  family = "Courier New, monospace",
  size = 24,
  color = "#000000"
)
f <- list(
  family = "Courier New, monospace",
  size = 20,
  color = "#000000"
)
m <- list(
  l = 50,
  r = 50,
  b = 100,
  t = 100,
  pad = 4
)

#LeprosyPrevalencePB Vaccine0 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v00/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v00/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v00/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v00/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v00/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

  PrevalencePBV00T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.0, Probabilidade de Tratamento 25% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV00T25
orca(PrevalencePBV00T25,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T25.pdf")
#htmlwidgets::saveWidget(PrevalencePBV00T25, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine0 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v00/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v00/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v00/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v00/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v00/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v00/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV00T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.0, Probabilidade de Tratamento 50% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV00T50
orca(PrevalencePBV00T50,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T50.pdf")
#htmlwidgets::saveWidget(PrevalencePBV00T50, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine0 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v00/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v00/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v00/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v00/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v00/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v00/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV00T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.0, Probabilidade de Tratamento 75% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV00T75
orca(PrevalencePBV00T75,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T75.pdf")
#htmlwidgets::saveWidget(PrevalencePBV00T75, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine0 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v00/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v00/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v00/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v00/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v00/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v00/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV00T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.0, Probabilidade de Tratamento 95% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV00T95

orca(PrevalencePBV00T95,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T95.pdf")
#htmlwidgets::saveWidget(PrevalencePBV00T95, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV00T95.html")
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalencePB Vaccine050 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v50/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v50/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v50/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v50/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v50/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v50/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV50T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.5, Probabilidade de Tratamento 25% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV50T25
orca(PrevalencePBV50T25,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T25.pdf")
#htmlwidgets::saveWidget(PrevalencePBV50T25, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine050 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v50/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v50/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v50/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v50/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v50/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v50/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV50T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV50T50
orca(PrevalencePBV50T50,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T50.pdf")
#htmlwidgets::saveWidget(PrevalencePBV50T50, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T50.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine050 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v50/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v50/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v50/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v50/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v50/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v50/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV50T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.5, Probabilidade de Tratamento 75% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV50T75
orca(PrevalencePBV50T75,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T75.pdf")
#htmlwidgets::saveWidget(PrevalencePBV50T75, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine050 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV50T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.5, Probabilidade de Tratamento 95% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV50T95

orca(PrevalencePBV50T95,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T95.pdf")
#htmlwidgets::saveWidget(PrevalencePBV50T95, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV50T95.html")

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalencePB Vaccine099 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v99/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v99/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v99/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v99/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v99/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v99/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV99T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.99, Probabilidade de Tratamento 25% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV99T25
orca(PrevalencePBV99T25,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T25.pdf")
#htmlwidgets::saveWidget(PrevalencePBV99T25, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T25.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine099 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v99/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v99/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v99/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v99/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v99/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v99/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV99T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV99T50
orca(PrevalencePBV99T50,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T50.pdf")
#htmlwidgets::saveWidget(PrevalencePBV99T50, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine099 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v99/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v99/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v99/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v99/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v99/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v99/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV99T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.99, Probabilidade de Tratamento 75% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV99T75
orca(PrevalencePBV99T75,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T75.pdf")
#htmlwidgets::saveWidget(PrevalencePBV99T75, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T75.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine099 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v99/InfectiousPrevalencePB.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v99/InfectiousPrevalencePB.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v99/InfectiousPrevalencePB.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v99/InfectiousPrevalencePB.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v99/InfectiousPrevalencePB.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v99/InfectiousPrevalencePB.csv")
T36m <- T36m[-seq(1,50),]

PrevalencePBV99T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
    legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    title = list(text = '<b>Hanseniase Prevalencia  PB - Imunidade BCG 0.99, Probabilidade de Tratamento 95% </b>',font = g),
    xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
    yaxis = list(title = 'Numero de  individuos infecciosos', rangemode = 'tozero',titlefont = f)
  )
PrevalencePBV99T95
orca(PrevalencePBV99T95,"imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T95.pdf")
#htmlwidgets::saveWidget(PrevalencePBV99T95, "imagenstcc/leprosyPrevalence/leprosyPrevalencePBV99T95.html")



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
div <- 10.0489

#LeprosyPrevalence Vaccine0 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV00T25 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.0, Probabilidade de Tratamento 25% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV00T25
orca(PrevalenceV00T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T25.pdf")
#orca(PrevalenceV00T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T25.svg")
#orca(PrevalenceV00T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T25.png")
#htmlwidgets::saveWidget(PrevalenceV00T25, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine0 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV00T50 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.0, Probabilidade de Tratamento 50% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV00T50
orca(PrevalenceV00T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T50.pdf")
#orca(PrevalenceV00T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T50.svg")
#orca(PrevalenceV00T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T50.png")
#htmlwidgets::saveWidget(PrevalenceV00T50, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine0 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV00T75 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.0, Probabilidade de Tratamento 75% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV00T75
orca(PrevalenceV00T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T75.pdf")
#orca(PrevalenceV00T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T75.svg")
#orca(PrevalenceV00T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T75.png")
#htmlwidgets::saveWidget(PrevalenceV00T75, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine0 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV00T95 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.0, Probabilidade de Tratamento 95% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV00T95

orca(PrevalenceV00T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T95.pdf")
#orca(PrevalenceV00T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T95.svg")
#orca(PrevalenceV00T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T95.png")
#htmlwidgets::saveWidget(PrevalenceV00T95, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV00T95.html")
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine050 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV50T25 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.5, Probabilidade de Tratamento 25% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV50T25
orca(PrevalenceV50T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T25.pdf")
#orca(PrevalenceV50T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T25.svg")
#orca(PrevalenceV50T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T25.png")
#htmlwidgets::saveWidget(PrevalenceV50T25, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV50T50 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV50T50
orca(PrevalenceV50T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T50.pdf")
#orca(PrevalenceV50T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T50.svg")
#orca(PrevalenceV50T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T50.png")
#htmlwidgets::saveWidget(PrevalenceV50T50, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T50.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV50T75 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.5, Probabilidade de Tratamento 75% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV50T75
orca(PrevalenceV50T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T75.pdf")
#orca(PrevalenceV50T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T75.svg")
#orca(PrevalenceV50T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T75.png")
#htmlwidgets::saveWidget(PrevalenceV50T75, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV50T95 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.5, Probabilidade de Tratamento 95% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV50T95

orca(PrevalenceV50T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T95.pdf")
#orca(PrevalenceV50T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T95.svg")
#orca(PrevalenceV50T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T95.png")
#htmlwidgets::saveWidget(PrevalenceV50T95, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV50T95.html")

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine099 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV99T25 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.99, Probabilidade de Tratamento 25% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV99T25
orca(PrevalenceV99T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T25.pdf")
#orca(PrevalenceV99T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T25.svg")
#orca(PrevalenceV99T25,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T25.png")
#htmlwidgets::saveWidget(PrevalenceV99T25, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T25.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV99T50 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV99T50
orca(PrevalenceV99T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T50.pdf")
#orca(PrevalenceV99T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T50.svg")
#orca(PrevalenceV99T50,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T50.png")
#htmlwidgets::saveWidget(PrevalenceV99T50, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

PrevalenceV99T75 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia  - Imunidade BCG 0.99, Probabilidade de Tratamento 75% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV99T75
orca(PrevalenceV99T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T75.pdf")
#orca(PrevalenceV99T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T75.svg")
#orca(PrevalenceV99T75,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T75.png")
#htmlwidgets::saveWidget(PrevalenceV99T75, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T75.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-seq(1,50),]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-seq(1,50),]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-seq(1,50),]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-seq(1,50),]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-seq(1,50),]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,50),]

#T0m <- T0m[-seq(152,251),]
#T3m <- T3m[-seq(152,251),]
#T6m <- T6m[-seq(152,251),]
#T12m <- T12m[-seq(152,251),]
#T24m <- T24m[-seq(152,251),]
#T36m <- T36m[-seq(152,251),]

PrevalenceV99T95 <- plot_ly( x=T0m$Time, y=T0m$ TotalInfectious/div ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T3m$ TotalInfectious/div, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T6m$ TotalInfectious/div, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T12m$ TotalInfectious/div, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T24m$ TotalInfectious/div, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T36m$ TotalInfectious/div, name = '36 Meses', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia - Imunidade BCG 0.99, Probabilidade de Tratamento 95% </b>',font = g),
          xaxis = list(range = c(100, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(range = c(0, 10),title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 1,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
PrevalenceV99T95
orca(PrevalenceV99T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T95.pdf")
#orca(PrevalenceV99T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T95.svg")
#orca(PrevalenceV99T95,"imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T95.png")
#htmlwidgets::saveWidget(PrevalenceV99T95, "imagenstcc/leprosyPrevalence/who/leprosyPrevalenceV99T95.html")

#system("mkdir imagens/svg/leprosyprevalence")
#system("mkdir imagens/pdf/leprosyprevalence")
#system("mkdir imagens/png/leprosyprevalence")
#system("mkdir imagens/html/leprosyprevalence")

#system("mv *.svg imagens/svg/leprosyprevalence")
#system("mv *.pdf imagens/pdf/leprosyprevalence")
#system("mv *.png imagens/png/leprosyprevalence")
#system("mv *.html imagens/html/leprosyprevalence")

prev <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousPrevalence.csv")
prev <- prev[-seq(1,50),]
ince <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousIncidence.csv")
ince <- ince[-seq(1,50),]

fig <- plot_ly(x=prev$Time, y=prev$TotalInfectious ,name = 'Individuos Infecciosos',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= prev$Latent, name = 'Individuos Latente', mode = 'lines') %>%
  add_trace(y= prev$InfectiousUnderTreatmean, name = 'Individuos em Tratamento', mode = 'lines') %>%
  add_trace(y= prev$RecoveredLatent, name = 'Individuos em Recuperado', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
          legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
          title = list(text = '<b>Hanseniase Prevalencia - Imunidade BCG 0.99, Probabilidade de Tratamento 95% </b>',font = g),
          xaxis = list(range = c(50, 300),title = 'Tempo (Anos)',dtick = 10,   titlefont = f),
          yaxis = list(title = 'Numero de individuos infecciosos por 10000 individuos',dtick = 50,  titlefont = f),
          shapes = list(type = "rect",
                        fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                        x0 = 50, x1 = 300, xref = "x",
                        y0 = 0, y1 = 1, yref = "y")
  )
fig  
  
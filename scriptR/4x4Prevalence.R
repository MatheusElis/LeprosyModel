#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)
library(htmlwidgets)
#config(plot_ly(), displaylogo = FALSE, collaborate = FALSE)
g <- list(
  family = "Courier New, monospace",
  size = 35,
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
#LeprosyPrevalence Vaccine0 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T25 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses', mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T25

#LeprosyPrevalence Vaccine0 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T50 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',mode = 'lines',type = 'scatter' ,showlegend = F,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )

PrevalenceV00T50

T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T75 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T75

T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v00/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v00/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v00/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v00/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v00/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T95 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses', mode = 'lines',showlegend = F) %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )

PrevalenceV00T95
Vaccine0 <- subplot(PrevalenceV00T25,PrevalenceV00T50,PrevalenceV00T75,PrevalenceV00T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine0 <- Vaccine0 %>% layout(
  margin = m,
  title = list(text = '<b>Prevalencia da Hanseniase - Imunidade BCG = 0.00</b>',font = g),
  annotations = list(
  list(x = -0.05 , y = 0.55, text = "(a)", showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = f),
  list(x = -0.05 , y = -0.05, text = "(c)", showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = f),
  list(x = 0.555 , y = 0.55, text = "(b)", showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = f),
  list(x = 0.555 , y = -0.05, text = "(d)", showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = f))
)
Vaccine0 <- Vaccine0 %>% config(mathjax = "cdn")
Vaccine0
# orca(Vaccine0,"leprosyPrevalenceV0.eps",width = 900,height = 800)
orca(Vaccine0,"imagenstcc/leprosyPrevalenceV0.pdf",width = 1200,height = 960)
#htmlwidgets::saveWidget(Vaccine0, "leprosyPrevalenceV0.html",selfcontained = FALSE)
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine050 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T25 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses', mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T25

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T50 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses',showlegend = F, mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T50


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T75 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,showlegend = F,name = '36 Meses',mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses',showlegend = F, mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T75


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T95 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses',showlegend = F, mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T95

Vaccine50 <- subplot(PrevalenceV50T25,PrevalenceV50T50,PrevalenceV50T75,PrevalenceV50T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine50 <- Vaccine50 %>% layout(
  margin = m,
  title = list(text = '<b>Prevalencia da Hanseniase - Imunidade BCG = 0.50</b>',font = g),
  annotations = list(
    list(x = -0.05 , y = 0.55, text = "(a)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = -0.05 , y = -0.05, text = "(c)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = 0.55, text = "(b)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = -0.05, text = "(d)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'))
)
Vaccine50 <- Vaccine50 %>% config(mathjax = 'cdn')
Vaccine50
orca(Vaccine50,"imagenstcc/leprosyPrevalenceV50.pdf",width = 1200,height = 960)
#htmlwidgets::saveWidget(Vaccine50, "leprosyPrevalenceV50.html",selfcontained = FALSE)

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine099 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T25 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses', mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses', mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T25


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T50 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses',showlegend = F, mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T50

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T75 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses',showlegend = F, mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T75

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v99/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v99/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v99/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v99/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v99/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v99/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T95 <- plot_ly( x=T0m$Time, y=T36m$TotalInfectious ,name = '36 Meses',showlegend = F,mode = 'lines',type = 'scatter' ,width = 1200,height = 960) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Meses',showlegend = F, mode = 'lines') %>%
  add_trace(y= T0m$TotalInfectious, name = '0 Meses',showlegend = F, mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Tempo (Anos)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Individuos Infecciosos ', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T95

Vaccine99 <- subplot(PrevalenceV99T25,PrevalenceV99T50,PrevalenceV99T75,PrevalenceV99T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine99 <- Vaccine99 %>% layout(
  margin = m,
  title = list(text = '<b>Prevalencia da Hanseniase - Imunidade BCG = 0.99</b>',font = g),
  annotations = list(
    list(x = -0.05 , y = 0.55, text = "(a)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = -0.05 , y = -0.05, text = "(c)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = 0.55, text = "(b)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = -0.05, text = "(d)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'))
)
Vaccine99 <- Vaccine99 %>% config(mathjax = 'cdn')
Vaccine99
orca(Vaccine99,"imagenstcc/leprosyPrevalenceV99.pdf",width = 1200,height = 960)
saveWidget(Vaccine99, "imagenstcc/leprosyPrevalenceV99.html")





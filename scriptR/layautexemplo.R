#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)

f <- list(
  family = "Courier New, monospace",
  size = 9,
  color = "#7f7f7f"
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

PrevalenceV00T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 200, xref = "x",
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

PrevalenceV00T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ,showlegend = F) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'scatter',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 200, xref = "x",
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

PrevalenceV00T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ,showlegend = F) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 200, xref = "x",
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

PrevalenceV00T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T95



fig <- subplot(PrevalenceV00T25,PrevalenceV00T50,PrevalenceV00T75,PrevalenceV00T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
fig %>% layout(annotations = list(
  list(x = 0.005 , y = 1.05, text = "<b>Leprosy Prevalence - Immunity Vaccine 0,Treatment 25%</b>", showarrow = F, xanchor = 'left'),
  list(x = 0.605 , y = 0.45, text = "<b>Leprosy Prevalence - Immunity Vaccine 0,Treatment 95%</b>", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
  list(x = 0.005 , y = 0.45, text = "<b>Leprosy Prevalence - Immunity Vaccine 0,Treatment 75%</b>", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
  list(x = 0.605 , y = 1.05, text = "<b>Leprosy Prevalence - Immunity Vaccine 0,Treatment 50%</b>", showarrow = F, xref='paper', yref='paper',xanchor = 'left'))
)


#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)
g <- list(
  family = "Courier New, monospace",
  size = 9,
  color = "#000000"
)
f <- list(
  family = "Courier New, monospace",
  size = 9,
  color = "#7f7f7f"
)
#LeprosyPrevalence Vaccine0 Treatment025
T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine0/InfectiousPrevalence.csv")
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
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV00T25

#LeprosyPrevalence Vaccine0 Treatment050
T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine0/InfectiousPrevalence.csv")
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
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )

#PrevalenceV00T50

T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine0/InfectiousPrevalence.csv")
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
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV00T75

T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine0/InfectiousPrevalence.csv")
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
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )

#PrevalenceV00T95


Vaccine0 <- subplot(PrevalenceV00T25,PrevalenceV00T50,PrevalenceV00T75,PrevalenceV00T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine0 <- Vaccine0 %>% layout(
  title = '<b>Leprosy Prevalence</b>',
  annotations = list(
    list(x = 0.150 , y = 1.03, text = TeX("e_\\text{v} = 0.0  , P_\\text{Treat} = 0.25"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.755 , y = 0.42, text = TeX("e_\\text{v} = 0.0  , P_\\text{Treat} = 0.95"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.150 , y = 0.42, text = TeX("e_\\text{v} = 0.0  , P_\\text{Treat} = 0.75"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.755 , y = 1.03, text = TeX("e_\\text{v} = 0.0  , P_\\text{Treat} = 0.50"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g,parse=T),
  list(x = -0.05 , y = 0.55, text = "(a)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
  list(x = -0.05 , y = -0.05, text = "(c)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
  list(x = 0.555 , y = 0.55, text = "(b)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
  list(x = 0.555 , y = -0.05, text = "(d)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'))
)
Vaccine0 <- Vaccine0 %>% config(mathjax = 'local')
Vaccine0
# orca(Vaccine0,"leprosyPrevalenceV0.eps",width = 900,height = 800)
orca(Vaccine0,"leprosyPrevalenceV0.png",width = 1200,height = 960,mathjax = T)
#htmlwidgets::saveWidget(Vaccine0, "leprosyPrevalenceV0.html",selfcontained = FALSE)
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine050 Treatment025
T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = T ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = T) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV50T25

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 Treatment050
T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV50T50


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 Treatment075
T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV50T75


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 Treatment095
T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV50T95

Vaccine50 <- subplot(PrevalenceV50T25,PrevalenceV50T50,PrevalenceV50T75,PrevalenceV50T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine50 <- Vaccine50 %>% layout(
  title = '<b>Leprosy Prevalence</b>',
  annotations = list(
    list(x = 0.150 , y = 1.03, text = TeX("e_\\text{v} = 0.50  , P_\\text{Treat} = 0.25"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.755 , y = 0.42, text = TeX("e_\\text{v} = 0.50  , P_\\text{Treat} = 0.95"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.150 , y = 0.42, text = TeX("e_\\text{v} = 0.50  , P_\\text{Treat} = 0.75"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.755 , y = 1.03, text = TeX("e_\\text{v} = 0.50  , P_\\text{Treat} = 0.50"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g,parse=T),
    list(x = -0.05 , y = 0.55, text = "(a)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = -0.05 , y = -0.05, text = "(c)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = 0.55, text = "(b)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = -0.05, text = "(d)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'))
)
Vaccine50 <- Vaccine50 %>% config(mathjax = 'local')
Vaccine50
orca(Vaccine50,"leprosyPrevalenceV50.png",width = 1200,height = 960,mathjax = T)
#htmlwidgets::saveWidget(Vaccine50, "leprosyPrevalenceV50.html",selfcontained = FALSE)

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine099 Treatment025
T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = T ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = T) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV99T25


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 Treatment050
T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV99T50

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 Treatment075
T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV99T75

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 Treatment095
T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "yellow", line = list(color = "yellow"), opacity = 0.1,
                  x0 = 0, x1 = 300, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
#PrevalenceV99T95

Vaccine99 <- subplot(PrevalenceV99T25,PrevalenceV99T50,PrevalenceV99T75,PrevalenceV99T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine99 <- Vaccine99 %>% layout(
  title = '<b>Leprosy Prevalence</b>',
  annotations = list(
    list(x = 0.150 , y = 1.03, text = TeX("e_\\text{v} = 0.99  , P_\\text{Treat} = 0.25"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.755 , y = 0.42, text = TeX("e_\\text{v} = 0.99  , P_\\text{Treat} = 0.95"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.150 , y = 0.42, text = TeX("e_\\text{v} = 0.99  , P_\\text{Treat} = 0.75"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g),
    list(x = 0.755 , y = 1.03, text = TeX("e_\\text{v} = 0.99  , P_\\text{Treat} = 0.50"), showarrow = F, xref='paper', yref='paper',xanchor = 'left',font = g,parse=T),
    list(x = -0.05 , y = 0.55, text = "(a)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = -0.05 , y = -0.05, text = "(c)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = 0.55, text = "(b)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'),
    list(x = 0.555 , y = -0.05, text = "(d)", showarrow = F, xref='paper', yref='paper',xanchor = 'left'))
)
Vaccine99 <- Vaccine99 %>% config(mathjax = 'local')
Vaccine99
orca(Vaccine99,"leprosyPrevalenceV99.png",width = 1200,height = 960,mathjax = T)
#htmlwidgets::saveWidget(Vaccine99, "leprosyPrevalenceV99.html",selfcontained = FALSE)


system("mkdir imagens/png/leprosyprevalence4x4")
system("mkdir imagens/html/leprosyprevalence4x4")

system("mv *.png imagens/png/leprosyprevalence4x4")
system("mv *.html imagens/html/leprosyprevalence4x4")

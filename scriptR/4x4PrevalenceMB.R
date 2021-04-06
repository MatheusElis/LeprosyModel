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
#LeprosyPrevalence Vaccine0 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v00/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v00/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v00/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v00/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v00/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV00T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV00T25

#LeprosyPrevalence Vaccine0 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v00/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v00/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v00/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v00/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v00/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v00/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV00T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ,showlegend = F) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'scatter',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'scatter',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV00T50

T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v00/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v00/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v00/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v00/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v00/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v00/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV00T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ,showlegend = F) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV00T75

T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v00/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v00/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v00/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v00/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v00/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v00/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV00T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV00T95


Vaccine0 <- subplot(PrevalenceMBV00T25,PrevalenceMBV00T50,PrevalenceMBV00T75,PrevalenceMBV00T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine0 <- Vaccine0 %>% layout(
  title = '<b>Leprosy Prevalence MB</b>',
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
orca(Vaccine0,"leprosyPrevalenceMBV0.png",width = 1200,height = 960,mathjax = T)
#htmlwidgets::saveWidget(Vaccine0, "leprosyPrevalenceMBV0.html",selfcontained = FALSE)
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine050 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v50/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v50/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v50/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v50/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v50/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v50/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV50T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = T ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = T) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV50T25

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v50/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v50/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v50/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v50/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v50/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v50/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV50T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV50T50


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v50/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v50/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v50/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v50/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v50/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v50/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV50T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV50T75


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV50T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV50T95

Vaccine50 <- subplot(PrevalenceMBV50T25,PrevalenceMBV50T50,PrevalenceMBV50T75,PrevalenceMBV50T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine50 <- Vaccine50 %>% layout(
  title = '<b>Leprosy Prevalence MB</b>',
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
# orca(Vaccine0,"leprosyPrevalenceV0.eps",width = 900,height = 800)
orca(Vaccine50,"leprosyPrevalenceMBV50.png",width = 1200,height = 960,mathjax = T)
#htmlwidgets::saveWidget(Vaccine50, "leprosyPrevalenceMBV50.html",selfcontained = FALSE)

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine099 T025
T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v99/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v99/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v99/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v99/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v99/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v99/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV99T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = T ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = T) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = T) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV99T25


#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T050
T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v99/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v99/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v99/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v99/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v99/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v99/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV99T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV99T50

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T075
T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v99/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v99/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v99/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v99/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v99/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v99/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV99T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV99T75

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 T095
T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v99/InfectiousPrevalenceMB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v99/InfectiousPrevalenceMB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v99/InfectiousPrevalenceMB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v99/InfectiousPrevalenceMB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v99/InfectiousPrevalenceMB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v99/InfectiousPrevalenceMB.csv")
T36m <- T36m[-1,]

PrevalenceMBV99T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter',showlegend = F ) %>%
  add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines',showlegend = F) %>%
  add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines',showlegend = F) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    legend = list(title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    xaxis = list(title = 'Time (Years)', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = 'Infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
PrevalenceMBV99T95


Vaccine99 <- subplot(PrevalenceMBV99T25,PrevalenceMBV99T50,PrevalenceMBV99T75,PrevalenceMBV99T95,margin = 0.1,nrows = 2,titleY = T,titleX = T,shareY = F,shareX = F)
Vaccine99 <- Vaccine99 %>% layout(
  title = '<b>Leprosy Prevalence MB</b>',
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
# orca(Vaccine0,"leprosyPrevalenceV0.eps",width = 900,height = 800)
orca(Vaccine99,"leprosyPrevalenceMBV99.png",width = 1200,height = 960,mathjax = T)
#htmlwidgets::saveWidget(Vaccine99, "leprosyPrevalenceMBV99.html",selfcontained = FALSE)


system("mkdir imagens/png/leprosyprevalenceMB4x4")
system("mkdir imagens/html/leprosyprevalenceMB4x4")

system("mv *.png imagens/png/leprosyprevalenceMB4x4")
system("mv *.html imagens/html/leprosyprevalenceMB4x4")

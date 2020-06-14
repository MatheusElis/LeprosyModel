#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)


#LeprosyPrevalence Vaccine0 Treatment025
T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine0/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

  PrevalenceV00T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence - Immunity Vaccine 0.0, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of infectiuos individuals'),
      shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T25
orca(PrevalenceV00T25,"leprosyPrevalenceV00T25.eps")
orca(PrevalenceV00T25,"leprosyPrevalenceV00T25.svg")
orca(PrevalenceV00T25,"leprosyPrevalenceV00T25.pdf")
htmlwidgets::saveWidget(PrevalenceV00T25, "leprosyPrevalenceV00T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine0 Treatment050
T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine0/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.0, Treatment 50% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T50
orca(PrevalenceV00T50,"leprosyPrevalenceV00T50.eps")
orca(PrevalenceV00T50,"leprosyPrevalenceV00T50.svg")
orca(PrevalenceV00T50,"leprosyPrevalenceV00T50.pdf")
htmlwidgets::saveWidget(PrevalenceV00T50, "leprosyPrevalenceV00T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine0 Treatment075
T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine0/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.0, Treatment 75% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T75
orca(PrevalenceV00T75,"leprosyPrevalenceV00T75.eps")
orca(PrevalenceV00T75,"leprosyPrevalenceV00T75.svg")
orca(PrevalenceV00T75,"leprosyPrevalenceV00T75.pdf")
htmlwidgets::saveWidget(PrevalenceV00T75, "leprosyPrevalenceV00T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine0 Treatment095
T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine0/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine0/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine0/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine0/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine0/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine0/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV00T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.0, Treatment 95% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV00T95

orca(PrevalenceV00T95,"leprosyPrevalenceV00T95.eps")
orca(PrevalenceV00T95,"leprosyPrevalenceV00T95.svg")
orca(PrevalenceV00T95,"leprosyPrevalenceV00T95.pdf")
htmlwidgets::saveWidget(PrevalenceV00T95, "leprosyPrevalenceV00T95.html")
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine050 Treatment025
T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.5, Treatment 25% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T25
orca(PrevalenceV50T25,"leprosyPrevalenceV50T25.eps")
orca(PrevalenceV50T25,"leprosyPrevalenceV50T25.svg")
orca(PrevalenceV50T25,"leprosyPrevalenceV50T25.pdf")
htmlwidgets::saveWidget(PrevalenceV50T25, "leprosyPrevalenceV50T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 Treatment050
T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.5, Treatment 50% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T50
orca(PrevalenceV50T50,"leprosyPrevalenceV50T50.eps")
orca(PrevalenceV50T50,"leprosyPrevalenceV50T50.svg")
orca(PrevalenceV50T50,"leprosyPrevalenceV50T50.pdf")
htmlwidgets::saveWidget(PrevalenceV50T50, "leprosyPrevalenceV50T50.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 Treatment075
T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.5, Treatment 75% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T75
orca(PrevalenceV50T75,"leprosyPrevalenceV50T75.eps")
orca(PrevalenceV50T75,"leprosyPrevalenceV50T75.svg")
orca(PrevalenceV50T75,"leprosyPrevalenceV50T75.pdf")
htmlwidgets::saveWidget(PrevalenceV50T75, "leprosyPrevalenceV50T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine050 Treatment095
T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine050/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine050/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine050/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine050/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine050/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine050/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV50T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.5, Treatment 95% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV50T95

orca(PrevalenceV50T95,"leprosyPrevalenceV50T95.eps")
orca(PrevalenceV50T95,"leprosyPrevalenceV50T95.svg")
orca(PrevalenceV50T95,"leprosyPrevalenceV50T95.pdf")
htmlwidgets::saveWidget(PrevalenceV50T95, "leprosyPrevalenceV50T95.html")

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalence Vaccine099 Treatment025
T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.99, Treatment 25% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T25
orca(PrevalenceV99T25,"leprosyPrevalenceV99T25.eps")
orca(PrevalenceV99T25,"leprosyPrevalenceV99T25.svg")
orca(PrevalenceV99T25,"leprosyPrevalenceV99T25.pdf")
htmlwidgets::saveWidget(PrevalenceV99T25, "leprosyPrevalenceV99T25.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 Treatment050
T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.5, Treatment 50% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T50
orca(PrevalenceV99T50,"leprosyPrevalenceV99T50.eps")
orca(PrevalenceV99T50,"leprosyPrevalenceV99T50.svg")
orca(PrevalenceV99T50,"leprosyPrevalenceV99T50.pdf")
htmlwidgets::saveWidget(PrevalenceV99T50, "leprosyPrevalenceV99T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 Treatment075
T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.99, Treatment 75% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T75
orca(PrevalenceV99T75,"leprosyPrevalenceV99T75.eps")
orca(PrevalenceV99T75,"leprosyPrevalenceV99T75.svg")
orca(PrevalenceV99T75,"leprosyPrevalenceV99T75.pdf")
htmlwidgets::saveWidget(PrevalenceV99T75, "leprosyPrevalenceV99T75.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalence Vaccine099 Treatment095
T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine099/InfectiousPrevalence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine099/InfectiousPrevalence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine099/InfectiousPrevalence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine099/InfectiousPrevalence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine099/InfectiousPrevalence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine099/InfectiousPrevalence.csv")
T36m <- T36m[-1,]

PrevalenceV99T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectious, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectious, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectious, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectious, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectious, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence - Immunity Vaccine 0.99, Treatment 95% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV99T95
orca(PrevalenceV99T95,"leprosyPrevalenceV99T95.eps")
orca(PrevalenceV99T95,"leprosyPrevalenceV99T95.svg")
orca(PrevalenceV99T95,"leprosyPrevalenceV99T95.pdf")
htmlwidgets::saveWidget(PrevalenceV99T95, "leprosyPrevalenceV99T95.html")

system("mkdir imagens/svg/leprosyprevalence")
system("mkdir imagens/eps/leprosyprevalence")
system("mkdir imagens/pdf/leprosyprevalence")
system("mkdir imagens/html/leprosyprevalence")

system("mv *.svg imagens/svg/leprosyprevalence")
system("mv *.eps imagens/eps/leprosyprevalence")
system("mv *.pdf imagens/pdf/leprosyprevalence")
system("mv *.html imagens/html/leprosyprevalence")

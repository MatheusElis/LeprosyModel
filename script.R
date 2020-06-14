#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)



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
orca(PrevalenceV00T95,"leprosyprevalenteV00T95")

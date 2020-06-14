#install.packages(c("plotly", "readr"))
library(plotly)
library(readr)
library(processx)


#LeprosyPrevalencePB Vaccine0 Treatment025
T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine0/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine0/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine0/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine0/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine0/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine0/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

  PrevalencePBV00T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.0, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV00T25
orca(PrevalencePBV00T25,"leprosyPrevalencePBV00T25.eps")
orca(PrevalencePBV00T25,"leprosyPrevalencePBV00T25.svg")
orca(PrevalencePBV00T25,"leprosyPrevalencePBV00T25.pdf")
htmlwidgets::saveWidget(PrevalencePBV00T25, "leprosyPrevalencePBV00T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine0 Treatment050
T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine0/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine0/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine0/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine0/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine0/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine0/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV00T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.0, Treatment 50% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV00T50
orca(PrevalencePBV00T50,"leprosyPrevalencePBV00T50.eps")
orca(PrevalencePBV00T50,"leprosyPrevalencePBV00T50.svg")
orca(PrevalencePBV00T50,"leprosyPrevalencePBV00T50.pdf")
htmlwidgets::saveWidget(PrevalencePBV00T50, "leprosyPrevalencePBV00T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine0 Treatment075
T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine0/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine0/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine0/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine0/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine0/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine0/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV00T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.0, Treatment 75% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV00T75
orca(PrevalencePBV00T75,"leprosyPrevalencePBV00T75.eps")
orca(PrevalencePBV00T75,"leprosyPrevalencePBV00T75.svg")
orca(PrevalencePBV00T75,"leprosyPrevalencePBV00T75.pdf")
htmlwidgets::saveWidget(PrevalencePBV00T75, "leprosyPrevalencePBV00T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine0 Treatment095
T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine0/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine0/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine0/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine0/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine0/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine0/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV00T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.0, Treatment 95% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV00T95

orca(PrevalencePBV00T95,"leprosyPrevalencePBV00T95.eps")
orca(PrevalencePBV00T95,"leprosyPrevalencePBV00T95.svg")
orca(PrevalencePBV00T95,"leprosyPrevalencePBV00T95.pdf")
htmlwidgets::saveWidget(PrevalencePBV00T95, "leprosyPrevalencePBV00T95.html")
#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalencePB Vaccine050 Treatment025
T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine050/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine050/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine050/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine050/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine050/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine050/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV50T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.5, Treatment 25% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV50T25
orca(PrevalencePBV50T25,"leprosyPrevalencePBV50T25.eps")
orca(PrevalencePBV50T25,"leprosyPrevalencePBV50T25.svg")
orca(PrevalencePBV50T25,"leprosyPrevalencePBV50T25.pdf")
htmlwidgets::saveWidget(PrevalencePBV50T25, "leprosyPrevalencePBV50T25.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine050 Treatment050
T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine050/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine050/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine050/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine050/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine050/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine050/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV50T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.5, Treatment 50% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV50T50
orca(PrevalencePBV50T50,"leprosyPrevalencePBV50T50.eps")
orca(PrevalencePBV50T50,"leprosyPrevalencePBV50T50.svg")
orca(PrevalencePBV50T50,"leprosyPrevalencePBV50T50.pdf")
htmlwidgets::saveWidget(PrevalencePBV50T50, "leprosyPrevalencePBV50T50.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine050 Treatment075
T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine050/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine050/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine050/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine050/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine050/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine050/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV50T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.5, Treatment 75% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV50T75
orca(PrevalencePBV50T75,"leprosyPrevalencePBV50T75.eps")
orca(PrevalencePBV50T75,"leprosyPrevalencePBV50T75.svg")
orca(PrevalencePBV50T75,"leprosyPrevalencePBV50T75.pdf")
htmlwidgets::saveWidget(PrevalencePBV50T75, "leprosyPrevalencePBV50T75.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine050 Treatment095
T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine050/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine050/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine050/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine050/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine050/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine050/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV50T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.5, Treatment 95% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV50T95

orca(PrevalencePBV50T95,"leprosyPrevalencePBV50T95.eps")
orca(PrevalencePBV50T95,"leprosyPrevalencePBV50T95.svg")
orca(PrevalencePBV50T95,"leprosyPrevalencePBV50T95.pdf")
htmlwidgets::saveWidget(PrevalencePBV50T95, "leprosyPrevalencePBV50T95.html")

#----------------------------------------------------------------------------------------------
#----------------------------------------------------------------------------------------------

#LeprosyPrevalencePB Vaccine099 Treatment025
T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine099/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine099/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine099/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine099/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine099/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine099/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV99T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.99, Treatment 25% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV99T25
orca(PrevalencePBV99T25,"leprosyPrevalencePBV99T25.eps")
orca(PrevalencePBV99T25,"leprosyPrevalencePBV99T25.svg")
orca(PrevalencePBV99T25,"leprosyPrevalencePBV99T25.pdf")
htmlwidgets::saveWidget(PrevalencePBV99T25, "leprosyPrevalencePBV99T25.html")

#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine099 Treatment050
T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine099/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine099/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine099/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine099/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine099/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine099/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV99T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.5, Treatment 50% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV99T50
orca(PrevalencePBV99T50,"leprosyPrevalencePBV99T50.eps")
orca(PrevalencePBV99T50,"leprosyPrevalencePBV99T50.svg")
orca(PrevalencePBV99T50,"leprosyPrevalencePBV99T50.pdf")
htmlwidgets::saveWidget(PrevalencePBV99T50, "leprosyPrevalencePBV99T50.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine099 Treatment075
T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine099/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine099/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine099/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine099/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine099/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine099/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV99T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.99, Treatment 75% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV99T75
orca(PrevalencePBV99T75,"leprosyPrevalencePBV99T75.eps")
orca(PrevalencePBV99T75,"leprosyPrevalencePBV99T75.svg")
orca(PrevalencePBV99T75,"leprosyPrevalencePBV99T75.pdf")
htmlwidgets::saveWidget(PrevalencePBV99T75, "leprosyPrevalencePBV99T75.html")
#-------------------------------------------------------------------------------------------------#
#LeprosyPrevalencePB Vaccine099 Treatment095
T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine099/InfectiousPrevalencePB.csv")
T0m <- T0m[-1,]
T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine099/InfectiousPrevalencePB.csv")
T3m <- T3m[-1,]
T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine099/InfectiousPrevalencePB.csv")
T6m <- T6m[-1,]
T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine099/InfectiousPrevalencePB.csv")
T12m <- T12m[-1,]
T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine099/InfectiousPrevalencePB.csv")
T24m <- T24m[-1,]
T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine099/InfectiousPrevalencePB.csv")
T36m <- T36m[-1,]

PrevalencePBV99T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T3m$TotalInfectiousPB, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousPB, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T12m$TotalInfectiousPB, name = '12 Months', mode = 'lines') %>%
  add_trace(y= T24m$TotalInfectiousPB, name = '24 Months', mode = 'lines') %>%
  add_trace(y= T36m$TotalInfectiousPB, name = '36 Months', mode = 'lines') %>%
  layout(
    legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
    title = '<b> Leprosy Prevalence PB - Immunity Vaccine 0.99, Treatment 95% </b>',
    xaxis = list(title = 'Time(Years)'),
    yaxis = list(title = 'Number of infectiuos individuals')
  )
PrevalencePBV99T95
orca(PrevalencePBV99T95,"leprosyPrevalencePBV99T95.eps")
orca(PrevalencePBV99T95,"leprosyPrevalencePBV99T95.svg")
orca(PrevalencePBV99T95,"leprosyPrevalencePBV99T95.pdf")
htmlwidgets::saveWidget(PrevalencePBV99T95, "leprosyPrevalencePBV99T95.html")

system("mkdir imagens/svg/leprosyprevalencePB")
system("mkdir imagens/eps/leprosyprevalencePB")
system("mkdir imagens/pdf/leprosyprevalencePB")
system("mkdir imagens/html/leprosyprevalencePB")

system("mv *.svg imagens/svg/leprosyprevalencePB")
system("mv *.eps imagens/eps/leprosyprevalencePB")
system("mv *.pdf imagens/pdf/leprosyprevalencePB")
system("mv *.html imagens/html/leprosyprevalencePB")

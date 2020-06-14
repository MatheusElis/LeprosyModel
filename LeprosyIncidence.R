  #install.packages(c("plotly", "readr"))
  library(plotly)
  library(readr)
  library(processx)
  
  
  #LeprosyIncidence Vaccine0 Treatment025
  T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine0/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine0/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine0/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine0/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine0/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine0/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV00T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
      layout(
        legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
        title = '<b> Leprosy Incidence - Immunity Vaccine 0.0, Treatment 25% </b>',
        xaxis = list(title = 'Time(Years)'),
        yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV00T25
  orca(IncidenceV00T25,"leprosyIncidenceV00T25.eps")
  orca(IncidenceV00T25,"leprosyIncidenceV00T25.svg")
  orca(IncidenceV00T25,"leprosyIncidenceV00T25.pdf")
  htmlwidgets::saveWidget(IncidenceV00T25, "leprosyIncidenceV00T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment050
  T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine0/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine0/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine0/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine0/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine0/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine0/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV00T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.0, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV00T50
  orca(IncidenceV00T50,"leprosyIncidenceV00T50.eps")
  orca(IncidenceV00T50,"leprosyIncidenceV00T50.svg")
  orca(IncidenceV00T50,"leprosyIncidenceV00T50.pdf")
  htmlwidgets::saveWidget(IncidenceV00T50, "leprosyIncidenceV00T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment075
  T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine0/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine0/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine0/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine0/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine0/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine0/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV00T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.0, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV00T75
  orca(IncidenceV00T75,"leprosyIncidenceV00T75.eps")
  orca(IncidenceV00T75,"leprosyIncidenceV00T75.svg")
  orca(IncidenceV00T75,"leprosyIncidenceV00T75.pdf")
  htmlwidgets::saveWidget(IncidenceV00T75, "leprosyIncidenceV00T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment095
  T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine0/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine0/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine0/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine0/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine0/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine0/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV00T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.0, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV00T95
  
  orca(IncidenceV00T95,"leprosyIncidenceV00T95.eps")
  orca(IncidenceV00T95,"leprosyIncidenceV00T95.svg")
  orca(IncidenceV00T95,"leprosyIncidenceV00T95.pdf")
  htmlwidgets::saveWidget(IncidenceV00T95, "leprosyIncidenceV00T95.html")
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine050 Treatment025
  T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine050/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine050/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine050/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine050/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine050/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine050/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV50T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV50T25
  orca(IncidenceV50T25,"leprosyIncidenceV50T25.eps")
  orca(IncidenceV50T25,"leprosyIncidenceV50T25.svg")
  orca(IncidenceV50T25,"leprosyIncidenceV50T25.pdf")
  htmlwidgets::saveWidget(IncidenceV50T25, "leprosyIncidenceV50T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment050
  T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine050/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine050/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine050/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine050/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine050/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine050/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV50T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV50T50
  orca(IncidenceV50T50,"leprosyIncidenceV50T50.eps")
  orca(IncidenceV50T50,"leprosyIncidenceV50T50.svg")
  orca(IncidenceV50T50,"leprosyIncidenceV50T50.pdf")
  htmlwidgets::saveWidget(IncidenceV50T50, "leprosyIncidenceV50T50.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment075
  T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine050/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine050/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine050/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine050/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine050/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine050/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV50T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV50T75
  orca(IncidenceV50T75,"leprosyIncidenceV50T75.eps")
  orca(IncidenceV50T75,"leprosyIncidenceV50T75.svg")
  orca(IncidenceV50T75,"leprosyIncidenceV50T75.pdf")
  htmlwidgets::saveWidget(IncidenceV50T75, "leprosyIncidenceV50T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment095
  T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine050/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine050/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine050/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine050/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine050/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine050/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV50T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV50T95
  
  orca(IncidenceV50T95,"leprosyIncidenceV50T95.eps")
  orca(IncidenceV50T95,"leprosyIncidenceV50T95.svg")
  orca(IncidenceV50T95,"leprosyIncidenceV50T95.pdf")
  htmlwidgets::saveWidget(IncidenceV50T95, "leprosyIncidenceV50T95.html")
  
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine099 Treatment025
  T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine099/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine099/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine099/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine099/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine099/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine099/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV99T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.99, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV99T25
  orca(IncidenceV99T25,"leprosyIncidenceV99T25.eps")
  orca(IncidenceV99T25,"leprosyIncidenceV99T25.svg")
  orca(IncidenceV99T25,"leprosyIncidenceV99T25.pdf")
  htmlwidgets::saveWidget(IncidenceV99T25, "leprosyIncidenceV99T25.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment050
  T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine099/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine099/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine099/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine099/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine099/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine099/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV99T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV99T50
  orca(IncidenceV99T50,"leprosyIncidenceV99T50.eps")
  orca(IncidenceV99T50,"leprosyIncidenceV99T50.svg")
  orca(IncidenceV99T50,"leprosyIncidenceV99T50.pdf")
  htmlwidgets::saveWidget(IncidenceV99T50, "leprosyIncidenceV99T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment075
  T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine099/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine099/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine099/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine099/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine099/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine099/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV99T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.99, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV99T75
  orca(IncidenceV99T75,"leprosyIncidenceV99T75.eps")
  orca(IncidenceV99T75,"leprosyIncidenceV99T75.svg")
  orca(IncidenceV99T75,"leprosyIncidenceV99T75.pdf")
  htmlwidgets::saveWidget(IncidenceV99T75, "leprosyIncidenceV99T75.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment095
  T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine099/InfectiousIncidence.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine099/InfectiousIncidence.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine099/InfectiousIncidence.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine099/InfectiousIncidence.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine099/InfectiousIncidence.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine099/InfectiousIncidence.csv")
  T36m <- T36m[-1,]
  
  IncidenceV99T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence - Immunity Vaccine 0.99, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceV99T95
  orca(IncidenceV99T95,"leprosyIncidenceV99T95.eps")
  orca(IncidenceV99T95,"leprosyIncidenceV99T95.svg")
  orca(IncidenceV99T95,"leprosyIncidenceV99T95.pdf")
  htmlwidgets::saveWidget(IncidenceV99T95, "leprosyIncidenceV99T95.html")
  
  system("mkdir imagens/svg/LeprosyIncidence")
  system("mkdir imagens/eps/LeprosyIncidence")
  system("mkdir imagens/pdf/LeprosyIncidence")
  system("mkdir imagens/html/LeprosyIncidence")
  
  system("mv *.svg imagens/svg/LeprosyIncidence")
  system("mv *.eps imagens/eps/LeprosyIncidence")
  system("mv *.pdf imagens/pdf/LeprosyIncidence")
  system("mv *.html imagens/html/LeprosyIncidence")

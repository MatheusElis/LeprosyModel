  #install.packages(c("plotly", "readr"))
  library(plotly)
  library(readr)
  library(processx)
  
  
  #LeprosyIncidence Vaccine0 Treatment025
  T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine0/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine0/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine0/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine0/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine0/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine0/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV00T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
      layout(
        legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
        title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.0, Treatment 25% </b>',
        xaxis = list(title = 'Time(Years)'),
        yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV00T25
  orca(IncidenceMBV00T25,"leprosyIncidenceMBV00T25.eps")
  orca(IncidenceMBV00T25,"leprosyIncidenceMBV00T25.svg")
  orca(IncidenceMBV00T25,"leprosyIncidenceMBV00T25.pdf")
  htmlwidgets::saveWidget(IncidenceMBV00T25, "leprosyIncidenceMBV00T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment050
  T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine0/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine0/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine0/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine0/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine0/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine0/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV00T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.0, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV00T50
  orca(IncidenceMBV00T50,"leprosyIncidenceMBV00T50.eps")
  orca(IncidenceMBV00T50,"leprosyIncidenceMBV00T50.svg")
  orca(IncidenceMBV00T50,"leprosyIncidenceMBV00T50.pdf")
  htmlwidgets::saveWidget(IncidenceMBV00T50, "leprosyIncidenceMBV00T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment075
  T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine0/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine0/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine0/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine0/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine0/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine0/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV00T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.0, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV00T75
  orca(IncidenceMBV00T75,"leprosyIncidenceMBV00T75.eps")
  orca(IncidenceMBV00T75,"leprosyIncidenceMBV00T75.svg")
  orca(IncidenceMBV00T75,"leprosyIncidenceMBV00T75.pdf")
  htmlwidgets::saveWidget(IncidenceMBV00T75, "leprosyIncidenceMBV00T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment095
  T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine0/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine0/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine0/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine0/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine0/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine0/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV00T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.0, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV00T95
  
  orca(IncidenceMBV00T95,"leprosyIncidenceMBV00T95.eps")
  orca(IncidenceMBV00T95,"leprosyIncidenceMBV00T95.svg")
  orca(IncidenceMBV00T95,"leprosyIncidenceMBV00T95.pdf")
  htmlwidgets::saveWidget(IncidenceMBV00T95, "leprosyIncidenceMBV00T95.html")
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine050 Treatment025
  T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine050/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine050/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine050/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine050/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine050/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine050/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV50T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.5, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV50T25
  orca(IncidenceMBV50T25,"leprosyIncidenceMBV50T25.eps")
  orca(IncidenceMBV50T25,"leprosyIncidenceMBV50T25.svg")
  orca(IncidenceMBV50T25,"leprosyIncidenceMBV50T25.pdf")
  htmlwidgets::saveWidget(IncidenceMBV50T25, "leprosyIncidenceMBV50T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment050
  T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine050/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine050/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine050/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine050/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine050/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine050/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV50T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV50T50
  orca(IncidenceMBV50T50,"leprosyIncidenceMBV50T50.eps")
  orca(IncidenceMBV50T50,"leprosyIncidenceMBV50T50.svg")
  orca(IncidenceMBV50T50,"leprosyIncidenceMBV50T50.pdf")
  htmlwidgets::saveWidget(IncidenceMBV50T50, "leprosyIncidenceMBV50T50.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment075
  T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine050/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine050/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine050/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine050/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine050/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine050/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV50T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.5, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV50T75
  orca(IncidenceMBV50T75,"leprosyIncidenceMBV50T75.eps")
  orca(IncidenceMBV50T75,"leprosyIncidenceMBV50T75.svg")
  orca(IncidenceMBV50T75,"leprosyIncidenceMBV50T75.pdf")
  htmlwidgets::saveWidget(IncidenceMBV50T75, "leprosyIncidenceMBV50T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment095
  T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine050/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine050/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine050/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine050/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine050/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine050/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV50T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.5, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV50T95
  
  orca(IncidenceMBV50T95,"leprosyIncidenceMBV50T95.eps")
  orca(IncidenceMBV50T95,"leprosyIncidenceMBV50T95.svg")
  orca(IncidenceMBV50T95,"leprosyIncidenceMBV50T95.pdf")
  htmlwidgets::saveWidget(IncidenceMBV50T95, "leprosyIncidenceMBV50T95.html")
  
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine099 Treatment025
  T0m <- read_csv("data-10-06-2020/Treatment025/Tzero/Vaccine099/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment025/T3months/Vaccine099/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment025/T6months/Vaccine099/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment025/T1Year/Vaccine099/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment025/T2Years/Vaccine099/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment025/T3Years/Vaccine099/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV99T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.99, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV99T25
  orca(IncidenceMBV99T25,"leprosyIncidenceMBV99T25.eps")
  orca(IncidenceMBV99T25,"leprosyIncidenceMBV99T25.svg")
  orca(IncidenceMBV99T25,"leprosyIncidenceMBV99T25.pdf")
  htmlwidgets::saveWidget(IncidenceMBV99T25, "leprosyIncidenceMBV99T25.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment050
  T0m <- read_csv("data-10-06-2020/Treatment050/Tzero/Vaccine099/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment050/T3months/Vaccine099/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment050/T6months/Vaccine099/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment050/T1Year/Vaccine099/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment050/T2Years/Vaccine099/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment050/T3Years/Vaccine099/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV99T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV99T50
  orca(IncidenceMBV99T50,"leprosyIncidenceMBV99T50.eps")
  orca(IncidenceMBV99T50,"leprosyIncidenceMBV99T50.svg")
  orca(IncidenceMBV99T50,"leprosyIncidenceMBV99T50.pdf")
  htmlwidgets::saveWidget(IncidenceMBV99T50, "leprosyIncidenceMBV99T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment075
  T0m <- read_csv("data-10-06-2020/Treatment075/Tzero/Vaccine099/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment075/T3months/Vaccine099/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment075/T6months/Vaccine099/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment075/T1Year/Vaccine099/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment075/T2Years/Vaccine099/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment075/T3Years/Vaccine099/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV99T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.99, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV99T75
  orca(IncidenceMBV99T75,"leprosyIncidenceMBV99T75.eps")
  orca(IncidenceMBV99T75,"leprosyIncidenceMBV99T75.svg")
  orca(IncidenceMBV99T75,"leprosyIncidenceMBV99T75.pdf")
  htmlwidgets::saveWidget(IncidenceMBV99T75, "leprosyIncidenceMBV99T75.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment095
  T0m <- read_csv("data-10-06-2020/Treatment095/Tzero/Vaccine099/InfectiousIncidenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-10-06-2020/Treatment095/T3months/Vaccine099/InfectiousIncidenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-10-06-2020/Treatment095/T6months/Vaccine099/InfectiousIncidenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-10-06-2020/Treatment095/T1Year/Vaccine099/InfectiousIncidenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-10-06-2020/Treatment095/T2Years/Vaccine099/InfectiousIncidenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-10-06-2020/Treatment095/T3Years/Vaccine099/InfectiousIncidenceMB.csv")
  T36m <- T36m[-1,]
  
  IncidenceMBV99T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout(
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence MB - Immunity Vaccine 0.99, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)'),
      yaxis = list(title = 'Number of new infectiuos individuals')
    )
  IncidenceMBV99T95
  orca(IncidenceMBV99T95,"leprosyIncidenceMBV99T95.eps")
  orca(IncidenceMBV99T95,"leprosyIncidenceMBV99T95.svg")
  orca(IncidenceMBV99T95,"leprosyIncidenceMBV99T95.pdf")
  htmlwidgets::saveWidget(IncidenceMBV99T95, "leprosyIncidenceMBV99T95.html")
  
  system("mkdir imagens/svg/LeprosyIncidenceMB")
  system("mkdir imagens/eps/LeprosyIncidenceMB")
  system("mkdir imagens/pdf/LeprosyIncidenceMB")
  system("mkdir imagens/html/LeprosyIncidenceMB")
  
  system("mv *.svg imagens/svg/LeprosyIncidenceMB")
  system("mv *.eps imagens/eps/LeprosyIncidenceMB")
  system("mv *.pdf imagens/pdf/LeprosyIncidenceMB")
  system("mv *.html imagens/html/LeprosyIncidenceMB")

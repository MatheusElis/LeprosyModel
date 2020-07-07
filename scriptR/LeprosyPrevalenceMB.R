  #install.packages(c("plotly", "readr"))
  library(plotly)
  library(readr)
  library(processx)
  f <- list(
  family = "Courier New, monospace",
  size = 9,
  color = "#7f7f7f"
)
  
  #LeprosyPrevalenceMB Vaccine0 Treatment025
  T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine0/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine0/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine0/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine0/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV00T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
      layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
        legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
        title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.0, Treatment 25% </b>',
        xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
        yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV00T25
  orca(PrevalenceMBV00T25,"leprosyPrevalenceMBV00T25.eps")
  orca(PrevalenceMBV00T25,"leprosyPrevalenceMBV00T25.svg")
  orca(PrevalenceMBV00T25,"leprosyPrevalenceMBV00T25.png")
  #htmlwidgets::saveWidget(PrevalenceMBV00T25, "leprosyPrevalenceMBV00T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine0 Treatment050
  T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine0/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine0/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine0/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine0/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV00T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.0, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV00T50
  orca(PrevalenceMBV00T50,"leprosyPrevalenceMBV00T50.eps")
  orca(PrevalenceMBV00T50,"leprosyPrevalenceMBV00T50.svg")
  orca(PrevalenceMBV00T50,"leprosyPrevalenceMBV00T50.png")
  #htmlwidgets::saveWidget(PrevalenceMBV00T50, "leprosyPrevalenceMBV00T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine0 Treatment075
  T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine0/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine0/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine0/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine0/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV00T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.0, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV00T75
  orca(PrevalenceMBV00T75,"leprosyPrevalenceMBV00T75.eps")
  orca(PrevalenceMBV00T75,"leprosyPrevalenceMBV00T75.svg")
  orca(PrevalenceMBV00T75,"leprosyPrevalenceMBV00T75.png")
  #htmlwidgets::saveWidget(PrevalenceMBV00T75, "leprosyPrevalenceMBV00T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine0 Treatment095
  T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine0/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine0/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine0/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine0/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine0/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV00T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.0, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV00T95
  
  orca(PrevalenceMBV00T95,"leprosyPrevalenceMBV00T95.eps")
  orca(PrevalenceMBV00T95,"leprosyPrevalenceMBV00T95.svg")
  orca(PrevalenceMBV00T95,"leprosyPrevalenceMBV00T95.png")
  #htmlwidgets::saveWidget(PrevalenceMBV00T95, "leprosyPrevalenceMBV00T95.html")
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyPrevalenceMB Vaccine050 Treatment025
  T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine050/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine050/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine050/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine050/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV50T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.5, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV50T25
  orca(PrevalenceMBV50T25,"leprosyPrevalenceMBV50T25.eps")
  orca(PrevalenceMBV50T25,"leprosyPrevalenceMBV50T25.svg")
  orca(PrevalenceMBV50T25,"leprosyPrevalenceMBV50T25.png")
  #htmlwidgets::saveWidget(PrevalenceMBV50T25, "leprosyPrevalenceMBV50T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine050 Treatment050
  T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine050/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine050/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine050/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine050/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV50T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV50T50
  orca(PrevalenceMBV50T50,"leprosyPrevalenceMBV50T50.eps")
  orca(PrevalenceMBV50T50,"leprosyPrevalenceMBV50T50.svg")
  orca(PrevalenceMBV50T50,"leprosyPrevalenceMBV50T50.png")
  #htmlwidgets::saveWidget(PrevalenceMBV50T50, "leprosyPrevalenceMBV50T50.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine050 Treatment075
  T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine050/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine050/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine050/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine050/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV50T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.5, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV50T75
  orca(PrevalenceMBV50T75,"leprosyPrevalenceMBV50T75.eps")
  orca(PrevalenceMBV50T75,"leprosyPrevalenceMBV50T75.svg")
  orca(PrevalenceMBV50T75,"leprosyPrevalenceMBV50T75.png")
  #htmlwidgets::saveWidget(PrevalenceMBV50T75, "leprosyPrevalenceMBV50T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine050 Treatment095
  T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine050/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine050/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine050/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine050/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine050/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV50T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.5, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV50T95
  
  orca(PrevalenceMBV50T95,"leprosyPrevalenceMBV50T95.eps")
  orca(PrevalenceMBV50T95,"leprosyPrevalenceMBV50T95.svg")
  orca(PrevalenceMBV50T95,"leprosyPrevalenceMBV50T95.png")
  #htmlwidgets::saveWidget(PrevalenceMBV50T95, "leprosyPrevalenceMBV50T95.html")
  
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyPrevalenceMB Vaccine099 Treatment025
  T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine099/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine099/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine099/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine099/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV99T25 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.99, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV99T25
  orca(PrevalenceMBV99T25,"leprosyPrevalenceMBV99T25.eps")
  orca(PrevalenceMBV99T25,"leprosyPrevalenceMBV99T25.svg")
  orca(PrevalenceMBV99T25,"leprosyPrevalenceMBV99T25.png")
  #htmlwidgets::saveWidget(PrevalenceMBV99T25, "leprosyPrevalenceMBV99T25.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine099 Treatment050
  T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine099/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine099/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine099/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine099/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV99T50 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV99T50
  orca(PrevalenceMBV99T50,"leprosyPrevalenceMBV99T50.eps")
  orca(PrevalenceMBV99T50,"leprosyPrevalenceMBV99T50.svg")
  orca(PrevalenceMBV99T50,"leprosyPrevalenceMBV99T50.png")
  #htmlwidgets::saveWidget(PrevalenceMBV99T50, "leprosyPrevalenceMBV99T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine099 Treatment075
  T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine099/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine099/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine099/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine099/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV99T75 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.99, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV99T75
  orca(PrevalenceMBV99T75,"leprosyPrevalenceMBV99T75.eps")
  orca(PrevalenceMBV99T75,"leprosyPrevalenceMBV99T75.svg")
  orca(PrevalenceMBV99T75,"leprosyPrevalenceMBV99T75.png")
  #htmlwidgets::saveWidget(PrevalenceMBV99T75, "leprosyPrevalenceMBV99T75.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyPrevalenceMB Vaccine099 Treatment095
  T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine099/InfectiousPrevalenceMB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine099/InfectiousPrevalenceMB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine099/InfectiousPrevalenceMB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine099/InfectiousPrevalenceMB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine099/InfectiousPrevalenceMB.csv")
  T36m <- T36m[-1,]
  
  PrevalenceMBV99T95 <- plot_ly( x=T0m$Time, y=T0m$TotalInfectiousMB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$TotalInfectiousMB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$TotalInfectiousMB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$TotalInfectiousMB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$TotalInfectiousMB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$TotalInfectiousMB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Prevalence MB - Immunity Vaccine 0.99, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  PrevalenceMBV99T95
  orca(PrevalenceMBV99T95,"leprosyPrevalenceMBV99T95.eps")
  orca(PrevalenceMBV99T95,"leprosyPrevalenceMBV99T95.svg")
  orca(PrevalenceMBV99T95,"leprosyPrevalenceMBV99T95.png")
  #htmlwidgets::saveWidget(PrevalenceMBV99T95, "leprosyPrevalenceMBV99T95.html")
  
  system("mkdir imagens/svg/leprosyprevalenceMB")
  system("mkdir imagens/eps/leprosyprevalenceMB")
  system("mkdir imagens/png/leprosyprevalenceMB")
  system("mkdir imagens/html/leprosyprevalenceMB")
  
  system("mv *.svg imagens/svg/leprosyprevalenceMB")
  system("mv *.eps imagens/eps/leprosyprevalenceMB")
  system("mv *.png imagens/png/leprosyprevalenceMB")
  system("mv *.html imagens/html/leprosyprevalenceMB")

  #install.packages(c("plotly", "readr"))
  library(plotly)
  library(readr)
  library(processx)
  f <- list(
  family = "Courier New, monospace",
  size = 9,
  color = "#7f7f7f"
)
  
  #LeprosyIncidence Vaccine0 Treatment025
  T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine0/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine0/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine0/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine0/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine0/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine0/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV00T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
      layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
        legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
        title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.0, Treatment 25% </b>',
        xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
        yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV00T25
  orca(IncidencePBV00T25,"leprosyIncidencePBV00T25.eps")
  orca(IncidencePBV00T25,"leprosyIncidencePBV00T25.svg")
  orca(IncidencePBV00T25,"leprosyIncidencePBV00T25.png")
  #htmlwidgets::saveWidget(IncidencePBV00T25, "leprosyIncidencePBV00T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment050
  T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine0/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine0/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine0/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine0/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine0/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine0/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV00T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.0, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV00T50
  orca(IncidencePBV00T50,"leprosyIncidencePBV00T50.eps")
  orca(IncidencePBV00T50,"leprosyIncidencePBV00T50.svg")
  orca(IncidencePBV00T50,"leprosyIncidencePBV00T50.png")
  #htmlwidgets::saveWidget(IncidencePBV00T50, "leprosyIncidencePBV00T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment075
  T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine0/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine0/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine0/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine0/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine0/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine0/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV00T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.0, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV00T75
  orca(IncidencePBV00T75,"leprosyIncidencePBV00T75.eps")
  orca(IncidencePBV00T75,"leprosyIncidencePBV00T75.svg")
  orca(IncidencePBV00T75,"leprosyIncidencePBV00T75.png")
  #htmlwidgets::saveWidget(IncidencePBV00T75, "leprosyIncidencePBV00T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 Treatment095
  T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine0/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine0/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine0/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine0/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine0/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine0/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV00T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.0, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV00T95
  
  orca(IncidencePBV00T95,"leprosyIncidencePBV00T95.eps")
  orca(IncidencePBV00T95,"leprosyIncidencePBV00T95.svg")
  orca(IncidencePBV00T95,"leprosyIncidencePBV00T95.png")
  #htmlwidgets::saveWidget(IncidencePBV00T95, "leprosyIncidencePBV00T95.html")
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine050 Treatment025
  T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine050/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine050/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine050/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine050/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine050/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine050/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV50T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.5, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV50T25
  orca(IncidencePBV50T25,"leprosyIncidencePBV50T25.eps")
  orca(IncidencePBV50T25,"leprosyIncidencePBV50T25.svg")
  orca(IncidencePBV50T25,"leprosyIncidencePBV50T25.png")
  #htmlwidgets::saveWidget(IncidencePBV50T25, "leprosyIncidencePBV50T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment050
  T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine050/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine050/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine050/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine050/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine050/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine050/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV50T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV50T50
  orca(IncidencePBV50T50,"leprosyIncidencePBV50T50.eps")
  orca(IncidencePBV50T50,"leprosyIncidencePBV50T50.svg")
  orca(IncidencePBV50T50,"leprosyIncidencePBV50T50.png")
  #htmlwidgets::saveWidget(IncidencePBV50T50, "leprosyIncidencePBV50T50.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment075
  T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine050/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine050/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine050/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine050/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine050/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine050/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV50T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.5, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV50T75
  orca(IncidencePBV50T75,"leprosyIncidencePBV50T75.eps")
  orca(IncidencePBV50T75,"leprosyIncidencePBV50T75.svg")
  orca(IncidencePBV50T75,"leprosyIncidencePBV50T75.png")
  #htmlwidgets::saveWidget(IncidencePBV50T75, "leprosyIncidencePBV50T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 Treatment095
  T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine050/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine050/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine050/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine050/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine050/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine050/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV50T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.5, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV50T95
  
  orca(IncidencePBV50T95,"leprosyIncidencePBV50T95.eps")
  orca(IncidencePBV50T95,"leprosyIncidencePBV50T95.svg")
  orca(IncidencePBV50T95,"leprosyIncidencePBV50T95.png")
  #htmlwidgets::saveWidget(IncidencePBV50T95, "leprosyIncidencePBV50T95.html")
  
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine099 Treatment025
  T0m <- read_csv("data-07-07-2020/Treatment025/Tzero/Vaccine099/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment025/T3months/Vaccine099/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment025/T6months/Vaccine099/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment025/T1Year/Vaccine099/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment025/T2Years/Vaccine099/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment025/T3Years/Vaccine099/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV99T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.99, Treatment 25% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV99T25
  orca(IncidencePBV99T25,"leprosyIncidencePBV99T25.eps")
  orca(IncidencePBV99T25,"leprosyIncidencePBV99T25.svg")
  orca(IncidencePBV99T25,"leprosyIncidencePBV99T25.png")
  #htmlwidgets::saveWidget(IncidencePBV99T25, "leprosyIncidencePBV99T25.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment050
  T0m <- read_csv("data-07-07-2020/Treatment050/Tzero/Vaccine099/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment050/T3months/Vaccine099/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment050/T6months/Vaccine099/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment050/T1Year/Vaccine099/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment050/T2Years/Vaccine099/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment050/T3Years/Vaccine099/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV99T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.5, Treatment 50% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV99T50
  orca(IncidencePBV99T50,"leprosyIncidencePBV99T50.eps")
  orca(IncidencePBV99T50,"leprosyIncidencePBV99T50.svg")
  orca(IncidencePBV99T50,"leprosyIncidencePBV99T50.png")
  #htmlwidgets::saveWidget(IncidencePBV99T50, "leprosyIncidencePBV99T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment075
  T0m <- read_csv("data-07-07-2020/Treatment075/Tzero/Vaccine099/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment075/T3months/Vaccine099/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment075/T6months/Vaccine099/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment075/T1Year/Vaccine099/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment075/T2Years/Vaccine099/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment075/T3Years/Vaccine099/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV99T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.99, Treatment 75% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV99T75
  orca(IncidencePBV99T75,"leprosyIncidencePBV99T75.eps")
  orca(IncidencePBV99T75,"leprosyIncidencePBV99T75.svg")
  orca(IncidencePBV99T75,"leprosyIncidencePBV99T75.png")
  #htmlwidgets::saveWidget(IncidencePBV99T75, "leprosyIncidencePBV99T75.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 Treatment095
  T0m <- read_csv("data-07-07-2020/Treatment095/Tzero/Vaccine099/InfectiousIncidencePB.csv")
  T0m <- T0m[-1,]
  T3m <- read_csv("data-07-07-2020/Treatment095/T3months/Vaccine099/InfectiousIncidencePB.csv")
  T3m <- T3m[-1,]
  T6m <- read_csv("data-07-07-2020/Treatment095/T6months/Vaccine099/InfectiousIncidencePB.csv")
  T6m <- T6m[-1,]
  T12m <- read_csv("data-07-07-2020/Treatment095/T1Year/Vaccine099/InfectiousIncidencePB.csv")
  T12m <- T12m[-1,]
  T24m <- read_csv("data-07-07-2020/Treatment095/T2Years/Vaccine099/InfectiousIncidencePB.csv")
  T24m <- T24m[-1,]
  T36m <- read_csv("data-07-07-2020/Treatment095/T3Years/Vaccine099/InfectiousIncidencePB.csv")
  T36m <- T36m[-1,]
  
  IncidencePBV99T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousPB ,name = '0 Months',mode = 'lines',type = 'scatter' ) %>%
    add_trace(y= T3m$NewInfectiousPB, name = '3 Months', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousPB, name = '6 Months', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousPB, name = '12 Months', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousPB, name = '24 Months', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousPB, name = '36 Months', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
      legend = list(x = 0.05, y = 0.95, title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
      title = '<b> Leprosy Incidence PB - Immunity Vaccine 0.99, Treatment 95% </b>',
      xaxis = list(title = 'Time(Years)', rangemode = 'tozero',  titlefont = f),
      yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
    )
  IncidencePBV99T95
  orca(IncidencePBV99T95,"leprosyIncidencePBV99T95.eps")
  orca(IncidencePBV99T95,"leprosyIncidencePBV99T95.svg")
  orca(IncidencePBV99T95,"leprosyIncidencePBV99T95.png")
  #htmlwidgets::saveWidget(IncidencePBV99T95, "leprosyIncidencePBV99T95.html")
  
  system("mkdir imagens/svg/LeprosyIncidencePB")
  system("mkdir imagens/eps/LeprosyIncidencePB")
  system("mkdir imagens/png/LeprosyIncidencePB")
  system("mkdir imagens/html/LeprosyIncidencePB")
  
  system("mv *.svg imagens/svg/LeprosyIncidencePB")
  system("mv *.eps imagens/eps/LeprosyIncidencePB")
  system("mv *.png imagens/png/LeprosyIncidencePB")
  system("mv *.html imagens/html/LeprosyIncidencePB")

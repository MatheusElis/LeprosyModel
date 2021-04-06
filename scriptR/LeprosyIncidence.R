  #install.packages(c("plotly", "readr"))
  library(plotly)
  library(readr)
  library(processx)
  g <- list(
    family = "Courier New, monospace",
    size = 24,
    color = "#000000"
  )
  f <- list(
    family = "Courier New, monospace",
    size = 20,
    color = "#000000"
  )
  m <- list(
    l = 50,
    r = 50,
    b = 100,
    t = 100,
    pad = 4
  )
  seq(1,50)
  #LeprosyIncidence Vaccine0 T025
  T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v00/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v00/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v00/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v00/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v00/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV00T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
      layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
        legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
        title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.0, Probabilidade de Tratamento 25% </b>',font = g),
        xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
        yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV00T25
  orca(IncidenceV00T25,"imagenstcc/leprosyIncidence/leprosyIncidenceV00T25.pdf")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 T050
  T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v00/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v00/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v00/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v00/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v00/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v00/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV00T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.0, Probabilidade de Tratamento 50% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV00T50
  orca(IncidenceV00T50,"imagenstcc/leprosyIncidence/leprosyIncidenceV00T50.pdf")
  #htmlwidgets::saveWidget(IncidenceV00T50, "imagenstcc/leprosyIncidence/leprosyIncidenceV00T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 T075
  T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v00/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v00/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v00/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v00/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v00/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v00/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV00T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.0, Probabilidade de Tratamento 75% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV00T75
  orca(IncidenceV00T75,"imagenstcc/leprosyIncidence/leprosyIncidenceV00T75.pdf")
  #htmlwidgets::saveWidget(IncidenceV00T75, "imagenstcc/leprosyIncidence/leprosyIncidenceV00T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 T095
  T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v00/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v00/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v00/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v00/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v00/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v00/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV00T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.0, Probabilidade de Tratamento 95% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV00T95
  
  orca(IncidenceV00T95,"imagenstcc/leprosyIncidence/leprosyIncidenceV00T95.pdf")
  #htmlwidgets::saveWidget(IncidenceV00T95, "imagenstcc/leprosyIncidence/leprosyIncidenceV00T95.html")
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine050 T025
  T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v50/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v50/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v50/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v50/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v50/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v50/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV50T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.5, Probabilidade de Tratamento 25% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV50T25
  orca(IncidenceV50T25,"imagenstcc/leprosyIncidence/leprosyIncidenceV50T25.pdf")
  #htmlwidgets::saveWidget(IncidenceV50T25, "imagenstcc/leprosyIncidence/leprosyIncidenceV50T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 T050
  T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v50/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v50/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v50/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v50/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v50/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v50/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV50T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV50T50
  orca(IncidenceV50T50,"imagenstcc/leprosyIncidence/leprosyIncidenceV50T50.pdf")
  #htmlwidgets::saveWidget(IncidenceV50T50, "imagenstcc/leprosyIncidence/leprosyIncidenceV50T50.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 T075
  T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v50/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v50/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v50/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v50/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v50/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v50/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV50T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.5, Probabilidade de Tratamento 75% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV50T75
  orca(IncidenceV50T75,"imagenstcc/leprosyIncidence/leprosyIncidenceV50T75.pdf")
  #htmlwidgets::saveWidget(IncidenceV50T75, "imagenstcc/leprosyIncidence/leprosyIncidenceV50T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 T095
  T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV50T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.5, Probabilidade de Tratamento 95% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV50T95
  
  orca(IncidenceV50T95,"imagenstcc/leprosyIncidence/leprosyIncidenceV50T95.pdf")
  #htmlwidgets::saveWidget(IncidenceV50T95, "imagenstcc/leprosyIncidence/leprosyIncidenceV50T95.html")
  
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine099 T025
  T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v99/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v99/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v99/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v99/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v99/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v99/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV99T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.99, Probabilidade de Tratamento 25% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV99T25
  orca(IncidenceV99T25,"imagenstcc/leprosyIncidence/leprosyIncidenceV99T25.pdf")
  #htmlwidgets::saveWidget(IncidenceV99T25, "imagenstcc/leprosyIncidence/leprosyIncidenceV99T25.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 T050
  T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v99/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v99/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v99/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v99/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v99/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v99/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV99T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV99T50
  orca(IncidenceV99T50,"imagenstcc/leprosyIncidence/leprosyIncidenceV99T50.pdf")
  #htmlwidgets::saveWidget(IncidenceV99T50, "imagenstcc/leprosyIncidence/leprosyIncidenceV99T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 T075
  T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v99/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v99/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v99/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v99/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v99/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v99/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV99T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.99, Probabilidade de Tratamento 75% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV99T75
  orca(IncidenceV99T75,"imagenstcc/leprosyIncidence/leprosyIncidenceV99T75.pdf")
  #htmlwidgets::saveWidget(IncidenceV99T75, "imagenstcc/leprosyIncidence/leprosyIncidenceV99T75.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 T095
  T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v99/InfectiousIncidence.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v99/InfectiousIncidence.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v99/InfectiousIncidence.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v99/InfectiousIncidence.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v99/InfectiousIncidence.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v99/InfectiousIncidence.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceV99T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectious ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectious, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectious, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectious, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectious, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectious, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list ( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia - Imunidade BCG 0.99, Probabilidade de Tratamento 95% </b>',font = g),
      xaxis = list(title =  'Tempo (Anos)',  titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceV99T95
  orca(IncidenceV99T95,"imagenstcc/leprosyIncidence/leprosyIncidenceV99T95.pdf")
  #htmlwidgets::saveWidget(IncidenceV99T95, "imagenstcc/leprosyIncidence/leprosyIncidenceV99T95.html")
  

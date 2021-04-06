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
  #LeprosyIncidence Vaccine0 T025
  T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v00/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v00/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v00/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v00/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v00/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV00T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
      layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
        legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
        title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.0, Probabilidade de Tratamento 25% </b>',font = g),
        xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
        yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV00T25
  orca(IncidenceMBV00T25,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T25.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV00T25, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 T050
  T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v00/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v00/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v00/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v00/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v00/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v00/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV00T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.0, Probabilidade de Tratamento 50% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV00T50
  orca(IncidenceMBV00T50,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T50.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV00T50, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 T075
  T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v00/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v00/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v00/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v00/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v00/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v00/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV00T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.0, Probabilidade de Tratamento 75% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV00T75
  orca(IncidenceMBV00T75,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T75.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV00T75, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine0 T095
  T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v00/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v00/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v00/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v00/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v00/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v00/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV00T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.0, Probabilidade de Tratamento 95% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV00T95
  
  orca(IncidenceMBV00T95,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T95.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV00T95, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV00T95.html")
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine050 T025
  T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v50/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v50/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v50/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v50/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v50/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v50/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV50T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.5, Probabilidade de Tratamento 25% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV50T25
  orca(IncidenceMBV50T25,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T25.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV50T25, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T25.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 T050
  T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v50/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v50/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v50/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v50/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v50/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v50/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV50T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV50T50
  orca(IncidenceMBV50T50,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T50.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV50T50, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T50.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 T075
  T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v50/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v50/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v50/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v50/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v50/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v50/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV50T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.5, Probabilidade de Tratamento 75% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV50T75
  orca(IncidenceMBV50T75,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T75.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV50T75, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T75.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine050 T095
  T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV50T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.5, Probabilidade de Tratamento 95% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV50T95
  
  orca(IncidenceMBV50T95,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T95.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV50T95, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV50T95.html")
  
  #----------------------------------------------------------------------------------------------
  #----------------------------------------------------------------------------------------------
  
  #LeprosyIncidence Vaccine099 T025
  T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v99/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T025/it03m/v99/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T025/it06m/v99/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T025/it12m/v99/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T025/it24m/v99/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T025/it36m/v99/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV99T25 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.99, Probabilidade de Tratamento 25% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV99T25
  orca(IncidenceMBV99T25,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T25.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV99T25, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T25.html")
  
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 T050
  T0m <- read_csv("dados/data-02-02-2021/T050/it00m/v99/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T050/it03m/v99/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T050/it06m/v99/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T050/it12m/v99/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T050/it24m/v99/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T050/it36m/v99/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV99T50 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.5, Probabilidade de Tratamento 50% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV99T50
  orca(IncidenceMBV99T50,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T50.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV99T50, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T50.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 T075
  T0m <- read_csv("dados/data-02-02-2021/T075/it00m/v99/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T075/it03m/v99/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T075/it06m/v99/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T075/it12m/v99/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T075/it24m/v99/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T075/it36m/v99/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV99T75 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.99, Probabilidade de Tratamento 75% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV99T75
  orca(IncidenceMBV99T75,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T75.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV99T75, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T75.html")
  #-------------------------------------------------------------------------------------------------#
  #LeprosyIncidence Vaccine099 T095
  T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v99/InfectiousIncidenceMB.csv")
  T0m <- T0m[-seq(1,50),]
  T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v99/InfectiousIncidenceMB.csv")
  T3m <- T3m[-seq(1,50),]
  T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v99/InfectiousIncidenceMB.csv")
  T6m <- T6m[-seq(1,50),]
  T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v99/InfectiousIncidenceMB.csv")
  T12m <- T12m[-seq(1,50),]
  T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v99/InfectiousIncidenceMB.csv")
  T24m <- T24m[-seq(1,50),]
  T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v99/InfectiousIncidenceMB.csv")
  T36m <- T36m[-seq(1,50),]
  
  IncidenceMBV99T95 <- plot_ly( x=T0m$Time, y=T0m$NewInfectiousMB ,name = '0 Meses',mode = 'lines',type = 'scatter',width = 1200,height = 960 ) %>%
    add_trace(y= T3m$NewInfectiousMB, name = '3 Meses', mode = 'lines') %>%
    add_trace(y= T6m$NewInfectiousMB, name = '6 Meses', mode = 'lines') %>%
    add_trace(y= T12m$NewInfectiousMB, name = '12 Meses', mode = 'lines') %>%
    add_trace(y= T24m$NewInfectiousMB, name = '24 Meses', mode = 'lines') %>%
    add_trace(y= T36m$NewInfectiousMB, name = '36 Meses', mode = 'lines') %>%
    layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),        margin = m,
      legend = list( title=list(text='<b> Tempo de Identificacao </b>'),bgcolor="#E2E2E2"),
      title = list(text = '<b>Hanseniase Incidencia MB - Imunidade BCG 0.99, Probabilidade de Tratamento 95% </b>',font = g),
      xaxis = list(title = 'Tempo (Anos)',   titlefont = f),
      yaxis = list(title = 'Numero de novos individuos infecciosos', rangemode = 'tozero',titlefont = f)
    )
  IncidenceMBV99T95
  orca(IncidenceMBV99T95,"imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T95.pdf")
  #htmlwidgets::saveWidget(IncidenceMBV99T95, "imagenstcc/leprosyIncidence/leprosyIncidenceMBV99T95.html")
  

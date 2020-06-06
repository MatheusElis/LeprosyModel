library(plotly)
library(readr)
#LeprosyPrevalence Vaccine0 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine0/AllDataPrevalence.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine0/AllDataPrevalence.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine0/AllDataPrevalence.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine0/AllDataPrevalence.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine0/AllDataPrevalence.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine0/AllDataPrevalence.csv")

  PrevalenceV0T75 <- plot_ly( x=T1$Time, y=T1$TotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$TotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$TotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$TotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Prevalence - Vaccine 0, Treatment 75',
    xaxis = list(title = 'Time'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV0T75
orca(PrevalenceV0T75, "PrevalenceV0T75.png")
#####################################################################################################################



#LeprosyPrevalence Vaccine050 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine050/AllDataPrevalence.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine050/AllDataPrevalence.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine050/AllDataPrevalence.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine050/AllDataPrevalence.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine050/AllDataPrevalence.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine050/AllDataPrevalence.csv")
PrevalenceV050T75 <- plot_ly( x=T1$Time, y=T1$TotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$TotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$TotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$TotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Prevalence - Vaccine 050, Treatment 75',
    xaxis = list(title = 'Time'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV050T75
######################################################################################################################


#LeprosyPrevalence Vaccine099 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine099/AllDataPrevalence.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine099/AllDataPrevalence.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine099/AllDataPrevalence.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine099/AllDataPrevalence.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine099/AllDataPrevalence.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine099/AllDataPrevalence.csv")
PrevalenceV099T75 <- plot_ly( x=T1$Time, y=T1$TotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$TotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$TotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$TotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Prevalence - Vaccine 099, Treatment 75',
    xaxis = list(title = 'Time'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV099T75
######################################################################################################################



#LeprosyPrevalence Vaccine0 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine0/AllDataPrevalence.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine0/AllDataPrevalence.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine0/AllDataPrevalence.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine0/AllDataPrevalence.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine0/AllDataPrevalence.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine0/AllDataPrevalence.csv")

PrevalenceV0T95 <- plot_ly( x=T1$Time, y=T1$TotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$TotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$TotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$TotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Prevalence - Vaccine 0, Treatment 95',
    xaxis = list(title = 'Time'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV0T95
#####################################################################################################################



#LeprosyPrevalence Vaccine050 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine050/AllDataPrevalence.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine050/AllDataPrevalence.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine050/AllDataPrevalence.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine050/AllDataPrevalence.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine050/AllDataPrevalence.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine050/AllDataPrevalence.csv")

PrevalenceV050T95 <- plot_ly( x=T1$Time, y=T1$TotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$TotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$TotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$TotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Prevalence - Vaccine 050, Treatment 95',
    xaxis = list(title = 'Time'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV050T95
######################################################################################################################


#LeprosyPrevalence Vaccine099 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine099/AllDataPrevalence.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine099/AllDataPrevalence.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine099/AllDataPrevalence.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine099/AllDataPrevalence.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine099/AllDataPrevalence.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine099/AllDataPrevalence.csv")

PrevalenceV099T95 <- plot_ly( x=T1$Time, y=T1$TotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$TotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$TotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$TotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$TotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$TotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Prevalence - Vaccine 099, Treatment 95',
    xaxis = list(title = 'Time'),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.3,
                  x0 = 0, x1 = 200, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
PrevalenceV099T95
######################################################################################################################


#####################################################################################################################
#####################################################################################################################
#####################################################################################################################

#####################################################################################################################
#LeprosyIncidenceMB Vaccine0 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine0/leprosyIncidenceMB.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine0/leprosyIncidenceMB.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine0/leprosyIncidenceMB.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine0/leprosyIncidenceMB.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine0/leprosyIncidenceMB.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine0/leprosyIncidenceMB.csv")

IncidenceMBV0T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousM ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousM, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousM, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousM, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousM, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousM, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidenceMB - Vaccine 0, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidenceMBV0T75
#####################################################################################################################

#####################################################################################################################
#LeprosyIncidenceMB Vaccine050 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine050/leprosyIncidenceMB.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine050/leprosyIncidenceMB.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine050/leprosyIncidenceMB.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine050/leprosyIncidenceMB.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine050/leprosyIncidenceMB.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine050/leprosyIncidenceMB.csv")

IncidenceMBV050T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousM ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousM, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousM, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousM, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousM, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousM, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidenceMB - Vaccine 050, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidenceMBV050T75
#####################################################################################################################


#####################################################################################################################
#LeprosyIncidenceMB Vaccine099 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine099/leprosyIncidenceMB.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine099/leprosyIncidenceMB.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine099/leprosyIncidenceMB.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine099/leprosyIncidenceMB.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine099/leprosyIncidenceMB.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine099/leprosyIncidenceMB.csv")

IncidenceMBV099T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousM ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousM, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousM, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousM, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousM, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousM, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidenceMB - Vaccine 099, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidenceMBV099T75
#####################################################################################################################


#####################################################################################################################
#LeprosyIncidenceMB Vaccine0 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine0/leprosyIncidenceMB.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine0/leprosyIncidenceMB.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine0/leprosyIncidenceMB.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine0/leprosyIncidenceMB.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine0/leprosyIncidenceMB.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine0/leprosyIncidenceMB.csv")

IncidenceMBV0T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousM ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousM, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousM, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousM, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousM, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousM, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidenceMB - Vaccine 0, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidenceMBV0T95
#####################################################################################################################

#####################################################################################################################
#LeprosyIncidenceMB Vaccine050 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine050/leprosyIncidenceMB.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine050/leprosyIncidenceMB.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine050/leprosyIncidenceMB.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine050/leprosyIncidenceMB.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine050/leprosyIncidenceMB.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine050/leprosyIncidenceMB.csv")

IncidenceMBV050T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousM ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousM, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousM, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousM, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousM, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousM, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidenceMB - Vaccine 050, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidenceMBV050T95
#####################################################################################################################


#####################################################################################################################
#LeprosyIncidenceMB Vaccine099 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine099/leprosyIncidenceMB.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine099/leprosyIncidenceMB.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine099/leprosyIncidenceMB.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine099/leprosyIncidenceMB.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine099/leprosyIncidenceMB.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine099/leprosyIncidenceMB.csv")

IncidenceMBV099T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousM ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousM, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousM, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousM, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousM, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousM, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidenceMB - Vaccine 099, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidenceMBV099T95
#####################################################################################################################
#fim incidence mb


#####################################################################################################################
#LeprosyIncidencePB Vaccine0 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine0/leprosyIncidencePB.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine0/leprosyIncidencePB.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine0/leprosyIncidencePB.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine0/leprosyIncidencePB.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine0/leprosyIncidencePB.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine0/leprosyIncidencePB.csv")

IncidencePBV0T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousP ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousP, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousP, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousP, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousP, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousP, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidencePB - Vaccine 0, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidencePBV0T75
#####################################################################################################################

#####################################################################################################################
#LeprosyIncidencePB Vaccine050 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine050/leprosyIncidencePB.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine050/leprosyIncidencePB.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine050/leprosyIncidencePB.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine050/leprosyIncidencePB.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine050/leprosyIncidencePB.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine050/leprosyIncidencePB.csv")

IncidencePBV050T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousP ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousP, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousP, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousP, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousP, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousP, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidencePB - Vaccine 050, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidencePBV050T75
#####################################################################################################################


#####################################################################################################################
#LeprosyIncidencePB Vaccine099 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine099/leprosyIncidencePB.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine099/leprosyIncidencePB.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine099/leprosyIncidencePB.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine099/leprosyIncidencePB.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine099/leprosyIncidencePB.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine099/leprosyIncidencePB.csv")

IncidencePBV099T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousP ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousP, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousP, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousP, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousP, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousP, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidencePB - Vaccine 099, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidencePBV099T75
#####################################################################################################################


#####################################################################################################################
#LeprosyIncidencePB Vaccine0 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine0/leprosyIncidencePB.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine0/leprosyIncidencePB.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine0/leprosyIncidencePB.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine0/leprosyIncidencePB.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine0/leprosyIncidencePB.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine0/leprosyIncidencePB.csv")

IncidencePBV0T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousP ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousP, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousP, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousP, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousP, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousP, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidencePB - Vaccine 0, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidencePBV0T95
#####################################################################################################################

#####################################################################################################################
#LeprosyIncidencePB Vaccine050 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine050/leprosyIncidencePB.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine050/leprosyIncidencePB.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine050/leprosyIncidencePB.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine050/leprosyIncidencePB.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine050/leprosyIncidencePB.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine050/leprosyIncidencePB.csv")

IncidencePBV050T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousP ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousP, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousP, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousP, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousP, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousP, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidencePB - Vaccine 050, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidencePBV050T95
#####################################################################################################################


########################################  #############################################################################
#LeprosyIncidencePB Vaccine099 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine099/leprosyIncidencePB.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine099/leprosyIncidencePB.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine099/leprosyIncidencePB.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine099/leprosyIncidencePB.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine099/leprosyIncidencePB.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine099/leprosyIncidencePB.csv")

IncidencePBV099T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousP ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousP, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousP, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousP, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousP, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousP, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy IncidencePB - Vaccine 099, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidencePBV099T95
#####################################################################################################################
#fim incidence Pb



######################################################################################################################
######################################################################################################################
######################################################################################################################
#INCIDENCE

#LeprosyIncidence Vaccine0 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine0/AllDataincidence.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine0/AllDataincidence.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine0/AllDataincidence.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine0/AllDataincidence.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine0/AllDataincidence.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine0/AllDataincidence.csv")

IncidenceV0T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Incidence - Vaccine 0, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidenceV0T75

#*********************************************************************************************************************

#LeprosyIncidence Vaccine50 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine050/AllDataincidence.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine050/AllDataincidence.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine050/AllDataincidence.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine050/AllDataincidence.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine050/AllDataincidence.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine050/AllDataincidence.csv")

IncidenceV050T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Incidence - Vaccine 050, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidenceV050T75

#*********************************************************************************************************************
#LeprosyIncidence Vaccine99 Treatment075
T1 <- read_csv("Treatment075/T1Year/Vaccine099/AllDataincidence.csv")
T2 <- read_csv("Treatment075/T2Years/Vaccine099/AllDataincidence.csv")
T3 <- read_csv("Treatment075/T3Years/Vaccine099/AllDataincidence.csv")
T3m <- read_csv("Treatment075/T3months/Vaccine099/AllDataincidence.csv")
T6m <- read_csv("Treatment075/T6months/Vaccine099/AllDataincidence.csv")
T0 <- read_csv("Treatment075/Tzero/Vaccine099/AllDataincidence.csv")

IncidenceV099T75 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Incidence - Vaccine 099, Treatment 75',
    xaxis = list(title = 'Time')
  )
IncidenceV099T75

#*********************************************************************************************************************
#LeprosyIncidence Vaccine0 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine0/AllDataincidence.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine0/AllDataincidence.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine0/AllDataincidence.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine0/AllDataincidence.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine0/AllDataincidence.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine0/AllDataincidence.csv")

IncidenceV0T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Incidence - Vaccine 0, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidenceV0T95

#*********************************************************************************************************************

#LeprosyIncidence Vaccine50 Treatment075
T1 <- read_csv("Treatment095/T1Year/Vaccine050/AllDataincidence.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine050/AllDataincidence.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine050/AllDataincidence.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine050/AllDataincidence.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine050/AllDataincidence.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine050/AllDataincidence.csv")

IncidenceV050T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Incidence - Vaccine 050, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidenceV050T95

#*********************************************************************************************************************
#LeprosyIncidence Vaccine99 Treatment095
T1 <- read_csv("Treatment095/T1Year/Vaccine099/AllDataincidence.csv")
T2 <- read_csv("Treatment095/T2Years/Vaccine099/AllDataincidence.csv")
T3 <- read_csv("Treatment095/T3Years/Vaccine099/AllDataincidence.csv")
T3m <- read_csv("Treatment095/T3months/Vaccine099/AllDataincidence.csv")
T6m <- read_csv("Treatment095/T6months/Vaccine099/AllDataincidence.csv")
T0 <- read_csv("Treatment095/Tzero/Vaccine099/AllDataincidence.csv")

IncidenceV099T95 <- plot_ly( x=T1$Time, y=T1$NewTotalInfectiousTotal ,name = '1 Year',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T2$NewTotalInfectiousTotal, name = '2 Years', mode = 'lines') %>%
  add_trace(y= T3$NewTotalInfectiousTotal, name = '3 Years', mode = 'lines') %>%
  add_trace(y= T3m$NewTotalInfectiousTotal, name = '3 Months', mode = 'lines') %>%
  add_trace(y= T6m$NewTotalInfectiousTotal, name = '6 Months', mode = 'lines') %>%
  add_trace(y= T0$NewTotalInfectiousTotal, name = '0 Years', mode = 'lines') %>%
  layout(
    title = 'Leprosy Incidence - Vaccine 099, Treatment 95',
    xaxis = list(title = 'Time')
  )
IncidenceV099T95

#*********************************************************************************************************************

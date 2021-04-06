T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousIncidence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousIncidence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousIncidence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousIncidence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousIncidence.csv")
T24m <- T24m[-1,]
NT36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousIncidence.csv")
NT36m <- T36m[-seq(1,51),]
seq(1,51)
IncidenceV50T75 <- plot_ly( x=T36m$Time, y=T36m$NewLatent ,name = 'New Latent',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= T36m$NewLatent, name = 'New Latent', type = 'bar') %>%
  add_trace(y= T36m$NewInfectious, name = 'New Infectious', type = 'bar') %>%
  #add_trace(y= T36m$NewLatent, name = 'New Latent', type = 'bar') %>%
  add_trace(y= T36m$NewInfectiousIdentified, name = 'New Infectious Identified', mode = 'lines') %>%
  add_trace(y= T36m$NewInfectiousUnderTreatmean, name = 'New Infectious Under Treatmeat', mode = 'lines') %>%
  add_trace(y= T36m$NewInfectiousNotCured, name = 'New Infectious Not Cured', mode = 'lines') %>%
  add_trace(y= T36m$NewRecoveredLatent, name = 'New Recovered Latent', mode = 'lines') %>%
  add_trace(y= T36m$NewRelapse, name = 'New Relapse', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
          legend = list( title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
          title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 75% </b>',
          xaxis = list(title = 'Time(Years)', showline = TRUE,  titlefont = f),
          yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
IncidenceV50T75

T0m <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousIncidence.csv")
T0m <- T0m[-1,]
T3m <- read_csv("dados/data-02-02-2021/T095/it03m/v50/InfectiousIncidence.csv")
T3m <- T3m[-1,]
T6m <- read_csv("dados/data-02-02-2021/T095/it06m/v50/InfectiousIncidence.csv")
T6m <- T6m[-1,]
T12m <- read_csv("dados/data-02-02-2021/T095/it12m/v50/InfectiousIncidence.csv")
T12m <- T12m[-1,]
T24m <- read_csv("dados/data-02-02-2021/T095/it24m/v50/InfectiousIncidence.csv")
T24m <- T24m[-1,]
T36m <- read_csv("dados/data-02-02-2021/T095/it36m/v50/InfectiousPrevalence.csv")
T36m <- T36m[-seq(1,51),]
seq(1,51)
IncidenceV50T75 <- plot_ly( x=T36m$Time, y=T36m$Latent ,name = 'Latent',mode = 'lines',type = 'scatter' ) %>%
  add_trace(y= NT36m$NewLatent, name = 'New Latent', type = 'bar') %>%
  add_trace(y= T36m$Infectious, name = 'New Infectious', type = 'bar') %>%
  #add_trace(y= T36m$NewLatent, name = 'New Latent', type = 'bar') %>%
  add_trace(y= T36m$InfectiousIdentified, name = 'New Infectious Identified', mode = 'lines') %>%
  add_trace(y= T36m$InfectiousUnderTreatmean, name = 'New Infectious Under Treatmeat', mode = 'lines') %>%
  add_trace(y= T36m$InfectiousNotCured, name = 'New Infectious Not Cured', mode = 'lines') %>%
  add_trace(y= T36m$RecoveredLatent, name = 'New Recovered Latent', mode = 'lines') %>%
  add_trace(y= T36m$Relapse, name = 'New Relapse', mode = 'lines') %>%
  layout( colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
          legend = list( title=list(text='<b> Identification Time </b>'),bgcolor="#E2E2E2"),
          title = '<b> Leprosy Incidence - Immunity Vaccine 0.5, Treatment 75% </b>',
          xaxis = list(title = 'Time(Years)', showline = TRUE,  titlefont = f),
          yaxis = list(title = 'Number of new infectiuos individuals', rangemode = 'tozero',titlefont = f)
  )
IncidenceV50T75

inc <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousIncidence.csv")
inc <- inc[-seq(1,51),]

prev <- read_csv("dados/data-02-02-2021/T095/it00m/v50/InfectiousPrevalence.csv")
prev <- prev[-seq(1,51),]

teste <- plot_ly( x=inc$Time, y=inc$NewLatent, name = 'New Latent',mode= 'lines',type = 'scatter') %>%
  add_trace(y= inc$NewInfectious, name = 'New Infectious ', mode = 'lines') %>%
  add_trace(y= inc$NewInfectiousIdentified, name = 'New Infectious Identifed', mode = 'lines') %>%
  add_trace(y= inc$NewInfectiousUnderTreatmean, name = 'New Infectious under treatment', mode = 'lines') %>%
  add_trace(y= prev$TotalInfectious, name = 'total infeccioso ', mode = 'lines') %>%
  add_trace(y= prev$Latent, name = 'latent ', type = 'bar') 
teste


T0m <- read_csv("dados/data-02-02-2021/T025/it00m/v00/InfectiousPrevalence.csv")
T0m <- T0m[-seq(102,301),]
T0m <- T0m[-1,]
prevale <- plot_ly( x=T0m$Time, y=T0m$TotalInfectious ,name = 'Prevalência Hanseníase',mode = 'lines',type = 'scatter' , width = 1200, height = 960) %>%
  layout(
    colorway = c('#1f77b4', '#ff7f0e', '#2ca02c', '#d62728', '#9467bd', '#8c564b'),
    margin = m,
    title = list(text = '<b> Calibragem do parametro de infectividade </b>',font = g),
    xaxis = list(title = '<b>Tempo (Anos)</b>', rangemode = 'tozero',  titlefont = f),
    yaxis = list(title = '<b>Individuos Infecciosos</b>', rangemode = 'tozero',titlefont = f),
    shapes = list(type = "rect",
                  fillcolor = "blue", line = list(color = "blue"), opacity = 0.2,
                  x0 = 0, x1 = 100, xref = "x",
                  y0 = 800, y1 = 1300, yref = "y")
  )
prevale
orca(prevale,"testeprevalencia.pdf",width = 1200,height = 960)

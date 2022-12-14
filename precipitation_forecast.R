setwd("C:/Users/albie/OneDrive/Desktop/Flood_NOAH")

library(forecast)

# Load Data

precipitation = read.csv(file="PRCP_Manila.csv")

# df = ts(df)

# ARIMA Model
# fit_arima <- auto.arima(df[,'PRCP'], seasonal=TRUE, D=1, d=1)
# arima_forecast = forecast(fit_arima, h = 365)

time_series_prcp <- ts(precipitation$PRCP, start = 2000, frequency = 365)

fit_arima <- auto.arima(time_series_prcp, D = 1, stepwise = TRUE, seasonal = TRUE)
arima_forecast = forecast(fit_arima, h = 406)

autoplot
plot(arima_forecast)

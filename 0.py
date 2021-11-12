# -*- coding: utf-8 -*-
"""
Created on Thu Nov 11 15:37:31 2021

@author: Alessandro
"""

from sktime.forecasting.arima import AutoARIMA
from sktime.datasets import load_longley
from sktime.forecasting.model_selection import temporal_train_test_split
from sktime.forecasting.base import ForecastingHorizon
from xgboost import XGBRegressor
import matplotlib.pyplot as plt

y, X = load_longley()
y_train, y_test, X_train, X_test = temporal_train_test_split(y, X)

xgr = XGBRegressor(n_estimators = 10000)
xgr.fit(X_train,y_train)
y_pred = xgr.predict(X_test)
y_test = y_test.array.reshape((y_test.size,1))
plt.plot(y_pred,"red")
plt.plot(y_test,"blue")
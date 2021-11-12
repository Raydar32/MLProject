# -*- coding: utf-8 -*-
"""
Created on Thu Nov 11 10:16:01 2021

@author: Alessandro
"""


from xgboost import XGBRegressor
import numpy as np 

data = np.random.rand(5, 10)  # 5 entities, each contains 10 features
label = np.random.randint(2, size=5)  # binary target
dtrain = xgb.DMatrix(data, label=label)

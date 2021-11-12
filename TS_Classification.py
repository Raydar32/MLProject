# -*- coding: utf-8 -*-
"""
Created on Fri Nov 12 09:45:49 2021

@author: Alessandro
"""

import os

import sktime
from sktime.utils.data_io import load_from_tsfile_to_dataframe
from sktime.utils.data_io import load_from_ucr_tsv_to_dataframe
import xgboost as xgb
import numpy as np
from sklearn.metrics import mean_squared_error
from sklearn.metrics import accuracy_score
from collections import Counter
from sktime.datatypes._panel._convert import (
    from_nested_to_2d_array,    
)


path = "G:\\MLDatasets\\UCR" 
d_setname = "Coffee"
train_x,train_y= load_from_ucr_tsv_to_dataframe(path + "\\" + d_setname + "\\" + d_setname + "_TRAIN.tsv"  )

test_x, test_y = load_from_ucr_tsv_to_dataframe(path + "\\" + d_setname + "\\" + d_setname + "_TEST.tsv" )



train_x = from_nested_to_2d_array(train_x)
test_x = from_nested_to_2d_array(test_x)
reg = xgb.XGBRegressor(n_estimators=10000)
reg.fit(train_x, train_y) 
prediction = reg.predict(test_x)
print("RMSE: ", np.sqrt(mean_squared_error(test_y, prediction)))


clas = xgb.XGBClassifier(n_estimators=10000,eval_metric='mlogloss')
clas.fit(train_x,train_y)
prediction_1 = clas.predict(test_x)
accuracy = accuracy_score(test_y, prediction_1)
print(accuracy)
print("Classi trovate: ", len(Counter(prediction_1).keys()))
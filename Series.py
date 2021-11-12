# -*- coding: utf-8 -*-
"""
Created on Thu Nov 11 11:05:31 2021

@author: Alessandro
"""
import sktime
import os
from sktime.utils.data_io import load_from_ucr_tsv_to_dataframe
import numpy as np
import pandas as pd
from xgboost import XGBRegressor
from xgboost import XGBClassifier
from xgboost import DMatrix
from sklearn.metrics import classification_report
from sktime.datasets import load_arrow_head
from sklearn.model_selection import train_test_split
from sklearn.metrics import mean_squared_error

training_data = np.loadtxt(f"G:\MLDatasets\RegressionDatasets\ArrowHead\ArrowHead_TRAIN.tsv")
Y_training, X_training = training_data[:, 0].astype(np.int32), training_data[:, 1:]
test_data = np.loadtxt(f"G:\MLDatasets\RegressionDatasets\ArrowHead\ArrowHead_TEST.tsv")
Y_test, X_test = test_data[:, 0].astype(np.int32), test_data[:, 1:]
xg_reg = XGBClassifier(n_estimators = 10000)
xg_reg.fit(X_training,Y_training,eval_set=[(X_test, Y_test)])

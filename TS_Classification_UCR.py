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
from os.path import exists
from collections import Counter
from sklearn.model_selection import train_test_split, GridSearchCV
import time
from sktime.datatypes._panel._convert import (
    from_nested_to_2d_array,    
)


datasets = ["Yoga","FaceAll","UWaveGestureLibraryAll","ACSF1","ShapesAll","Strawberry","Wine","Symbols","InsectWingbeatSound"]
path = "G:\\MLDatasets\\UCR" 
n_estimators_ = 50000
if exists("results.txt"):
    os.remove("results.txt")
with open("results.txt", "a") as logfile:
    for dataset in datasets:
        d_setname = dataset    
    
        train_set_path = path + "\\" + d_setname + "\\" + d_setname + "_TRAIN.tsv"  
        test_set_path = path + "\\" + d_setname + "\\" + d_setname + "_TEST.tsv" 
        if not exists(train_set_path):
            train_set_path.replace(".tsv",".txt")
            
        if not exists(test_set_path):
            test_set_path.replace(".tsv",".txt")
            
        train_x,train_y= load_from_ucr_tsv_to_dataframe(train_set_path )
        test_x, test_y = load_from_ucr_tsv_to_dataframe(test_set_path)
        
        
        train_x = from_nested_to_2d_array(train_x)
        test_x = from_nested_to_2d_array(test_x)
    
    
        start_time = time.time()
        clas = xgb.XGBClassifier(n_estimators=n_estimators_ ,eval_metric='mlogloss')
        clas.fit(train_x,train_y)
        prediction_1 = clas.predict(test_x)
        accuracy = accuracy_score(test_y, prediction_1)
    
        logfile.write("-----------------------------------------" + "\n")
        logfile.write(" Dataset: "+ d_setname + "\n")
    
        logfile.write("-----------------------------------------"+ "\n")
        logfile.write(" Classificazione:"+ "\n")
        logfile.write(" Accuracy: "+ str(accuracy)+ "\n")
        logfile.write(" Classi trovate: "+ str(len(Counter(prediction_1).keys()))+ "\n")
        logfile.write(" Tempo esecuzione " + str( (time.time() - start_time)) + "s \n")
        logfile.write("-----------------------------------------"+ "\n")
        

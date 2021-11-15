# -*- coding: utf-8 -*-
"""
Created on Sat Nov 13 11:33:30 2021

@author: Alessandro
"""

# -*- coding: utf-8 -*-
from sktime.utils.data_io import load_from_tsfile_to_dataframe

import numpy as np
from sktime.datatypes._panel._convert import  from_nested_to_2d_array 
from sklearn.metrics import mean_squared_error
from os.path import exists
from sklearn.ensemble import RandomForestRegressor
import os
import time



datasets = ["BeijingPM10Quality","BeijingPM25Quality","AppliancesEnergy","IEEEPPG","LiveFuelMoistureContent","Covid3Month"]
path = "G:\\MLDatasets\\RegressionDatasets\\" 
logfilename = "results_regression_randomforest.txt"

n_estimators = 4000
max_depth = 30
n_jobs = 12
if exists(logfilename):
    os.remove(logfilename)
with open(logfilename, "a") as logfile:
    for dataset in datasets:        
        name = dataset
        print("Analisi ", name)
        train_path = path + name + "\\" + name +  "_TRAIN.ts"
        test_path = path + name + "\\" + name + "_TEST.ts"
        #print(train_path)
        #print(test_path)
        train_x,train_y= load_from_tsfile_to_dataframe(train_path)
        test_x,test_y= load_from_tsfile_to_dataframe(test_path)
        train_x = from_nested_to_2d_array(train_x).values
        test_x = from_nested_to_2d_array(test_x).values
        train_x[np.isnan(train_x)]=0

        test_x[np.isnan(test_x)]=0

        print("Dati importati")
        start_time = time.time()
        regr = RandomForestRegressor(n_estimators=n_estimators, max_depth=max_depth, random_state=0,verbose=False,n_jobs=n_jobs)
        regr.fit(train_x, train_y)
        y_hat = regr.predict(test_x)        
        print("RMSE: ",np.sqrt(mean_squared_error(test_y,y_hat)))
        
        print("Scrivo risultati")
        logfile.write("-----------------------------------------" + "\n")
        logfile.write(" Dataset: "+ dataset + "\n")    
        logfile.write("-----------------------------------------"+ "\n")
        logfile.write(" Regressione (random forest):"+ "\n")
        logfile.write(" RMSE: " + str(np.sqrt(mean_squared_error(test_y,y_hat)))+ "\n")
        logfile.write(" Tempo esecuzione " + str( (time.time() - start_time)) + "s \n")
        logfile.write("-----------------------------------------"+ "\n")
        

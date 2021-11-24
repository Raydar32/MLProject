# -*- coding: utf-8 -*-
from sktime.utils.data_io import load_from_tsfile_to_dataframe
import xgboost as xgb
import numpy as np
from sktime.datatypes._panel._convert import  from_nested_to_2d_array 
from sklearn.metrics import mean_squared_error
import matplotlib.pyplot as plt
import os
from os.path import exists
import time
datasets = ["BeijingPM10Quality","BeijingPM25Quality","AppliancesEnergy","IEEEPPG","LiveFuelMoistureContent","Covid3Month"]
path = "G:\\MLDatasets\\RegressionDatasets\\" 
logfilename = "results_regression.txt"
plot = False
if exists(logfilename):
    os.remove(logfilename)
with open(logfilename, "a") as logfile:
    for dataset in datasets:
        print("avvio ",dataset)
        name = dataset
        train_path = path + name + "\\" + name +  "_TRAIN.ts"
        test_path = path + name + "\\" + name + "_TEST.ts"
        #print(train_path)
        #print(test_path)
        train_x,train_y= load_from_tsfile_to_dataframe(train_path)
        test_x,test_y= load_from_tsfile_to_dataframe(test_path)
        train_x = from_nested_to_2d_array(train_x).values
        test_x = from_nested_to_2d_array(test_x).values
        start_time = time.time()
        print("Avvio training per ", dataset)
        model = xgb.XGBRegressor(n_estimators=50000)
        model.fit(train_x,train_y)
        y_pred = model.predict(test_x)
        print(np.sqrt(mean_squared_error(test_y,y_pred)))
        if(plot):
            plt.plot(np.asarray(y_pred,dtype=float))
            plt.plot(np.asarray(test_y,dtype=float))
            os.system("pause")
        print("Scrivo risultati")
        logfile.write("-----------------------------------------" + "\n")
        logfile.write(" Dataset: "+ dataset + "\n")    
        logfile.write("-----------------------------------------"+ "\n")
        logfile.write(" Classificazione:"+ "\n")
        logfile.write(" RMSE: " + str(np.sqrt(mean_squared_error(test_y,y_pred)))+ "\n")
        logfile.write(" Tempo esecuzione " + str( (time.time() - start_time)) + "s \n")
        logfile.write("-----------------------------------------"+ "\n")
        
    

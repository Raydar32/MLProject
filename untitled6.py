# -*- coding: utf-8 -*-
"""
Created on Fri Nov 12 11:11:32 2021

@author: Alessandro
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Nov 12 09:45:49 2021

@author: Alessandro
"""

import os

import sktime
from sktime.utils.data_io import load_from_tsfile_to_dataframe
import xgboost as xgb
import numpy as np
from sklearn.metrics import mean_squared_error
from sklearn.metrics import accuracy_score
from collections import Counter
from sktime.datatypes._panel._convert import (
    from_nested_to_2d_array,    
)


DATA_PATH = os.path.join(os.path.dirname(sktime.__file__), "G:\MLDatasets\RegressionDatasets\LiveFuelMoistureContent")

train_set= load_from_tsfile_to_dataframe("G:\MLDatasets\RegressionDatasets\LiveFuelMoistureContent\LiveFuelMoistureContent_TRAIN.ts")

test_set = load_from_tsfile_to_dataframe("G:\MLDatasets\RegressionDatasets\LiveFuelMoistureContent\LiveFuelMoistureContent_TEST.ts")



train_set = from_nested_to_2d_array(train_set)
test_set = from_nested_to_2d_array(test_set)

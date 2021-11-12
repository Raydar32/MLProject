# -*- coding: utf-8 -*-
"""
Created on Fri Nov 12 09:45:49 2021

@author: Alessandro
"""

import os

import sktime
from sktime.utils.data_io import load_from_tsfile_to_dataframe

DATA_PATH = os.path.join(os.path.dirname(sktime.__file__), "G:\MLDatasets\RegressionDatasets\AppliancesEnergy")

train_x, train_y = load_from_tsfile_to_dataframe(
    os.path.join(DATA_PATH, "G:\MLDatasets\RegressionDatasets\AppliancesEnergy\AppliancesEnergy_TRAIN.ts")
)
test_x, test_y = load_from_tsfile_to_dataframe(
     os.path.join(DATA_PATH, "G:\MLDatasets\RegressionDatasets\AppliancesEnergy\AppliancesEnergy_TEST.ts")
)
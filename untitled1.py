import os

import sktime
from sktime.utils.data_io import load_from_tsfile_to_dataframe
from sktime.utils.data_io import load_from_tsfile_to_dataframe
from xgboost import XGBRegressor
from xgboost import XGBClassifier
from xgboost import DMatrix

from sktime.datatypes._panel._convert import (
    from_2d_array_to_nested,
    from_nested_to_2d_array,
    is_nested_dataframe,
)



train_x, train_y = load_from_tsfile_to_dataframe(
    os.path.join("G:\MLDatasets\RegressionDatasets\IEEEPPG\IEEEPPG_TRAIN.ts")
)
test_x, test_y = load_from_tsfile_to_dataframe(
    os.path.join("G:\MLDatasets\RegressionDatasets\IEEEPPG\IEEEPPG_TEST.ts")
)



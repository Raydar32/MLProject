python src/main.py --output_dir experiments --comment "pretained BeijingPM10Quality" --name BeijingPM10Quality_finetuned --records_file Regression_records_pretrained.xls --data_dir TransformerDatasetsRegression/BeijingPM10Quality/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments_regression/BeijingPM10Quality_pretrained/checkpoints/model_best.pth --task regression --change_output 
python src/main.py --output_dir experiments --comment "pretained BeijingPM25Quality" --name BeijingPM25Quality_finetuned --records_file Regression_records_pretrained.xls --data_dir TransformerDatasetsRegression/BeijingPM25Quality/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments_regression/BeijingPM25Quality_pretrained/checkpoints/model_best.pth --task regression --change_output 
python src/main.py --output_dir experiments --comment "pretained AppliancesEnergy" --name AppliancesEnergy_finetuned --records_file Regression_records_pretrained.xls --data_dir TransformerDatasetsRegression/AppliancesEnergy/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments_regression/AppliancesEnergy_pretrained/checkpoints/model_best.pth --task regression --change_output 
REM python src/main.py --output_dir experiments --comment "pretained LiveFuelMoisture" --name LiveFuelMoisture_finetuned --records_file Regression_records_pretrained.xls --data_dir TransformerDatasetsRegression/LiveFuelMoisture/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments_regression/LiveFuelMoisture_pretrained/checkpoints/model_best.pth --task regression --change_output 
REM python src/main.py --output_dir experiments --comment "pretained IEEEPPG" --name IEEEPPG_finetuned --records_file Regression_records_pretrained.xls --data_dir TransformerDatasetsRegression/IEEEPPG --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments_regression/IEEEPPG_pretrained/checkpoints/model_best.pth --task regression --change_output 











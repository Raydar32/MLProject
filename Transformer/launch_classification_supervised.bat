REM python src/main.py --output_dir experiments --comment "classification Adiac" --name Adiac --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/Adiac/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining Adiac" --name Adiac_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Adiac/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

REM python src/main.py --output_dir experiments --comment "classification FaceAll" --name FaceAll --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/FaceAll/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining FaceAll" --name FaceAll_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/FaceAll/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128


python src/main.py --output_dir experiments --comment "classification UWaveGuestureLibraryAll" --name UWaveGestureLibraryAll --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/UWaveGestureLibraryAll/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy

python src/main.py --output_dir experiments --comment "pretraining UWaveGuestureLibraryAll" --name UWaveGestureLibraryAll_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/UWaveGestureLibraryAll/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128


REM python src/main.py --output_dir experiments --comment "classification Symbols" --name Symbols --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/Symbols/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining Symbols" --name Symbols_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Symbols/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128


REM python src/main.py --output_dir experiments --comment "classification ShapesAll" --name ShapesAll --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/ShapesAll/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining ShapesAll" --name ShapesAll_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/ShapesAll/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

REM python src/main.py --output_dir experiments --comment "classification InsectWingbeatSound " --name InsectWingbeatSound --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/InsectWingbeatSound/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining InsectWingbeatSound " --name InsectWingbeatSound_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/InsectWingbeatSound/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

REM python src/main.py --output_dir experiments --comment "classification Yoga" --name Yoga --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/Yoga/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining Yoga" --name Yoga_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Yoga/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

python src/main.py --output_dir experiments --comment "classification ACSF1" --name ACSF1 --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/ACSF1/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

python src/main.py --output_dir experiments --comment "pretraining ACSF1" --name ACSF1_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/ACSF1/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

REM python src/main.py --output_dir experiments --comment "classification ECG5000" --name ECG5000 --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/ECG5000/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining ECG5000" --name ECG5000_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/ECG5000/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

REM python src/main.py --output_dir experiments --comment "classification Strawberry" --name Strawberry --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/Strawberry/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining Strawberry" --name Strawberry_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Strawberry/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128

REM python src/main.py --output_dir experiments --comment "classification Wine" --name Wine --records_file Classification_records.xls --data_dir TransformerDatasetsClassification/Wine/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam  --pos_encoding learnable  --task classification  --key_metric accuracy --batch_size 32 --d_model 128

REM python src/main.py --output_dir experiments --comment "pretraining Wine" --name Wine_pretrained --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Wine/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128


pause
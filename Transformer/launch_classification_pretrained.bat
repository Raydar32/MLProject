REM python src/main.py --output_dir experiments --comment "pretained FaceAll" --name FaceAll_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/FaceAll/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/FaceAll_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
REM python src/main.py --output_dir experiments --comment "pretained UWaveGestureLibraryAll" --name UWaveGestureLibraryAll_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/UWaveGuestureLibraryAll/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/UWaveGuestureLibraryAll_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
REM python src/main.py --output_dir experiments --comment "pretained Adiac" --name Adiac_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/Adiac/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/Adiac_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
REM python src/main.py --output_dir experiments --comment "pretained Yoga" --name Yoga_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/Yoga/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/Yoga_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy

REM python src/main.py --output_dir experiments --comment "pretained Symbols" --name Symbols_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/Symbols/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/Symbols_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
REM python src/main.py --output_dir experiments --comment "pretained Strawberry" --name Strawberry_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/Strawberry/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/Strawberry_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
REM python src/main.py --output_dir experiments --comment "pretained Wine" --name Wine_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/Wine/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/Wine_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy

REM python src/main.py --output_dir experiments --comment "pretained ShapesAll" --name ShapesAll_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/ShapesAll/ --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/ShapesAll_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
REM python src/main.py --output_dir experiments --comment "pretained InsectWingbeatSound " --name InsectWingbeatSound_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/InsectWingbeatSound/  --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/InsectWingbeatSound_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
python src/main.py --output_dir experiments --comment "pretained ECG5000 " --name ECG5000_finetuned --records_file Classification_records_pretrained.xls --data_dir TransformerDatasetsClassification/ECG5000/  --data_class tsra --pattern TRAIN --val_pattern TEST --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --load_model experiments/ECG5000_pretrained/checkpoints/model_best.pth --task classification --change_output --key_metric accuracy
pause
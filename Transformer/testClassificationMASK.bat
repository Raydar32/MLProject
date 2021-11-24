
python src/main.py --output_dir experiments --comment "pretraining Wine_geometric" --name Wine_pretrained_geometric --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Wine/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --normalization_layer BatchNorm --mask_distribution geometric
python src/main.py --output_dir experiments --comment "pretraining Wine_ber" --name Wine_pretrained_ber --records_file Imputation_records.xls --data_dir TransformerDatasetsClassification/Wine/ --data_class tsra --pattern TRAIN --val_ratio 0.2 --epochs 100 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128 --normalization_layer BatchNorm --mask_distribution bernoulli
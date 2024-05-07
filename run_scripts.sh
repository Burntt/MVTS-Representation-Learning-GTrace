

# mini ds (21 traces)
python src/main.py --output_dir experiments --comment "unsupervised pretraining" --name container_traces_pretrained --records_file Unsupervised_records.xls --data_dir src/container_traces_21_a_b_c_d_e_f.csv --data_class container_traces --pattern TRAIN --val_ratio 0.2 --epochs 700 --lr 0.001 --optimizer RAdam --batch_size 8 --pos_encoding learnable --d_model 32 --dim_feedforward 64 --num_layers 1 --num_heads 1


# Saving for feature reference

python src/main.py --output_dir experiments --comment "unsupervised pretraining" --name container_traces_pretrained --records_file Unsupervised_records.xls --data_dir /home/coderburnt/Code/mvts_transformer/src/container_traces_2990_a_b_c_d_e_f.csv --data_class container_traces --pattern TRAIN --val_ratio 0.2 --epochs 700 --lr 0.001 --optimizer RAdam --batch_size 32 --pos_encoding learnable --d_model 128
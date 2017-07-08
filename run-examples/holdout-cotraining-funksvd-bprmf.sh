#!/bin/bash

python3 ../scripts/holdout.py \
    ../Datasets/ml10m/ratings.csv \
    --results_path ../Results/funksvd-bprmf-1/ \
    --results_file holdout-funksvd-bprmf-50.csv \
    --holdout_perc 0.8 \
    --header 0 --sep , \
    --user_key user_id --item_key item_id --rating_key rating \
    --rnd_seed 1234 \
    --recommender_1 FunkSVD --rec_length 10 \
    --recommender_2 BPRMF --rec_length 10 \
    --number_iterations 50 \
    --number_positives 10000 \
    --number_negatives 100000 \
    --number_negatives 700000 \
    --params_1 num_factors=20,lrate=0.01,reg=0.01 \
    --params_2 num_factors=20,lrate=0.1,user_reg=0.1,pos_reg=0.001,neg_reg=0.0015,iters=10,sample_with_replacement=True,sampling_type=user_uniform_item_uniform,init_mean=0.0,init_std=0.1,lrate_decay=1.0,rnd_seed=42
    #--columns -> Comma separated names for every column.
    #--is_binary --make_binary --binary_th 4.0 \ -> If the dataset is binary.
#!/usr/bin/env bash

# Copyright (c) 2020-2021 NVIDIA CORPORATION. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

dgxa100-80g_8gpu_fp16 ()
{
    train_batch_size="8192"
    learning_rate="6e-3"
    precision="fp16"
    num_gpus=8
    warmup_proportion="0.2843"
    train_steps=7038
    save_checkpoint_steps=200
    resume_training="false"
    create_logfile="true"
    accumulate_gradients="true"
    gradient_accumulation_steps=32
    seed=42
    job_name="bert_lamb_pretraining"
    allreduce_post_accumulation="true"
    allreduce_post_accumulation_fp16="true"
    train_batch_size_phase2=4096
    learning_rate_phase2="4e-3"
    warmup_proportion_phase2="0.128"
    train_steps_phase2=1563
    gradient_accumulation_steps_phase2=128
    DATASET=pretrain/phase1/unbinned/parquet # change this for other datasets
    DATA_DIR_PHASE1="$BERT_PREP_WORKING_DIR/${DATASET}/"
    BERT_CONFIG=bert_configs/large.json
    CODEDIR="/workspace/bert"
    init_checkpoint="None"
    DATASET2=pretrain/phase2/bin_size_64/parquet # change this for other datasets
    DATA_DIR_PHASE2="$BERT_PREP_WORKING_DIR/${DATASET2}/"
    wikipedia_source=$BERT_PREP_WORKING_DIR/wikipedia/source/
    num_dask_workers=128
    num_shards_per_worker=128
    num_workers=4
    sample_ratio="0.9"
    phase2_bin_size=64
    masking=static
    echo $train_batch_size $learning_rate $precision $num_gpus \
         $warmup_proportion $train_steps $save_checkpoint_steps \
         $resume_training $create_logfile $accumulate_gradients  \
         $gradient_accumulation_steps $seed $job_name $allreduce_post_accumulation \
         $allreduce_post_accumulation_fp16 $train_batch_size_phase2 $learning_rate_phase2 \
         $warmup_proportion_phase2 $train_steps_phase2 $gradient_accumulation_steps_phase2 \
         $DATA_DIR_PHASE1 $DATA_DIR_PHASE2 $CODEDIR $init_checkpoint \
         $wikipedia_source $num_dask_workers $num_shards_per_worker $num_workers \
         $sample_ratio $phase2_bin_size $masking \
         $BERT_CONFIG
}

dgxa100-80g_8gpu_tf32 ()
{
    train_batch_size="8192"
    learning_rate="6e-3"
    precision="tf32"
    num_gpus=8
    warmup_proportion="0.2843"
    train_steps=7038
    save_checkpoint_steps=200
    resume_training="false"
    create_logfile="true"
    accumulate_gradients="true"
    gradient_accumulation_steps=64
    seed=42
    job_name="bert_lamb_pretraining"
    allreduce_post_accumulation="true"
    allreduce_post_accumulation_fp16="false"
    train_batch_size_phase2=4096
    learning_rate_phase2="4e-3"
    warmup_proportion_phase2="0.128"
    train_steps_phase2=1563
    gradient_accumulation_steps_phase2=256
    DATASET=pretrain/phase1/unbinned/parquet # change this for other datasets
    DATA_DIR_PHASE1="$BERT_PREP_WORKING_DIR/${DATASET}/"
    BERT_CONFIG=bert_configs/large.json
    CODEDIR="/workspace/bert"
    init_checkpoint="None"
    DATASET2=pretrain/phase2/bin_size_64/parquet # change this for other datasets
    DATA_DIR_PHASE2="$BERT_PREP_WORKING_DIR/${DATASET2}/"
    wikipedia_source=$BERT_PREP_WORKING_DIR/wikipedia/source/
    num_dask_workers=128
    num_shards_per_worker=128
    num_workers=4
    sample_ratio="0.9"
    phase2_bin_size=64
    masking=static
    echo $train_batch_size $learning_rate $precision $num_gpus \
         $warmup_proportion $train_steps $save_checkpoint_steps \
         $resume_training $create_logfile $accumulate_gradients  \
         $gradient_accumulation_steps $seed $job_name $allreduce_post_accumulation \
         $allreduce_post_accumulation_fp16 $train_batch_size_phase2 $learning_rate_phase2 \
         $warmup_proportion_phase2 $train_steps_phase2 $gradient_accumulation_steps_phase2 \
         $DATA_DIR_PHASE1 $DATA_DIR_PHASE2 $CODEDIR $init_checkpoint \
         $wikipedia_source $num_dask_workers $num_shards_per_worker $num_workers \
         $sample_ratio $phase2_bin_size $masking \
         $BERT_CONFIG
}

dgx1-32g_8gpu_fp16 ()
{
    train_batch_size="8192"
    learning_rate="6e-3"
    precision="fp16"
    num_gpus=8
    warmup_proportion="0.2843"
    train_steps=7038
    save_checkpoint_steps=200
    resume_training="false"
    create_logfile="true"
    accumulate_gradients="true"
    gradient_accumulation_steps=64
    seed=42
    job_name="bert_lamb_pretraining"
    allreduce_post_accumulation="true"
    allreduce_post_accumulation_fp16="true"
    train_batch_size_phase2=4096
    learning_rate_phase2="4e-3"
    warmup_proportion_phase2="0.128"
    train_steps_phase2=1563
    gradient_accumulation_steps_phase2=256
    DATASET=pretrain/phase1/unbinned/parquet # change this for other datasets
    DATA_DIR_PHASE1="$BERT_PREP_WORKING_DIR/${DATASET}/"
    BERT_CONFIG=bert_configs/large.json
    CODEDIR="/workspace/bert"
    init_checkpoint="None"
    DATASET2=pretrain/phase2/bin_size_64/parquet # change this for other datasets
    DATA_DIR_PHASE2="$BERT_PREP_WORKING_DIR/${DATASET2}/"
    wikipedia_source=$BERT_PREP_WORKING_DIR/wikipedia/source/
    num_dask_workers=128
    num_shards_per_worker=128
    num_workers=4
    sample_ratio="0.9"
    phase2_bin_size=64
    masking=static
    echo $train_batch_size $learning_rate $precision $num_gpus \
         $warmup_proportion $train_steps $save_checkpoint_steps \
         $resume_training $create_logfile $accumulate_gradients  \
         $gradient_accumulation_steps $seed $job_name $allreduce_post_accumulation \
         $allreduce_post_accumulation_fp16 $train_batch_size_phase2 $learning_rate_phase2 \
         $warmup_proportion_phase2 $train_steps_phase2 $gradient_accumulation_steps_phase2 \
         $DATA_DIR_PHASE1 $DATA_DIR_PHASE2 $CODEDIR $init_checkpoint \
         $wikipedia_source $num_dask_workers $num_shards_per_worker $num_workers \
         $sample_ratio $phase2_bin_size $masking \
         $BERT_CONFIG
}

dgx1-32g_8gpu_fp32 ()
{
    train_batch_size="8192"
    learning_rate="6e-3"
    precision="fp32"
    num_gpus=8
    warmup_proportion="0.2843"
    train_steps=7038
    save_checkpoint_steps=200
    resume_training="false"
    create_logfile="true"
    accumulate_gradients="true"
    gradient_accumulation_steps=128
    seed=42
    job_name="bert_lamb_pretraining"
    allreduce_post_accumulation="true"
    allreduce_post_accumulation_fp16="false"
    train_batch_size_phase2=4096
    learning_rate_phase2="4e-3"
    warmup_proportion_phase2="0.128"
    train_steps_phase2=1563
    gradient_accumulation_steps_phase2=512
    DATASET=pretrain/phase1/unbinned/parquet # change this for other datasets
    DATA_DIR_PHASE1="$BERT_PREP_WORKING_DIR/${DATASET}/"
    BERT_CONFIG=bert_configs/large.json
    CODEDIR="/workspace/bert"
    init_checkpoint="None"
    DATASET2=pretrain/phase2/bin_size_64/parquet # change this for other datasets
    DATA_DIR_PHASE2="$BERT_PREP_WORKING_DIR/${DATASET2}/"
    wikipedia_source=$BERT_PREP_WORKING_DIR/wikipedia/source/
    num_dask_workers=128
    num_shards_per_worker=128
    num_workers=4
    sample_ratio="0.9"
    phase2_bin_size=64
    masking=static
    echo $train_batch_size $learning_rate $precision $num_gpus \
         $warmup_proportion $train_steps $save_checkpoint_steps \
         $resume_training $create_logfile $accumulate_gradients  \
         $gradient_accumulation_steps $seed $job_name $allreduce_post_accumulation \
         $allreduce_post_accumulation_fp16 $train_batch_size_phase2 $learning_rate_phase2 \
         $warmup_proportion_phase2 $train_steps_phase2 $gradient_accumulation_steps_phase2 \
         $DATA_DIR_PHASE1 $DATA_DIR_PHASE2 $CODEDIR $init_checkpoint \
         $wikipedia_source $num_dask_workers $num_shards_per_worker $num_workers \
         $sample_ratio $phase2_bin_size $masking \
         $BERT_CONFIG
}

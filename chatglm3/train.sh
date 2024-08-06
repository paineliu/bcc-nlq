#!/bin/bash
 
# 设置环境变量
export CUDA_VISIBLE_DEVICES=2
export NCCL_P2P_DISABLE="1"
export NCCL_IB_DISABLE="1"
# https://www.thepaper.cn/newsDetail_forward_25531528
# 执行 Python 脚本
python finetune_hf.py  ./bcc_glm_tongyi  ./model/ZhipuAI/chatglm3-6b  ./configs/lora.yaml

#!/usr/bin/env bash

set -x
GPUS=$1

PY_ARGS=${@:2}

CUDA_VISIBLE_DEVICES=${GPUS} python main.py --test --no_vote --deterministic ${PY_ARGS}
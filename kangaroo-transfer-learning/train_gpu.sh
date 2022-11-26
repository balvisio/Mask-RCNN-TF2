#!/bin/bash
docker run -e HOME=$HOME --gpus 1 \
    -v /home/bruno/:/home/bruno/ -w $(pwd) -u $(id -u):$(id -g) \
    -it balvisio/mask-rcnn:2.9.0-gpu bash -c "cd .. && pip install . && \
    cd kangaroo-transfer-learning && python kangaroo_training.py"
#!/bin/bash
docker run -e HOME=$HOME --gpus 1 \
    -v /home/bruno/:/home/bruno/ -w $(pwd) -u $(id -u):$(id -g) \
    -it balvisio/mask-rcnn:2.2.0-gpu bash -c "cd .. && \
    pip3.7 install . && \
    cd kangaroo-transfer-learning && python3.7 kangaroo_training.py"

#docker run -e HOME=$HOME --gpus 1 \
#    -v /home/bruno/:/home/bruno/ -w $(pwd) -u 0:0 \
#    -it tensorflow/tensorflow:2.2.0-gpu bash
#!/bin/sh -ex
# -*- mode: sh -*-
#
# SPDX-License-Identifier: Apache-2.0
# Copyright 2021 NXP

# download google-coral models
mkdir -p project-posenet/models
cd project-posenet/models
wget https://github.com/google-coral/project-posenet/raw/master/models/mobilenet/posenet_mobilenet_v1_075_353_481_quant_decoder.tflite
cd -

mkdir -p examples-camera/all_models
cd examples-camera/
wget https://dl.google.com/coral/canned_models/all_models.tar.gz
tar -C all_models -xvzf all_models.tar.gz
rm -f all_models.tar.gz
cd -

# Makefile.am for Google Coral Edgetpu Posenet Library
#
# SPDX-License-Identifier: Apache-2.0
# Copyright 2021 NXP

# Tensorflow Lite
TFLITE_CXXFLAGS = \
  -I$(SDKTARGETSYSROOT)/usr/include/tensorflow/lite/tools/make/downloads/absl \
  -I$(SDKTARGETSYSROOT)/usr/include/tensorflow/lite/tools/make/downloads/flatbuffers/include

TFLITE_LIBS = -ltensorflow-lite

# google-coral edgetpu source
EDGETPU_DIR = $(top_srcdir)/src/cpp/posenet
EDGETPU_CXXFLAGS = -I$(EDGETPU_DIR)

plugin_LTLIBRARIES = libgooglecoraledgetpuposenet.la

noinst_HEADERS = \
  $(EDGETPU_DIR)/posenet_decoder.h \
  $(EDGETPU_DIR)/posenet_decoder_op.h

libgooglecoraledgetpuposenet_la_SOURCES= \
  $(EDGETPU_DIR)/posenet_decoder.cc \
  $(EDGETPU_DIR)/posenet_decoder_op.cc

libgooglecoraledgetpuposenet_la_CXXFLAGS = \
  $(EDGETPU_CXXFLAGS) \
  $(TFLITE_CXXFLAGS)

libgooglecoraledgetpuposenet_la_LIBADD = \
  $(TFLITE_LIBS) \
  -lflatbuffers


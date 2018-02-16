# Copyright (C) 2016 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    SysUtil.cpp \
    DirUtil.cpp \
    ZipUtil.cpp \
    ThermalUtil.cpp \
    cache_location.cpp \
    rangeset.cpp

LOCAL_STATIC_LIBRARIES := \
    libziparchive \
    libselinux \
    libbase

LOCAL_MODULE := libotautil
LOCAL_CFLAGS := \
    -D_FILE_OFFSET_BITS=64 \
    -Werror \
    -Wall

LOCAL_EXPORT_C_INCLUDE_DIRS := \
    $(LOCAL_PATH)/include

include $(BUILD_STATIC_LIBRARY)

# XXX: host lib?

#
# Copyright (C) 2012 The Android Open-Source Project
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
#

ifneq ($(filter jewel evita ville fireball,$(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)
include $(call all-subdir-makefiles,$(LOCAL_PATH))

FIRMWARE_MODEM_IMAGES := \
    modem.b00 modem.b01 modem.b02 modem.b03 modem.b04 modem.b06 modem.b07 modem.mdt

FIRMWARE_MODEM_IMAGES += \
    modem_fw.b00 modem_fw.b01 modem_fw.b02 modem_fw.b03 modem_fw.b04 modem_fw.b05 modem_fw.b06 \
    modem_fw.b07 modem_fw.b08 modem_fw.b09 modem_fw.b10 modem_fw.b13 modem_fw.b14 modem_fw.b21 \
    modem_fw.b22 modem_fw.b23 modem_fw.b25 modem_fw.b26 modem_fw.b29 modem_fw.mdt

FIRMWARE_MODEM_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_MODEM_IMAGES)))
$(FIRMWARE_MODEM_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Modem Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware_radio/$(notdir $(subst modem_fw,modem_f2,$@)) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_MODEM_SYMLINKS)

FIRMWARE_Q6_IMAGES := \
    q6.b00 q6.b01 q6.b03 q6.b04 q6.b05 q6.b06 q6.mdt

FIRMWARE_Q6_SYMLINKS := $(addprefix $(TARGET_OUT_ETC)/firmware/,$(notdir $(FIRMWARE_Q6_IMAGES)))
$(FIRMWARE_Q6_SYMLINKS): $(LOCAL_INSTALLED_MODULE)
	@echo "Q6 Firmware link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /firmware_q6/$(notdir $@) $@

ALL_DEFAULT_INSTALLED_MODULES += $(FIRMWARE_Q6_SYMLINKS)

endif

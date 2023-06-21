#
# Copyright (C) 2021 The Calyx Institute
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/gs201/overlay-calyx

# EUICC
ifneq ($(BOARD_WITHOUT_RADIO),true)
PRODUCT_PACKAGES += \
    EuiccSupportPixelOverlay
endif

# Lineage Health
include hardware/google/pixel/lineage_health/device.mk

# Touch
include hardware/google/pixel/touch/device.mk

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/softwinner/cubieboard1/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := sun4i
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := cubieboard1

BOARD_KERNEL_CMDLINE := console=ttyS0,115200 rw init=/init loglevel=8
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE     := 0x2000000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x2000000
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 0x20000000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x40000000
BOARD_FLASH_BLOCK_SIZE := 4096

TARGET_PREBUILT_KERNEL := device/softwinner/cubieboard1/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
CUBIEBOARD_HARDWARE := true

TARGET_HARDWARE_INCLUDE := $(TOP)/device/softwinner/cubieboard1/hardware/include

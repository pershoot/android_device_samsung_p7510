# inherit from the proprietary version
-include vendor/samsung/p7510/BoardConfigVendor.mk

TARGET_BOARD_PLATFORM := tegra
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a
TARGET_ARCH_VARIANT_CPU := cortex-a9
TARGET_ARCH_VARIANT_FPU := vfpv3-d16
TARGET_CPU_SMP := true
TARGET_HAVE_TEGRA_ERRATA_657451 := true

# custom recovery ui
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/p7510/recovery/recovery_ui.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_LARGE_FILESYSTEM := true

TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := p7100

# Modem
TARGET_NO_RADIOIMAGE := true

BOARD_KERNEL_CMDLINE := mem=511M@0M secmem=1M@511M mem=512M@512M vmalloc=256M fota_boot=false video=tegrafb console=ttyS0,115200n8 quiet lpj=9994240 usbcore.old_scheme_first=1 lp0_vec=8192@0x1840E000 androidboot.serialno=C3290303254653E androidboot.bootloader=P7100BUKB7 androidboot.baseband=%s charging_mode=0 emmc_checksum_done=false emmc_checksum_pass=false tegraboot=sdmmc gpt androidboot.hardware=p7100
BOARD_KERNEL_BASE := 0x10000000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
# dev:    size   erasesize  name
# mtd0: 01000000 00020000 "misc"
# mtd1: 01000000 00020000 "recovery"
# mtd2: 01000000 00020000 "boot"
# mtd3: 0c800000 00020000 "system"
# mtd4: 0d940000 00020000 "cache"
# mtd5: 00400000 00020000 "bootbmp"
# mtd6: 02000000 00020000 "logodata"
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00380000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00490000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x08c60000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x105c0000
BOARD_FLASH_BLOCK_SIZE := 131072

# Setting this to avoid boot locks on the system from using the "misc" partition.
BOARD_HAS_NO_MISC_PARTITION := true

# Indicate that the board has an Internal SD Card
BOARD_HAS_SDCARD_INTERNAL := true

TARGET_PREBUILT_KERNEL := device/samsung/p7510/kernel

# Below is a sample of how you can tweak the mount points using the board config.
# This is for the Samsung Galaxy S.
# Feel free to tweak or remove this code.
# If you want to add/tweak a mount point, the BOARD_X_FILESYSTEM_OPTIONS are optional.
BOARD_DATA_DEVICE := /dev/block/mmcblk0p8
BOARD_DATA_FILESYSTEM := ext4
BOARD_CACHE_DEVICE := /dev/block/mmcblk0p5
BOARD_CACHE_FILESYSTEM := ext4
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk0p8
BOARD_SDCARD_DEVICE_INTERNAL := /dev/block/mmcblk0p8
#BOARD_HAS_DATADATA := true
#BOARD_DATADATA_DEVICE := /dev/block/stl10
#BOARD_DATADATA_FILESYSTEM := auto
#BOARD_DATADATA_FILESYSTEM_OPTIONS := llw,check=no,nosuid,nodev
#BOARD_SYSTEM_DEVICE := /dev/block/stl9
#BOARD_SYSTEM_FILESYSTEM := auto
#BOARD_SYSTEM_FILESYSTEM_OPTIONS := llw,check=no

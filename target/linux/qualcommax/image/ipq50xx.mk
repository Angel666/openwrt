define Device/linksys_mx2000
	$(call Device/FitImageLzma)
	DEVICE_VENDOR := Linksys
	DEVICE_MODEL := MX2000
	BLOCKSIZE := 128k
	PAGESIZE := 2048
	KERNEL_SIZE := 8192k
	IMAGE_SIZE := 83968k
	DEVICE_DTS_CONFIG := config@mp03.5-c1
	SOC := ipq5018
	UBINIZE_OPTS := -E 5	# EOD marks to "hide" factory sig at EOF
	IMAGES += factory.bin
	IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | linksys-image type=MX2000
	DEVICE_PACKAGES := ath11k-firmware-qcn6122 \
					ipq-wifi-linksys_mx2000 \
					kmod-bluetooth \
					ipq5018-maple-bt-firmware
endef
TARGET_DEVICES += linksys_mx2000

define Device/linksys_mx5500
	$(call Device/FitImageLzma)
	DEVICE_VENDOR := Linksys
	DEVICE_MODEL := MX5500
	BLOCKSIZE := 128k
	PAGESIZE := 2048
	KERNEL_SIZE := 8192k
	IMAGE_SIZE := 83968k
	DEVICE_DTS_CONFIG := config@mp03.1
	SOC := ipq5018
	UBINIZE_OPTS := -E 5	# EOD marks to "hide" factory sig at EOF
	IMAGES += factory.bin
	IMAGE/factory.bin := append-kernel | pad-to $$$$(KERNEL_SIZE) | append-ubi | linksys-image type=MX5500
	DEVICE_PACKAGES := kmod-ath11k-pci \
					ath11k-firmware-qcn9074 \
					ipq-wifi-linksys_mx5500 \
					kmod-bluetooth \
					ipq5018-maple-bt-firmware
endef
TARGET_DEVICES += linksys_mx5500

define Device/tplink_ax55v1
	$(call Device/FitImage)
    $(call Device/UbiFit)
	DEVICE_VENDOR := TP-Link
	DEVICE_MODEL := AX55v1
	BLOCKSIZE := 128k
	PAGESIZE := 2048
	DEVICE_DTS_CONFIG := config@mp03.3
	SOC := ipq5018
	UBINIZE_OPTS := -E 5	# EOD marks to "hide" factory sig at EOF
	IMAGES += nand-factory.ubi
	DEVICE_PACKAGES := \
                       ath11k-firmware-qcn6122 \
					   ipq-wifi-tplink_ax55v1 \
					   kmod-bluetooth \
					   ipq5018-maple-bt-firmware \
					   kmod-switch-rtl8366-smi
					  
					   
			
endef
TARGET_DEVICES += tplink_ax55v1

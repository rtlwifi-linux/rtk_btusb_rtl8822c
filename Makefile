FW_USB_DIR := /lib/firmware
RTKBT_FIRMWARE_DIR := rtkbt-firmware/lib/firmware
MDL_DIR	:= /lib/modules/$(shell uname -r)
DRV_DIR	:= $(MDL_DIR)/kernel/drivers/bluetooth


install:
	mkdir -p $(DRV_DIR)
	@echo "Start Realtek Bluetooth USB driver installation"
	$(eval FW_FILE := rtl*_fw)
	$(eval CONFIG_FILE := rtl*_config)
	$(eval FW_DIR := $(FW_USB_DIR))
	$(eval SRC_ROOT_DIR := usb)
	mkdir -p $(FW_DIR)
	@echo "Copy $(RTKBT_FIRMWARE_DIR)/$(FW_FILE) to $(FW_DIR)"
	cp -a $(RTKBT_FIRMWARE_DIR)/$(FW_FILE) $(FW_DIR)
	@echo "Copy $(RTKBT_FIRMWARE_DIR)/$(CONFIG_FILE) $(FW_DIR)"
	cp -a $(RTKBT_FIRMWARE_DIR)/$(CONFIG_FILE) $(FW_DIR)
	make -C $(SRC_ROOT_DIR) install


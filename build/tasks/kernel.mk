ifneq ($(filter cheeseburger, $(TARGET_DEVICE)),)

IMAGE_GZ := device/oneplus/cheeseburger/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/Image.gz
DTB := device/oneplus/cheeseburger/prebuilt-kernel/android-$(TARGET_KERNEL_USE)/msm8998-oneplus-cheeseburger.dtb

$(PRODUCT_OUT)/kernel: $(IMAGE_GZ) $(DTB)
	cat $(IMAGE_GZ) $(DTB) > $@

droidcore: $(PRODUCT_OUT)/kernel

endif

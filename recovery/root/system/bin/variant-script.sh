#!/system/bin/sh
# This script is needed to automatically set device props.

load_sweet()
{
    resetprop "ro.product.model" "M2101K6G"
    resetprop "ro.product.vendor.model" "M2101K6G"
    resetprop "ro.product.name" "sweet"
    resetprop "ro.build.product" "sweet"
    resetprop "ro.product.device" "sweet"
    resetprop "ro.product.system.device" "sweet"
    resetprop "ro.product.vendor.device" "sweet"
    resetprop "ro.vendor.product.device" "sweet"
}

load_sweetin()
{
    resetprop "ro.product.model" "M2101K6I"
    resetprop "ro.product.vendor.model" "M2101K6I"
    resetprop "ro.product.name" "sweetin"
    resetprop "ro.build.product" "sweetin"
    resetprop "ro.product.device" "sweetin"
    resetprop "ro.product.system.device" "sweetin"
    resetprop "ro.product.vendor.device" "sweetin"
    resetprop "ro.vendor.product.device" "sweetin"
}

variant=$(getprop ro.boot.hwc)
echo $variant

case $variant in
    "GLOBAL")
        load_sweet
        ;;
    "INDIA")
        load_sweetin
        ;;
    *)
        load_sweet
        ;;
esac

exit 0

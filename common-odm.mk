# Vendor version
TARGET_VENDOR_VERSION := v1

ifneq (,$(SONY_BUILD_ODM))

# Set this flag to true to build the ODM image
PRODUCT_BUILD_ODM_IMAGE := true
TARGET_COPY_OUT_ODM := odm
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := ext4

PRODUCT_ODM_PROPERTIES += \
    ro.odm.version=$(PLATFORM_VERSION)_$(SOMC_KERNEL_VERSION)_$(SOMC_PLATFORM)_$(TARGET_VENDOR_VERSION)

# SDE DRM
PRODUCT_PACKAGES += \
    libsdedrm

# Secure MSM
PRODUCT_PACKAGES += \
    qseecomd

# IRQ Balance
PRODUCT_PACKAGES += \
    msm_irqbalance

# Peripheral Manager
PRODUCT_PACKAGES += \
    pm-service \
    pm-proxy

# BT
PRODUCT_PACKAGES += \
    libbthost_if

# WiFi
PRODUCT_PACKAGES += \
    cnss-daemon

# Util
PRODUCT_PACKAGES += \
    libsystem_health_mon \
    libxml \
    mlog_qmi_service \
    sct_service

# Remotefs
PRODUCT_PACKAGES += \
    rmt_storage

# Miscta
PRODUCT_PACKAGES += \
    libmiscta \
    libta \
    ta_qmi_service \
    tad_static

# Audio
PRODUCT_PACKAGES += \
    libacdbloader \
    libacdbmapper \
    libacdbrtac \
    libadiertac \
    libadsprpc \
    libaudcal \
    libaudioalsa

# Sensors
PRODUCT_PACKAGES += \
    sscrpcd \
    libsnsapi \
    libsensor_reg  \
    libsensor1 \
    sensors.msm8226 \
    sensors.msm8974 \
    sensors.msm8952 \
    sensors.msm8994 \
    sensors.msm8996 \
    sensors.msm8998 \
    sensors.sdm660 \
    sensors.sdm845 \
    sensors.sm8150 \
    sensors.qcom

# Data
PRODUCT_PACKAGES += \
    libconfigdb \
    libdiag \
    libdsi_netctrl \
    libdsutils \
    libnetmgr \
    liblqe \
    libqdi \
    libqdp \
    netmgrd

PRODUCT_PACKAGES += \
    pd-mapper \
    libpdmapper \
    libpdnotifier

# QMI
PRODUCT_PACKAGES += \
    irsc_util \
    libidl \
    libsmemlog \
    libqcci_legacy \
    libqmi \
    libqmi_cci \
    libqmi_client_helper \
    libqmi_client_qmux \
    libqmi_common_so \
    libqmi_csi \
    libqmi_encdec \
    libqmiservices \
    libqmiservices_ext \
    libqrtr \
    libqsocket \
    qmuxd \
    qrtr-ns

ifneq ($(TARGET_LEGACY_KEYMASTER),true)
ifneq ($(TARGET_KEYMASTER_V4),true)
# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl-qti
endif
# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl-qti
endif

# Ril
PRODUCT_PACKAGES += \
    qcril.db \
    libril-qc-qmi-1 \
    libril-qc-ltedirectdisc \
    libril-qc-radioconfig \
    libril-qcril-hook-oem \
    librilqmiservices \
    libsettings

# JPEG
PRODUCT_PACKAGES += \
    libfastcvopt \
    libjpegdhw \
    libjpegdmahw \
    libjpegehw \
    libmmjpeg \
    libmmqjpeg_codec \
    libmmqjpegdma \
    libqomx_jpegdec \
    libqomx_jpegenc_pipe \
    libqomx_jpegenc \

# Camera Override
PRODUCT_PACKAGES += \
    libcom.qti.chinodeutils \
    com.qti.chi.override

# Camera Framework
PRODUCT_PACKAGES += \
    libflash_pmic \
    libmmcamera_dbg \
    libmmcamera_chromaflash_lib \
    libmmcamera_dummyalgo \
    libmmcamera_eebinparse \
    libmmcamera_eeprom_util \
    libmmcamera_eztune_module \
    libmmcamera_facedetection_lib \
    libmmcamera_faceproc \
    libmmcamera_faceproc2 \
    libmmcamera_hdr_gb_lib \
    libmmcamera_hvx_add_constant \
    libmmcamera_hvx_grid_sum \
    libmmcamera_hvx_zzHDR.so \
    libmmcamera_imglib \
    libmmcamera_imglib_faceproc_adspstub \
    libmmcamera_imglib_faceproc_adspstub2 \
    libmmcamera_llvd \
    libmmcamera_optizoom_lib \
    libmmcamera_paaf_lib \
    libmmcamera_pdaf \
    libmmcamera_pdafcamif \
    libmmcamera_ppeiscore \
    libmmcamera_ppbase_module \
    libmmcamera_quadracfa \
    libmmcamera_stillmore_lib \
    libmmcamera_sw_tnr \
    libmmcamera_sw2d_lib \
    libmmcamera_thread_services \
    libmmcamera_tintless_algo \
    libmmcamera_tintless_bg_pca_algo \
    libmmcamera_trueportrait_lib \
    libmmcamera_tuning \
    libmmcamera_tuning_lookup

# Camera2 Framework
PRODUCT_PACKAGES += \
    libmmcamera2_c2d_module \
    libmmcamera2_cpp_module \
    libmmcamera2_frame_algorithm \
    libmmcamera2_iface_modules \
    libmmcamera2_imglib_modules \
    libmmcamera2_is \
    libmmcamera2_isp_modules \
    libmmcamera2_mct \
    libmmcamera2_mct_shimlayer \
    libmmcamera2_pp_buf_mgr \
    libmmcamera2_pproc_modules \
    libmmcamera2_q3a_core \
    libmmcamera2_q3a_release \
    libmmcamera2_sensor_modules \
    libmmcamera2_stats_algorithm \
    libmmcamera2_stats_lib \
    libmmcamera2_stats_modules

# Camera ISP
PRODUCT_PACKAGES += \
    libmmcamera_isp_abcc44 \
    libmmcamera_isp_abf40 \
    libmmcamera_isp_abf47 \
    libmmcamera_isp_abf48 \
    libmmcamera_isp_bcc40 \
    libmmcamera_isp_bpc40 \
    libmmcamera_isp_bpc47 \
    libmmcamera_isp_bpc48 \
    libmmcamera_isp_scaler_encoder44 \
    libmmcamera_isp_scaler_encoder46 \
    libmmcamera_isp_hdr46 \
    libmmcamera_isp_hdr48 \
    libmmcamera_isp_linearization40 \
    libmmcamera_isp_gic46 \
    libmmcamera_isp_gic48 \
    libmmcamera_isp_demosaic40 \
    libmmcamera_isp_demosaic47 \
    libmmcamera_isp_demosaic48 \
    libmmcamera_isp_gtm46 \
    libmmcamera_isp_clamp_video40 \
    libmmcamera_isp_aec_bg_stats47 \
    libmmcamera_isp_snr47 \
    libmmcamera_isp_color_correct40 \
    libmmcamera_isp_color_correct46 \
    libmmcamera_isp_color_xform_viewfinder40 \
    libmmcamera_isp_color_xform_viewfinder46 \
    libmmcamera_isp_bf_stats47 \
    libmmcamera_isp_be_stats44 \
    libmmcamera_isp_hdr_be_stats46 \
    libmmcamera_isp_mesh_rolloff40 \
    libmmcamera_isp_mesh_rolloff44 \
    libmmcamera_isp_template \
    libmmcamera_isp_color_xform_encoder40 \
    libmmcamera_isp_color_xform_video46 \
    libmmcamera_isp_color_xform_encoder46 \
    libmmcamera_isp_pdaf48 \
    libmmcamera_isp_hdr_bhist_stats44 \
    libmmcamera_isp_bg_stats44 \
    libmmcamera_isp_bg_stats46 \
    libmmcamera_isp_luma_adaptation40 \
    libmmcamera_isp_ihist_stats44 \
    libmmcamera_isp_ihist_stats46 \
    libmmcamera_isp_rs_stats44 \
    libmmcamera_isp_rs_stats46 \
    libmmcamera_isp_cac47 \
    libmmcamera_isp_chroma_enhan40 \
    libmmcamera_isp_clamp_encoder40 \
    libmmcamera_isp_sce40 \
    libmmcamera_isp_gamma40 \
    libmmcamera_isp_gamma44 \
    libmmcamera_isp_cs_stats44 \
    libmmcamera_isp_cs_stats46 \
    libmmcamera_isp_sub_module \
    libmmcamera_isp_ltm44 \
    libmmcamera_isp_ltm47 \
    libmmcamera_isp_fovcrop_viewfinder40 \
    libmmcamera_isp_fovcrop_viewfinder46 \
    libmmcamera_isp_fovcrop_encoder40 \
    libmmcamera_isp_fovcrop_encoder46 \
    libmmcamera_isp_scaler_video46 \
    libmmcamera_isp_black_level47 \
    libmmcamera_isp_black_level48 \
    libmmcamera_isp_chroma_suppress40 \
    libmmcamera_isp_pedestal_correct46 \
    libmmcamera_isp_fovcrop_video46 \
    libmmcamera_isp_clamp_viewfinder40 \
    libmmcamera_isp_demux40 \
    libmmcamera_isp_demux48 \
    libmmcamera_isp_mce40 \
    libmmcamera_isp_bhist_stats44 \
    libmmcamera_isp_scaler_viewfinder44 \
    libmmcamera_isp_scaler_viewfinder46 \
    libmmcamera_isp_wb40

PRODUCT_PACKAGES += \
    libmmcamera_imx402

PRODUCT_PACKAGES += \
    libactuator_lc898217 \
    libactuator_lc898217xc \
    libchromatix_imx214_common \
    libchromatix_imx214_cpp_liveshot \
    libchromatix_imx214_cpp_preview \
    libchromatix_imx214_cpp_snapshot \
    libchromatix_imx214_cpp_video \
    libchromatix_imx214_liveshot \
    libchromatix_imx214_postproc \
    libchromatix_imx214_preview \
    libchromatix_imx214_snapshot \
    libchromatix_imx214_video \
    libchromatix_imx214_default_preview_lc898217 \
    libchromatix_imx214_default_video_lc898217 \
    libmmcamera_imx214

PRODUCT_PACKAGES += \
    libchromatix_imx219_common \
    libchromatix_imx219_cpp_liveshot \
    libchromatix_imx219_cpp_preview \
    libchromatix_imx219_cpp_snapshot \
    libchromatix_imx219_cpp_video \
    libchromatix_imx219_postproc \
    libchromatix_imx219_liveshot \
    libchromatix_imx219_preview \
    libchromatix_imx219_snapshot \
    libchromatix_imx219_video \
    libchromatix_imx219_default_preview \
    libchromatix_imx219_default_video \
    libmmcamera_imx219

PRODUCT_PACKAGES += \
    libchromatix_imx241_common \
    libchromatix_imx241_cpp_liveshot \
    libchromatix_imx241_cpp_preview \
    libchromatix_imx241_cpp_snapshot \
    libchromatix_imx241_cpp_video \
    libchromatix_imx241_postproc \
    libchromatix_imx241_liveshot \
    libchromatix_imx241_preview \
    libchromatix_imx241_snapshot \
    libchromatix_imx241_video \
    libchromatix_imx241_default_preview \
    libchromatix_imx241_default_video \
    libmmcamera_imx241

PRODUCT_PACKAGES += \
    libactuator_lc898217xc \
    libchromatix_imx258_common \
    libchromatix_imx258_cpp_liveshot \
    libchromatix_imx258_cpp_preview \
    libchromatix_imx258_cpp_snapshot \
    libchromatix_imx258_cpp_video \
    libchromatix_imx258_video \
    libchromatix_imx258_liveshot \
    libchromatix_imx258_postproc \
    libchromatix_imx258_preview \
    libchromatix_imx258_snapshot \
    libchromatix_imx258_default_preview_lc898217 \
    libchromatix_imx258_default_video_lc898217 \
    libmmcamera_imx258

PRODUCT_PACKAGES += \
    libactuator_bu64747BS4 \
    libchromatix_imx300_common \
    libchromatix_imx300_cpp_liveshot \
    libchromatix_imx300_cpp_preview \
    libchromatix_imx300_cpp_snapshot \
    libchromatix_imx300_cpp_video \
    libchromatix_imx300_postproc \
    libchromatix_imx300_liveshot \
    libchromatix_imx300_preview \
    libchromatix_imx300_snapshot \
    libchromatix_imx300_video \
    libchromatix_imx300_default_preview_bu64747 \
    libchromatix_imx300_default_video_bu64747 \
    libmmcamera_imx300

PRODUCT_PACKAGES += \
    libactuator_bu64747BS2 \
    libchromatix_imx400_common \
    libchromatix_imx400_cpp_liveshot \
    libchromatix_imx400_cpp_preview \
    libchromatix_imx400_cpp_snapshot \
    libchromatix_imx400_cpp_video \
    libchromatix_imx400_postproc \
    libchromatix_imx400_liveshot \
    libchromatix_imx400_preview \
    libchromatix_imx400_snapshot \
    libchromatix_imx400_video \
    libchromatix_imx400_default_preview_bu64747 \
    libchromatix_imx400_default_video_bu64747 \
    libmmcamera_imx400

PRODUCT_PACKAGES += \
    libactuator_lc898219xi \
    libchromatix_imx486_common \
    libchromatix_imx486_cpp_liveshot \
    libchromatix_imx486_cpp_preview \
    libchromatix_imx486_cpp_snapshot \
    libchromatix_imx486_cpp_video \
    libchromatix_imx486_postproc \
    libchromatix_imx486_liveshot \
    libchromatix_imx486_preview \
    libchromatix_imx486_snapshot \
    libchromatix_imx486_video \
    libchromatix_imx486_zsl_preview \
    libchromatix_imx486_zsl_video \
    libmmcamera_imx486

PRODUCT_PACKAGES += \
    libactuator_lc898214xd \
    libchromatix_s5k3l6_common \
    libchromatix_s5k3l6_cpp_liveshot \
    libchromatix_s5k3l6_cpp_preview \
    libchromatix_s5k3l6_cpp_snapshot \
    libchromatix_s5k3l6_cpp_video \
    libchromatix_s5k3l6_postproc \
    libchromatix_s5k3l6_liveshot \
    libchromatix_s5k3l6_preview \
    libchromatix_s5k3l6_snapshot \
    libchromatix_s5k3l6_video \
    libchromatix_s5k3l6_zsl_preview \
    libchromatix_s5k3l6_zsl_video \
    libmmcamera_s5k3l6

PRODUCT_PACKAGES += \
    libchromatix_s5k4h7yx_common \
    libchromatix_s5k4h7yx_cpp_liveshot \
    libchromatix_s5k4h7yx_cpp_preview \
    libchromatix_s5k4h7yx_cpp_snapshot \
    libchromatix_s5k4h7yx_cpp_video \
    libchromatix_s5k4h7yx_postproc \
    libchromatix_s5k4h7yx_liveshot \
    libchromatix_s5k4h7yx_preview \
    libchromatix_s5k4h7yx_snapshot \
    libchromatix_s5k4h7yx_video \
    libchromatix_s5k4h7yx_zsl_preview \
    libchromatix_s5k4h7yx_zsl_video \
    libmmcamera_s5k4h7yx

# CAMX Libs
PRODUCT_PACKAGES += \
    com.qti.node.swregistration \
    com.qti.camx.chiiqutils \
    libcom.qti.chinodeutils \
    com.qti.chi.override \
    com.qti.node.eisv2 \
    com.qti.node.eisv3 \
    camera.sdm845 \
    camera.sm8150

# Common
PRODUCT_PACKAGES += \
    fdconfigpreview \
    fdconfigpreviewlite \
    fdconfigvideo \
    fdconfigvideolite \
    com.qti.tuned.default \

# Tama
PRODUCT_PACKAGES += \
    com.sony.sensormodule.blakiston_imx400 \
    com.sony.sensormodule.pansy_imx241 \
    com.sony.sensormodule.poodle_imx258 \
    com.sony.eeprom.blakiston \
    com.sony.eeprom.pansy \
    com.sony.eeprom.poodle \
    com.sony.tuned.imx400 \
    com.sony.tuned.imx241 \
    com.sony.tuned.imx258

# Kumano
PRODUCT_PACKAGES += \
    com.sony.sensormodule.milvus_imx445 \
    com.sony.sensormodule.milvus_s5k3m3 \
    com.sony.sensormodule.vulture_imx563 \
    com.sony.sensormodule.rose_s5k4h7 \
    com.sony.sensormodule.goby_s5k3m3 \
    com.sony.eeprom.milvus_main \
    com.sony.eeprom.milvus_sub \
    com.sony.eeprom.rose_otp \
    com.sony.eeprom.goby_otp \
    com.sony.tuned.imx445 \
    com.sony.tuned.imx563 \
    com.sony.tuned.s5k3m3 \
    com.sony.tuned.s5k4h7
endif

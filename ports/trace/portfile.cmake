vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp
    REF 1.0.0
    SHA512 89929de54db981e9cbd8aadc032079ff1c1622ac40c00e4a5e306e026fac7026f6edd39cdd73dbfbac26d6e3f27d0a9134e8bdfa3daeaad10addfbaccdd1d1d1
    HEAD_REF master
)

vcpkg_check_features(OUT_FEATURE_OPTIONS FEATURE_OPTIONS
    FEATURES
        "app"  TRACE_BUILD_APP
        "pipe" TRACE_SUPPORT_PIPE
        "mqtt" TRACE_SUPPORT_MQTT
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
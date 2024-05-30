vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF 1.0.0
    SHA512 18aa729c36ebce37f2f622ebff7b642aa61d9bc2e398b3ae756077243e1356fe33e4f2b6eacaec3d41bbdc579255a3c3f2c7ac5bb140ad2512cac5cd723fc4ec
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
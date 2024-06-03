vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF 1.0.0
    SHA512 38c363329a690131b8d8e4c4071d67f253b69cde4568ddbde36ed0cadc7dcf5f935bd3df1aa8007b8a21ef48730705333f2b4978092f3d1943b1afcada635ee5
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
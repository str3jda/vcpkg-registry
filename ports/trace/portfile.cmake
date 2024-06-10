vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp
    REF 1.0.0
    SHA512 f2f4eeb4c631ae462845908385b8a9da7072537e3ef6ed735a35df252b8fe64f21e2a30d0a95eae6ecb203e276e8c110fba1600d6db6f370f0cb171ef6d59aea
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
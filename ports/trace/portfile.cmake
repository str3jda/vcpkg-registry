vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF 1.0.0
    SHA512 3ae59c93e3bd495ff8b0ad75e3260fcdb2cce05f3059e6e0400ec344184345d937b338192909834023e0a64f5a3f9459bed4e410b88479364c617ee9fd483f22
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
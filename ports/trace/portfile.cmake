vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF c98e2a81200857c6f4eda30777c097977910afc0
    SHA512 01021b5341cc1c610e75c92fe86afa34b8a5793269752460a7d44adfbbe36de4f280cdf4aa17add663c82ba215f1dbf9c05bef66250d85af70ed232f0e3464ac
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()

if(VCPKG_TARGET_IS_WINDOWS)
    vcpkg_cmake_config_fixup(CONFIG_PATH cmake)
else()
    vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/trace)
endif()

vcpkg_fixup_pkgconfig()
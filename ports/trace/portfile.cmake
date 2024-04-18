vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF c3810a868fc84592ea70cf8445ccff2856147ccf
    SHA512 ""
    HEAD_REF master
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DTRACE_BUILD_SERVER=OFF)

vcpkg_cmake_install()

if(VCPKG_TARGET_IS_WINDOWS)
    vcpkg_cmake_config_fixup(CONFIG_PATH cmake)
else()
    vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/trace)
endif()

vcpkg_fixup_pkgconfig()
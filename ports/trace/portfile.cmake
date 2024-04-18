vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF initial
    SHA512 f11c87aa958820ecae93d774b2617628705f7ef18364004b0772756eecb92e577daf1b8fc616d38744213778ba5a8ca65fd2fa347cb7e5d6d510d4c31bfd7b1c
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
vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF 1.0.0
    SHA512 fa2e12ee28fa48df9485087592cf942251b33c0aac46dc5686fd756508ea3412dbe964b5f927a8cd821eeef1b47a310d485aef183c73d26fe4a09171ba7acbf1
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
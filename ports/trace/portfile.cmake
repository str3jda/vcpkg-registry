vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF 1.0.0
    SHA512 cb14fa9c9b661b369b46a81ffe2bdc7a6dbd0dc7d6c4404b1fa5afd8a6c913e19df3bd4f7d8feb29f505c02703787978672a090af391df82974f0dcb1676a624
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
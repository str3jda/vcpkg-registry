vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF 1.0.0
    SHA512 55cdc9457eb9ee44dd8a3fc5b36d78f875cb746fe15c6fd8c751f7ea9e62df11bcf15d427ad0a0f4274464b93bff5384113df5a64d39a6a05dcede7a259b60eb
    HEAD_REF master
)

vcpkg_cmake_configure(SOURCE_PATH "${SOURCE_PATH}")

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()
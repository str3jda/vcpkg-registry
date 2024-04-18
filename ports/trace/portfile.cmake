vcpkg_minimum_required(VERSION 2022-10-12)

vcpkg_check_linkage(ONLY_STATIC_LIBRARY)

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO  str3jda/TraceApp 
    REF "${VERSION}"
    SHA512 c3810a868fc84592ea70cf8445ccff2856147ccf
    HEAD_REF master
)

vcpkg_cmake_configure( SOURCE_PATH "${SOURCE_PATH}" PREFER_NINJA )

vcpkg_cmake_install()
vcpkg_fixup_pkgconfig()

vcpkg_cmake_config_fixup(PACKAGE_NAME "trace")

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
	INSTALL "${SOURCE_PATH}/LICENSE"
	DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
	RENAME copyright)
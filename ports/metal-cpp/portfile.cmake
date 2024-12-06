vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO hollykbuck/metal-cpp
    REF f7be6d4c0d73c021a568744d1429857438e7ff30 # 2024-12-07
    SHA512 6dba0df1b21ab4bc2ddf81adb382d82f7527478dbd88a46aef313704fe107c9d2b07617cb949ec07cb3cf6fcf1d717456fc3e5ccfd315e1b60d9e5dfdfd47c95
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}" DESTINATION "${CURRENT_PACKAGES_DIR}/include/")

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")
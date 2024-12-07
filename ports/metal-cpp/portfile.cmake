vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO hollykbuck/metal-cpp
    REF fb63c710e6863cd64616725a53c8eac86b0a4f1b # 2024-12-07
    SHA512 f69028464e89b2e2e6295c1d44bac9f4948a279e0f2a1923aff7af00875da3e3e3aa0f23d611b35c91ad080b3d0afdf40cbc073d4b99c4e08f4e44bde78f92df
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/metal-cpp)
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/share/doc")
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include" "${CURRENT_PACKAGES_DIR}/debug/share")

if(VCPKG_TARGET_IS_WINDOWS)
    file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug" "${CURRENT_PACKAGES_DIR}/lib")
endif()
vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE.txt")

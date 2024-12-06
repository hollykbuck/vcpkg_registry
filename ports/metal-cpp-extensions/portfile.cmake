vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO hollykbuck/metal-cpp-extensions
    REF 4ec4a0568bf537ce6ebf2e0cd914e258b371851a # 2024-12-07
    SHA512 0
    HEAD_REF main
)

file(INSTALL "${SOURCE_PATH}/MetalKit" DESTINATION "${CURRENT_PACKAGES_DIR}/include/MetalKit")
file(INSTALL "${SOURCE_PATH}/AppKit" DESTINATION "${CURRENT_PACKAGES_DIR}/include/AppKit")

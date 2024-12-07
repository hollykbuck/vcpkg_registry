vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO hollykbuck/metal-cpp-extensions
    REF 27096b6fd31ad0442125f698da2a482749d709af # 2024-12-07
    SHA512 62794759b64c9e769b7396444b99c85c079244c8ce5663517e8311b3db2d88220c5e6171a4e8c3a838bb6fa534af6a7f06419f646a389acbaaf923bf0bc95d82
    HEAD_REF main
)

vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
)
vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/metal-cpp-extensions)

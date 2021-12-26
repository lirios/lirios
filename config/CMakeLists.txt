# SPDX-FileCopyrightText: 2021 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
#
# SPDX-License-Identifier: BSD-3-Clause

cmake_minimum_required(VERSION 3.20.0)

project(Liri
    DESCRIPTION "Liri"
    HOMEPAGE_URL "https://liri.io/"
    LANGUAGES CXX C
)

## Add some paths to check for CMake modules:
set(LIRI_LOCAL_ECM TRUE)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake-shared/modules")

## Include internal functions:
include(LiriSubprojects)

## Liri specific setup common for all modules:
include(LiriSetup)

## Subprojects to build:
if(NOT LIRI_BUILD_SUBPROJECTS)
    if(DEFINED ENV{LIRI_BUILD_SUBPROJECTS})
        set(LIRI_BUILD_SUBPROJECTS "${ENV{LIRI_BUILD_SUBPROJECTS}")
    else()
        _liri_internal_find_subprojects(LIRI_BUILD_SUBPROJECTS)
    endif()
endif()
set(LIRI_BUILD_SUBPROJECTS "${LIRI_BUILD_SUBPROJECTS}" CACHE STRING "List of subprojects to build")

## Dependencies:
include(.dependencies.cmake)
_liri_internal_sort_subprojects("${LIRI_BUILD_SUBPROJECTS}" LIRI_BUILD_SUBPROJECTS)

## Add subprojects to build:
foreach(subproject IN LISTS LIRI_BUILD_SUBPROJECTS)
    add_subdirectory(${subproject})
endforeach()

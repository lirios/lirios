cmake_minimum_required(VERSION 3.10.0)

project(Liri
    DESCRIPTION "Liri"
    LANGUAGES CXX C
)

## Add some paths to check for CMake modules:
set(LIRI_LOCAL_ECM TRUE)
list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/libraries/cmake-shared/modules")

## Liri specific setup common for all modules:
include(LiriSetup)

## Add sub-projects (respect dependency order):
add_subdirectory(libraries/cmake-shared)
add_subdirectory(libraries/fluid)
if(UNIX AND NOT ANDROID)
    add_subdirectory(libraries/qtaccountsservice)
    add_subdirectory(libraries/qtudev)
    add_subdirectory(libraries/qtgsettings)
    add_subdirectory(desktop/libliri)
    add_subdirectory(apps/appcenter)
endif()
add_subdirectory(apps/browser)
add_subdirectory(apps/calculator)
add_subdirectory(apps/files)
add_subdirectory(apps/text)
add_subdirectory(apps/terminal)
if(UNIX AND NOT ANDROID)
    add_subdirectory(desktop/eglfs)
    add_subdirectory(desktop/initial-setup)
    add_subdirectory(desktop/platformtheme)
    add_subdirectory(desktop/networkmanager)
    add_subdirectory(desktop/pulseaudio)
    add_subdirectory(desktop/power-manager)
    add_subdirectory(desktop/qml-xwayland)
    add_subdirectory(desktop/screencast)
    add_subdirectory(desktop/screenshot)
    add_subdirectory(desktop/session)
    add_subdirectory(desktop/settings)
    add_subdirectory(desktop/shell)
    add_subdirectory(desktop/xdg-desktop-portal-liri)
    add_subdirectory(desktop/themes)
endif()
add_subdirectory(desktop/wallpapers)
if(LINUX AND NOT ANDROID)
    add_subdirectory(os/calamares-branding)
endif()

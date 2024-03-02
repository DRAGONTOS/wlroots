# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/rander/dev/hyprland/subprojects/wlroots"
  "/home/rander/dev/hyprland/subprojects/wlroots/src/wlroots-build"
  "/home/rander/dev/hyprland/subprojects/wlroots"
  "/home/rander/dev/hyprland/subprojects/wlroots/tmp"
  "/home/rander/dev/hyprland/subprojects/wlroots/src/wlroots-stamp"
  "/home/rander/dev/hyprland/subprojects/wlroots/src"
  "/home/rander/dev/hyprland/subprojects/wlroots/src/wlroots-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/rander/dev/hyprland/subprojects/wlroots/src/wlroots-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/rander/dev/hyprland/subprojects/wlroots/src/wlroots-stamp${cfgdir}") # cfgdir has leading slash
endif()

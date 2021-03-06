# Copyright 2017-present The Material Motion Authors. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# Description:
# Light-weight API for building UIViewController transitions.

licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE"])

load("@bazel_ios_warnings//:strict_warnings_objc_library.bzl", "strict_warnings_objc_library")

strict_warnings_objc_library(
    name = "MotionTransitioning",
    srcs = glob([
        "src/*.m",
        "src/private/*.m",
    ]),
    hdrs = glob([
        "src/*.h",
        "src/private/*.h",
    ]),
    enable_modules = 1,
    includes = ["src"],
    visibility = ["//visibility:public"],
)

load("@build_bazel_rules_apple//apple:swift.bzl", "swift_library")

swift_library(
    name = "UnitTestsSwiftLib",
    srcs = glob([
        "tests/unit/*.swift",
        "tests/unit/Transitions/*.swift",
    ]),
    deps = [":MotionTransitioning"],
    visibility = ["//visibility:private"],
)

objc_library(
    name = "UnitTestsLib",
    srcs = glob([
        "tests/unit/*.m",
    ]),
    deps = [":MotionTransitioning"],
    visibility = ["//visibility:private"],
)

load("@build_bazel_rules_apple//apple:ios.bzl", "ios_unit_test")

ios_unit_test(
    name = "UnitTests",
    deps = [
      ":UnitTestsLib",
      ":UnitTestsSwiftLib"
    ],
    minimum_os_version = "8.0",
    timeout = "short",
    visibility = ["//visibility:private"],
)

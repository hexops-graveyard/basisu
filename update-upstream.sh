#!/usr/bin/env bash
set -e -x

rm -rf basisu
git clone --branch 1.16.3 --depth 1 https://github.com/BinomialLLC/basis_universal basisu

pushd basisu
rm -rf .git .reuse/ LICENSES/ OpenCL/ bin/ contrib/ spec/ test_files/ webgl/ webgl_videotest/ zstd/ \
    .gitignore CMakeLists.txt CppProperties.json README.md appveyor.yml basisu.sln \
    basisu.vcxproj basisu.vcxproj.filters basisu_tool.cpp build_clang.sh build_emscripten.sh \
    encoder_lvl_vs_perf.png format.sh

popd
#!/bin/bash
cd ~/WebstormProjects/forks/bun && bun ./scripts/build.mjs \
  -GNinja \
  -DCMAKE_BUILD_TYPE=RelWithDebInfo \
  -DWEBKIT_LOCAL=ON \
  -DCMAKE_CXX_FLAGS="" \
  -DCMAKE_LINKER_FLAGS="" \
  -DENABLE_LibGCC=OFF \
  -DLLD_PROGRAM=/usr/lib/llvm/22/bin/ld.lld \
  -B build/relwithdebinfo-local

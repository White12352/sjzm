#!/bin/bash
cd nekoray/.github/workflows
insert_text='          [ ${{ matrix.cross_os }} == public_res ] || rm -rf CORE \&\& git clone -b sing-box-b-t-sra https:\/\/github\.com\/White12352\/sing-box\.git CORE \&\& cd .. \&\& rm -rf sing \&\& git clone -b dev-tl https:\/\/github\.com\/White12352\/sing\.git sing \&\& git config --global user.email "you@example\.com" \&\& git config --global user.name "Your Name" \&\& cd sjzm\/go\/cmd\/updater \&\& go mod tidy \&\& cd ../../..' 
sed -i "/\[ \${{ matrix.cross_os }} == public_res \] || GOOS=\${{ matrix.cross_os }} GOARCH=\${{ matrix.cross_arch }} \\.\\/libs\\/build_go\\.sh/ i \\$insert_text" build-qv2ray-cmake.yml

#!/bin/bash
cd nekoray/.github/workflows
insert_text='          [ ${{ matrix.cross_os }} == public_res ] || cd .. \&\& rm -rf sing-box \&\& git clone -b sing-box-b-t-rmz https:\/\/github\.com\/White12352\/sing-box\.git sing-box \&\& rm -rf sing \&\& git clone -b dev-lt-rmz https:\/\/github\.com\/White12352\/sing\.git sing \&\& rm -rf sing-quic \&\& git clone -b dev https:\/\/github\.com\/Mahdi-zarei\/sing-quic sing-quic \&\& git config --global user.email "you@example\.com" \&\& git config --global user.name "Your Name" \&\& cd sjzm\/go\/cmd\/nekobox_core \&\& go mod tidy \&\& cd ../../..' 
sed -i "/\[ \${{ matrix.cross_os }} == public_res \] || GOOS=\${{ matrix.cross_os }} GOARCH=\${{ matrix.cross_arch }} \\.\\/libs\\/build_go\\.sh/ i \\$insert_text" build-qv2ray-cmake.yml

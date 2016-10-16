var=$(lscpu | grep -P '^CPU\(s\):' | grep -oP '\d+')
cd opencv
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release -DOPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -DCMAKE_INSTALL_PREFIX=/usr/local -DBUILD_PYTHON_SUPPORT=ON -DWITH_TBB=ON ..
make -j$var && make install -j$var

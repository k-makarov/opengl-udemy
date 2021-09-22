#clean
sh clean.sh

cd ..
mkdir build
cd build

conan install ..
cmake .. -G Xcode
cmake --build .

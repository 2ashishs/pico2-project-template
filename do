[ -d .git ] && rm -rf .git
[ -f LICENSE ] && rm -f LICENSE
[ -f README.md ] && rm -f README.md
mkdir -p build
cd build
cmake -DPICO_BOARD=pico2 -DPICO_PLATFORM=rp2350 -DPICO_STDIO_USB=1 ..
make -j6

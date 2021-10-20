VERSION=11  #do not change this version

#install llvm-11
sudo apt-get install llvm-$VERSION-runtime

#install clang-11
sudo apt-get install clang-11

sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-$VERSION 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-$VERSION 100
sudo update-alternatives --install /usr/bin/opt opt /usr/bin/opt-$VERSION 100
sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/bin/llvm-link-$VERSION 100
sudo update-alternatives --install /usr/bin/llvm-dis llvm-dis /usr/bin/llvm-dis-$VERSION 100
sudo update-alternatives --install /usr/bin/llc llc /usr/bin/llc-$VERSION 100

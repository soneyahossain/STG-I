# Convenience script to install LLVM (currenty version 10)
# and other needed tools

#
# Install latest LLVM (currently at 11)
#

VERSION=10

# bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

wget https://apt.llvm.org/llvm.sh
chmod +x llvm.sh
sudo ./llvm.sh $VERSION
rm ./llvm.sh

# Update links
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-$VERSION 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-$VERSION 100
sudo update-alternatives --install /usr/bin/opt opt /usr/bin/opt-$VERSION 100
sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/bin/llvm-link-$VERSION 100
sudo update-alternatives --install /usr/bin/llvm-dis llvm-dis /usr/bin/llvm-dis-$VERSION 100
sudo update-alternatives --install /usr/bin/llc llc /usr/bin/llc-$VERSION 100

#
# Install cmake
#
sudo apt install cmake

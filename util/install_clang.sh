# Convenience script to install LLVM (currenty version 10)
# and other needed tools

#
# Install latest LLVM (currently at 10)
#
bash -c "$(wget -O - https://apt.llvm.org/llvm.sh)"

# Alternatively, to install a specific LLVM version
#    wget https://apt.llvm.org/llvm.sh
#    chmod +x llvm.sh
#    sudo ./llvm.sh <version number>

# Update links
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-10 100
sudo update-alternatives --install /usr/bin/clang++ clang++ /usr/bin/clang++-10 100
sudo update-alternatives --install /usr/bin/opt opt /usr/bin/opt-10 100
sudo update-alternatives --install /usr/bin/llvm-link llvm-link /usr/bin/llvm-link-10 100
sudo update-alternatives --install /usr/bin/llc llc /usr/bin/llc-10 100

#
# Install cmake
#
sudo apt install cmake

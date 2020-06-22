#!/bin/sh
BDB_PREFIX=/db4

git clone https://github.com/ElementsProject/elements.git
mkdir /db4
cd ./elements
su
./contrib/install_db4.sh $BDB_PREFIX
exit
./autogen.sh
./configure BDB_LIBS="-L${BDB_PREFIX}/lib -ldb_cxx-4.8" BDB_CFLAGS="-I${BDB_PREFIX}/include" --disable-dependency-tracking --with-gui=no --disable-test --disable-bench
su
make
make install
exit

# Install dependencies
apt -y update
apt -y install git g++ libgmp-dev libsdl-net1.2-dev make xxd libb64-dev vim time

# Install librcp (regular expression parsing library)
cd /root
git clone https://github.com/lassenielsen/librcp.git ./librcp
cd librcp
make clean
make config
make build -j 4
make install
cd ..

# Install libdpl (bnf parsing library)
git clone https://github.com/lassenielsen/libdpl.git ./libdpl
cd libdpl
make clean
make config
make build -j 4
make install
cd ..

# Install libpi (implementation of pi-calculus structures and instructions)
git clone https://github.com/lassenielsen/libpi.git ./libpi
cd libpi
make clean
make config
make build -j 4
make install
## Test implementation
cd test
make clean
make config
make build
make test
make clean
cd ..
cd ..

# Install hapi lib (library offering hapy syntax parsing, type checking, program transformations and c++ code generation)
git clone https://github.com/lassenielsen/hapi.git ./hapi
cd hapi
make clean
make config
make build -j 4
make install
## Install hapi programs (compiler)
cd programs
make clean
make config
make build -j 4
make install
cd ..
## Install hapi syntax for vim
cd vim
make install
cd ..
## Make tutorial page
cd examples/tutorial
make
./mkpage.sh > page.md
cd ../..
## Test hapi lib
cd examples/check/assertions
make test
cd ../infer
make test
cd ../purity
make test
cd ../tests
make test
cd ../../../
cd ..


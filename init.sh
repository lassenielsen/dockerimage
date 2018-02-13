apt -y update
apt -y install git g++ libgmp-dev libsdl-net1.2-dev make xxd libb64-dev

cd /root
git clone https://github.com/lassenielsen/librcp.git ./librcp
cd librcp
make clean
make config
make build -j 4
make install
cd ..

git clone https://github.com/lassenielsen/libdpl.git ./libdpl
cd libdpl
make clean
make config
make build -j 4
make install
cd ..

git clone https://github.com/lassenielsen/libpi.git ./libpi
cd libpi
make clean
make config
make build -j 4
make install
cd ..

git clone https://github.com/lassenielsen/hapi.git ./hapi
cd hapi
make clean
make config
make build -j 4
make install
cd programs
make clean
make config
make build -j 4
make install
cd ..
cd ..


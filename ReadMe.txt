Configure and build with CMake

lessons from :
https://www.youtube.com/watch?v=kEGQKzhciKc&ab_channel=Code%2CTech%2CandTutorials

Cmake commands : 

cmake -S . -B build

cmake -S . -B build -G "MinGW Makefiles" #used to generate unix file system

make -C ./build #command used to build the system

./OLAS #used to run the code

code . #daca esti in cmd / terminal si vrei sa deschizi Vscode

chmod +x configure.sh build.sh run.sh #change permisions

touch configure.sh #create the file

For CPack you need to instal NSIS from source forge
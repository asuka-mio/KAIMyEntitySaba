# KAIMyEntitySaba
KAIMyEntity运行库，已兼容linux-aarch64
你需要先编译并安装bullet才能对其进行编译

用法:
release里面的如果你是Windows系统就下载dll，然后放在和mods文件夹同级的目录
如果你是安卓系统，那有两个安装方法，如果你root了，那直接复制进/data/user/0/com.aof.mcinabox/files/runtime/boat目录下，
如果你没root，那就塞进mcinabox那里下载的运行库压缩包里，和j2me-image文件夹同一级就行，然后在app里安装一遍
其余注意事项同原版mod

# Build   
## For Android
Build and Install bullet with cross compile tools   
Edit CMakeLists.txt according you environment   
set the CROSS_COMPILE Flag = 1 and change the path to your toolchains
cmake .   
cd /output   
make

## For Windows
Install cmake and mingw/cygwin   
Build and Install bullet   
Edit CMakeLists.txt according you environment   
cmake .   
cd /output   
make  

## For Linux
Install bullet   
Edit CMakeLists.txt according you environment   
cmake .   
cd /output   
make  

## Notification
When you installed the bullet which built with cross-compile toolchains For Android    
And you want to build this for Linux   
YOU NEED REINSTALL bullet OR BUILD&&INSTALL without cross-compile toolchains !    

**----choose either step A or B----**
# A)how to start and run docker image with dockercompose 
--althrough it has only one dockerfile and no compose.yml:(
```
git clone https://github.com/prathamadh/VHDLLab.git
cd VHDLLab
docker build -t test1vhdl .
docker run --name test1vhdl -it test1vhdl /bin/bash
```
**skip to step number 5 to continue form here**
# B)how to start and run docker image without dockercompose

1)download the image 
 link to docker image:- https://drive.google.com/file/d/1-EeScxm3K1CckwhAIT2C_KwlWzC1bx1i/view?usp=sharing
2)run command 
```
docker load -i /path/to/your/image.tar

```
3)The images should appear in docker images or by command docker ps -a 

4)run the docker images through 
```
docker run -it <image:tag> /bin/bash
```

5) a shell might be opened ,then go to /pratical where you can fild all the code for all the task

```
cd pratical
cd <question>

```
6)to visualize with gtkwave you must map port with display on your host computer and install a software to view it so instead of this ,just install gtkwave from this github 
```
git clone https://github.com/fwswdev/GtkWaveAutoRun.git
```
extract the zip and click the executeable , then the gtkwave would be automatically installed and run .

7)to view the vcd file 
```
docker cp <containerid>:<filelocationofvcd> <locationononhostdevice>
```
8)load the vcd file on gtkwave to view the output.


here are all the copy commands 
```
docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/2x1mux/2x1mux.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/2x4dec/dec.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/fulladder/fa.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/gcd/result.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/jk/jk.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/lcm/lcm.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/sdect/sd.vcd C:\Users\acm\Desktop\vcdcol

docker cp 4df1950cefaf694e4da08b69f378455ac00d64838c06a6a1961de7a4c99ee31b:/pratical/upcounter/uc.vcd C:\Users\acm\Desktop\vcdcol
```
#how to install vim 
```
su -
apt update
apt install sudo
exit
sudo apt install vim

```

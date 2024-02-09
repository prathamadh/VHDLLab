# link to docker image:-


# how to start and run docker image 

1)download the image 

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
git clone 
```
extract the zip and click the executeable , then the gtkwave would be automatically installed and run .

7)to view the vcd file 
```
docker cp <containerid>:<filelocationofvcd> <locationononhostdevice>
```

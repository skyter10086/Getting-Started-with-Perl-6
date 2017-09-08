## Running Perl 6 notebook

As I am more familiar with Docker, I am explaining the docker way of running Perl 6 notebook. Of course there are other ways to achieve the same.

#### Step 1: Docker installation

To run Perl 6 notebook, first install `Docker` in your respective operating system.

As I am running Windows, I install Docker [from here](https://github.com/docker/toolbox/releases).

Go to your docker terminal and find `ip-address` as shown in this figure:

![](https://i.imgur.com/RO0Kfer.png)

#### Step 2: Pulling the Docker image with Perl 6 kernel

From the docker terminal, pull the image with command:
`docker pull sumdoc/perl-6-notebook`.

![](https://i.imgur.com/34Zd14v.png)

#### Step 3: Running the container

In the docker terminal, type:
`docker run -it -p 8888:8888 sumdoc/perl-6-notebook`.

![](https://i.imgur.com/YSIOKHZ.png)

Note the token number.

#### Step 4: Accessing the running container

Open your web browser and type:

`ip-address:8888`. In my case, I type:
`http://192.168.99.100:8888/` as my `ip-address` is:
`192.168.99.100`.
You will be greeted with such window:

![](https://i.imgur.com/hGitH7L.png)

#### Step 5: Login with token number 

After inserting the token number(which is shown above), you will get such webpage:

![](https://i.imgur.com/EcOnT92.png)

On the right upper corner, you will find `New` button. Click on that and you will get Perl 6 as option. Click on Perl 6.

![](https://i.imgur.com/5e6VOVX.png)


After that you will have this Perl 6 notebook running.

![](https://i.imgur.com/JE4r3kl.png)
![](https://i.imgur.com/1lCXtTh.png)

#### STEP 6: Mounting the host folder into docker folder

You may be having Perl 6 files or Perl 6 notebooks (that is .ipynb files)
in a folder in your PC that you want to work inside docker. In that case you have to 
**mount** that folder inside docker. 

Here I will give one example. I have my Perl 6 files in a folder (Note I am in `Windows 10`)
named `C:\Users\Suman\Desktop\Perl6` in my host and mounting on `/tmp` folder inside docker with the command `docker run -it -p 8888:8888 -v /c/Users/Suman/Desktop/Perl6:/tmp sumdoc/perl-6-notebook` which is clearly shown in figure below:
![](https://i.imgur.com/7cBYs0J.png)

#### STEP 7: Accessing the Perl 6 files of the host

After following above instructions and inserting the token number you will reach the notebook page. Find the folder where you mounted your host folder. In my case I mounted on `/tmp`.

![](https://i.imgur.com/dCaNB2j.png)

Now click on that `/tmp` folder and you will find your Perl 6 files.

![](https://i.imgur.com/r9oeJm5.png)

Then if you want to open your Perl 6 notebook, click the respective `.ipynb` file. 

**Happy coding in Perl 6 !!**


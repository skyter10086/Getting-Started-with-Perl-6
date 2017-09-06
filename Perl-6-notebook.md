## Running Perl 6 notebook



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

**Happy coding in Perl 6!!**




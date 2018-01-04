# Using Perl 6 notebook with Binder #

This is my another blog on running Perl 6 notebook. For previous blog,
[see
here](https://sumdoc.wordpress.com/2017/09/06/how-to-run-perl-6-notebook/).
This way of running notebook does not need any type of cumbersome setup or any special
command. So its easy to follow.

---

There is a very exciting project called
[Binder](https://mybinder.org/). It provides an execution environment
for running jupyter notebooks `.ipynb` files in your github repository.
Reproducibility and scalability are two major things in scientific
research today. Which I believe Binder does!!


So today here I am showing how to run Perl 6 notebook in Binder.

Go to [this github repo](https://github.com/sumandoc/Perl-6-notebook)
and find `launch|binder` icon.

![](https://i.imgur.com/aaixnG7.png)
Click it.
After that Binder will build this repo if not already built or the
`Dockerfile` has changed recently:

![](https://i.imgur.com/T1zNR5m.png)


After finishing the build, Binder will launch familiar Jupyter
environment as in this image

![](https://i.imgur.com/UrBUR4V.png)

with all the contents of the repository.

From `New` in upper right corner, select `Perl 6` and you will get a
`Perl 6` notebook as shown here:

![](https://i.imgur.com/X3CgDE1.png)

You are ready to go and code with Perl 6 in Jupyter notebook for all
your `Reproducibe Research`.
If you have jupyter notebooks(`.ipynb files`) in your repo you can
click and open those notebooks too and execute codes.

Happy Coding in **Perl 6** 
!!



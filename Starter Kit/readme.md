R Starter Kit
=============

Introduction
------------

This set of examples covers most fundamental functions used in R. Topics covered here are:

* Data Types *(fundamentals.R)*
* I/O functions *(io_func.R)*
* Subsetting *(subsetting_data.R)*
* Flow Control *(flow_control.R)*
* Vectorization *(vectorized.R)*
* Functions *(functions_in_r.R)*
* Scoping rules *(scoping.R)*
* Loop functions (the *apply()* function family) *(loop_functions.R)*
* *dplyr* package *(dplyr_examples.R)*

Installing Additional Packages
------------------------------

Note that if you want (or need) to use additional packages, you must install them. To install additional packages run R from console using administrative privileges. If you are using RStudio, run it as administrator.

To run RStudio as admin:

* On Windows platform: right click on RStudio executable icon, and choose "Run as Administrator" option

* On Linux platform: run terminal of your choice and type "sudo rstudio", if you don't have sudo on your Linux distro use corresponding function e.g. su

**Important note:** Unless you are installing packages, or setting preferences, there is no reason to run RStudio as administrator. Run it as a normal user for day-to-day use.

Installation note for Ubuntu users
----------------------------------

**For Ubuntu 14.04 LTS users:** R comes already installed on Ubuntu. Latest long-term support Ubuntu 14.04LTS containes outdated version of R. This can be a problem when installing some packages (such as 'mosaic' for example). Follow instructions on this [link](http://sysads.co.uk/2014/06/install-r-base-3-1-0-ubuntu-14-04/) (at your own risk) to update R. Here are instructions that are provided on the mentioned site:

`sudo apt-get remove r-base-core`

`sudo gedit /etc/apt/sources.list`

Add the following entry to the *source.list* file:

`deb http://cran.rstudio.com/bin/linux/ubuntu trusty/`

Then:

`gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9`

`gpg -a --export E084DAB9 | sudo apt-key add -`

`sudo apt-get update`

`sudo apt-get upgrade`

`sudo apt-get install r-base`

Please note that Ubuntu could show you a warning or an error after you remove `r-base-core`. You can close the error message and continue the process. After successful installation the error will disappear.

Additional resources
--------------------

Here are some useful links:

* [aRrgh: a newcomer’s (angry) guide to R](http://arrgh.tim-smith.us/)
* [Advanced R by Hadley Wickham](http://adv-r.had.co.nz/)
* [Togaware](http://togaware.com/onepager/)
* [inside-R](http://www.inside-r.org/)

Additionally, free and partially free tutorials are available on the Internet:

* [Data Camp](https://www.datacamp.com/)
* [R Programming Tutorials by Mike Marin](https://www.youtube.com/watch?v=cX532N_XLIs&index=1&list=PLqzoL9-eJTNBDdKgJgJzaQcY6OXmsXAHU)

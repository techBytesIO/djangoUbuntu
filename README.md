# Django Ubuntu Development Server

These are the provisioning files for standing up your own Python and Django development environment with Vagrant.

You can download the box from the official Vagrant site at [techbytes/djangoubuntu](https://atlas.hashicorp.com/techbytes/boxes/djangoUbuntu)

__Consists of:__
* Ubuntu 14.04.5 LTS
* Python 3.4.1
* Python 3.5.2
* Django 1.10
* nodejs 6.4.0
* PostgreSQL 9.5.4
* htop Process Viewer

## Standing up your Django Development Environment
Watch the tutorial on setting it up on [techBytes.io](http://www.techbytes.io/videos/19)
### Pull down the box from Vagrant
You can download the box from the official [Vagrant site](https://atlas.hashicorp.com/techbytes/boxes/djangoUbuntu)
- or -
Go to your terminal and add the box this way:
vagrant box add techbytes/djangoubuntu

### The quick down and dirty to mod your own play with the config
clone this Repo

cd into the file, open the files and alter

`vagrant init techbytes/djangoubuntu`

`vagrant up`

ta-da -- Now you have your Django Development Environment

You can package this so that it is available for you on your host machine at anytime.

With your DjangoUbuntu box up and running:
`vagrant package --output WHATEVEREYOUWANTTONAMEIT`
#! /bin/bash
current=/home/dotcloud/current
eggbundle=https://plone-egg-packages.googlecode.com/files/eggs-plone-4.2.3-py2.7-jan012012-1.tgz
cd $current
python bootstrap.py
# dotcloud will try to get the setup.py dependencies 
# we didn't want that, so we named it with two 'zz's
# here we put it back
mv setup.py.zz setup.py
rm -rf eggs
wget https://plone-egg-packages.googlecode.com/files/eggs-plone-4.2.3-py2.7-jan012012-1.tgz -O eggs.tar.gz
#curl -o eggs.tar.gz $eggbundle
gunzip eggs.tar.gz
tar xf eggs.tar
#gzip -dc eggs.tar.gz | tar -xf -
bin/buildout -v

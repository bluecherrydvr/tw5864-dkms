To build a package:

* Change directory to ```drivers/staging/media/tw5864``` in needed kernel source tree;
* Copy all files from this repo to current directory;
* Execute ```./build_deb.sh```

```../tw5864-dkms_XXX_all.deb``` will be generated.

In other words:

```cd /usr/local/src/linux/drivers/staging/media/tw5864 && cp -r /usr/local/src/tw5864-dkms/* . && ./build_deb.sh```

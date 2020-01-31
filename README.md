AmpGen Singularity Image
===

This is a simple tool that makes an SIF file that you can use singularity to run AmpGen binaries.

You need root privilages to build singularity images!

To build the image just use

```sudo singularity build myImage.sif Singularity```

then to actually run AmpGen programs you will need a wrapper script that contains

```
source /sw/root/install/bin/thisroot.sh
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/sw/AmpGen/install/lib
export PATH=$PATH:/sw/AmpGen/install/bin
```


as a preamble

then 

```singularity run myImage.sif ./myScript.sh```

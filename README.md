AmpGen Singularity Image
===

This is a simple tool that makes an SIF file that you can use singularity to run AmpGen binaries.

You need root privilages to build singularity images!

To build the image, just use the shell script:

```sudo ./makeImage.sh```

which will make an image, called runImage.sif, in the directory. 

To run programs with singularity use

```singularity run runImage.sif
source /setup_ampgen.sh
#Your AmpGen program here, e.g.
Generator example_kspipi.opt
```

#!/usr/bin/env bash

if [ $(whoami) != "root" ]
then
echo Warning you must run this as root, try sudo $0
exit;
fi

echo Building the image that builds AmpGen
echo singularity build buildImage.sif Singularity;
singularity build buildImage.sif buildImage.conf

if [ -f buildImage.sif ]
then
    echo Image build sucessfully, now building AmpGen inside the image
    echo singularity run buildImage.sif ./install_ampgen.sh
    singularity run buildImage.sif ./install_ampgen.sh
    echo Now compressing the AmpGen installation
    echo tar cvfz AmpGen.tar.gz AmpGen/install/bin AmpGen/install/lib AmpGen/options
    tar cvfz AmpGen.tar.gz AmpGen/install/bin AmpGen/install/lib AmpGen/options
    echo Building the final running image 
    singularity build runImage.sif runImage.conf
    if [ -f runImage.sif ]
    then 
        echo Successfully built the runImage.sif container. AmpGen is found in the /sw/AmpGen directory there is also /setup_ampgen.sh that sets up LD_LIBRARY_PATH, PATH and AMPGENROOT variables
        echo deleting the build image
        rm buildImage.sif
    fi
fi

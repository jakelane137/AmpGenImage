Bootstrap : docker 
From: fedora:latest

%files
    install_root.sh
    install_ampgen.sh
%post 
    echo "Hello World"
    yum install -y wget git tar cmake gcc make gcc-c++ libXpm libSM  binutils libX11-devel libXpm-devel libXft-devel libXext-devel gsl gsl-devel python3 python3-devel python3-numpy

    ./install_root.sh
    source /sw/root/install/bin/thisroot.sh
    root --version
    git clone --recursive https://github.com/GooFit/AmpGen.git
    cd AmpGen
    git checkout jlane
    git pull origin jlane
    mkdir install
    cd install
    cmake .. -DCMAKE_CXX_STANDARD=14
    make 

    
     
   

    


%environment 
    export LC_ALL=C


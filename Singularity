Bootstrap : docker 
From: fedora:latest

%files

    
%post 
    echo "Hello World"
    yum -y install wget cmake make gcc gcc-c++ gsl gsl-devel freetype-devel
    cd /
    curl https://root.cern/download/root_v6.18.04.Linux-fedora30-x86_64-gcc9.2.tar.gz > root.tar.gz
    mkdir /sw
    cd sw
    tar xfv ../root.tar.gz
    cd /
    rm root.tar.gz
        
     
   

    


%environment 
    export LC_ALL=C


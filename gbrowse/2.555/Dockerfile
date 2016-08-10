FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             gbrowse
# Software Version:     latest available in CPAN
# Software Website:     https://github.com/GMOD/GBrowse
# Description:          the Generic Genome Browser
##############################################################

RUN yum install -y \
           bzip2 \
           expat \
           expat-devel \
           gd \
           gd-devel \
           gmp-devel \
           graphviz \
           graphviz-devel \
           httpd \
           libxml2 \
           libxml2-devel \
           mariadb-devel \
           ncurses-devel \
           openssl-devel \
           perl    \
           perl-App-cpanminus \
           perl-CPAN  \
           perl-local-lib \
           perl-Test-Most \
           unzip \
           zlib-devel 
RUN cpanm Env \
          DB_File \
          CGI::Session \
          Bio::Graphics \
          Bio::Root::Version \
          Bio::Das \
          Crypt::SSLeay \
          DBD::Pg \
          DBD::SQLite \
          DBD::mysql \
          DBI \
          DB_File::Lock \
          FCGI \
          File::NFSLock \
          GD::SVG \
          Net::OpenID::Consumer \
          Net::SMTP::SSL \
          Parse::Apache::ServerStatus \
          Template ; \
    cpanm Bio::Graphics::Browser2

# this method works, but problems with Bio::DB::Sam
#
#curl -o samtools-1.3.1.tar.bz2  -L https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2
#tar xvaf samtools-1.3.1.tar.bz2
#cd samtools-1.3.1
#./configure
#make all all-htslib
#make prefix=/software/applications/samtools/1.3.1_ install install-htslib

# old method of installing samtools...
#
#    curl -L -o htslib-1.3.1.tar.gz https://github.com/samtools/htslib/archive/1.3.1.tar.gz ; \
#    curl -L -o samtools-1.3.1.tar.gz https://github.com/samtools/samtools/archive/1.3.1.tar.gz ; \
#    curl -L -o bcftools-1.3.1.tar.gz https://github.com/samtools/bcftools/archive/1.3.1.tar.gz ; \
#    tar xzf bcftools-1.3.1.tar.gz ; \
#    tar xzf htslib-1.3.1.tar.gz ; \
#    tar xzf samtools-1.3.1.tar.gz ; \
#    rm -rf bcftools-1.3.1.tar.gz ; \
#    rm -rf htslib-1.3.1.tar.gz ; \
#    rm -rf samtools-1.3.1.tar.gz ; \
#    mv htslib-1.3.1 htslib ; \
#    cd bcftools-1.3.1 ; \
#    make -j HTSDIR=../htslib ; \
#    make prefix=/software/applications/bcftools/1.3.1 install ; \
#    mkdir -p /software/applications/samtools/1.3.1/src ; \
#    cp -a *.[ch] libbam.a /software/applications/samtools/1.3.1/src ; \
#    cd .. ; \
#    cd samtools-1.3.1 ; \
#    make -j HTSDIR=../htslib ; \
#    make prefix=/software/applications/samtools/1.3.1 install ; \
#    cd ../ ; \
#    rm -rf htslib samtools-1.3.1 bcftools-1.3.1

#RUN cd /tmp ; \
#    curl -o jksrc.zip -L http://hgdownload.cse.ucsc.edu/admin/jksrc.zip ; \
#    unzip jksrc.zip ; \
#    cd kent/src/lib ; \
#    export MACHTYPE=`uname -m` ; \
#    export CFLAGS="-fPIC"
#    make -j ; \
#    cp x86_64/jkweb.a . ; \
#    export KENT_SRC=/tmp/kent/src ; \
#    cpan install Bio::DB::BigFile ; \
#    cpan install DB_File::Lock ; \
#    cpan install Parse::Apache::ServerStatus ; \
#    cpan install Template ; \
#    cpan install Net::OpenID::Consumer ; \
   
#    cpan install Bio::DB::Sam ; \
#    git clone $GIT ; \
#    cd $APP_NAME ; \
#    git checkout tags/$VERSION ; \
#    perl Build.PL --install_base=$DEST/$$VERSION ; \
#    ./Build install ; \    ## interactive step. BUGGER!!
#    rm -rf ~/.cpan ; \ 
#    mkdir -p /usr/share/licenses/$APP_NAME-$VERSION ; \
#    cp LICENSE.txt /usr/share/licenses/$APP_NAME-$VERSION/ ; \
#    cd ../         ; \
#    mkdir -p $DEST ; \
#    mv $APP_NAME $DEST/$VERSION
CMD ["/bin/bash"]


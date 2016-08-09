FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Dockerfile Version:   0.1
# Software:             gbrowse
# Software Version:     2.555
# Software Website:     https://github.com/GMOD/GBrowse
# Description:          the Generic Genome Browser
##############################################################

ENV APP_NAME=GBrowse
ENV VERSION=release-2_555
ENV GIT=https://github.com/GMOD/GBrowse.git
#ENV DEST=/software/applications/$APP_NAME/
#ENV PATH=$DEST/$VERSION/:$PATH
ENV PERL_MM_USE_DEFAULT=1

RUN yum install -y \
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
           openssl-devel \
           perl    \
           perl-CPAN  \
           perl-Time-HiRes \
           perl-Data-Dumper-Names \
           perl-Test-Most \
           perl-XML-Writer \
           perl-XML-DOM \
           perl-XML-SAX \
           perl-DBD-mysql \
           perl-Clone \
           perl-Crypt-SSLeay \
           perl-GraphViz \
           perl-File-NFSLock \
           perl-HTML-TableExtract \
           perl-List-MoreUtils \
           perl-Set-Scalar \
           perl-Sort-Naturally \
           perl-Spreadsheet-ParseExcel \
           perl-XML-XPath \
           perl-XML-DOM \
           perl-XML-LibXML \
           perl-XML-SAX-Writer \
           perl-XML-Simple \
           perl-XML-Twig \
           perl-Net-IDN-Encode \
           perl-Net-SMTP-SSL \
           perl-Error \
           perl-YAML \ 
           perl-DBD-SQLite \
           perl-CGI \
           perl-local-lib \
           perl-Env \
           perl-DB_File \
           perl-CGI-Session \
           perl-File-Temp \
           perl-JSON \
           perl-Storable  \
           perl-GD  \
           samtools \
           samtools-libs \
           samtools-devel \
           unzip
RUN cpan CPAN::Meta::Requirements ; \
    cpan Array::Compare ; \
    cpan Convert::Binary::C ; \
    cpan Graph ; \
    cpan IO::Scalar ; \
    cpan PostScript::TextBlock ; \
    cpan SVG ; \
    cpan SVG::Graph ; \
    cpan Data::Stag ; \
    cpan install Bio::Perl ; \
    cpan install Bio::Graphics ; \
    cpan install Bio::Graphics ; \
    cpan install LWP ; \
    cpan install Bio::Das ; \
    cpan install GD::SVG 


### Oh ffs, all we need...?
RUN yes '' | perl -MCPAN -e 'install Bio::Graphics::Browser2'

# install samtools manually - for static libs
RUN yum install -y zlib-devel \
                   bzip2 \
                   ncurses-devel ; \ 
    cd /tmp ; \
#
# this method works, but problems with Bio::DB::Sam
#curl -o samtools-1.3.1.tar.bz2  -L https://github.com/samtools/samtools/releases/download/1.3.1/samtools-1.3.1.tar.bz2
#tar xvaf samtools-1.3.1.tar.bz2
#cd samtools-1.3.1
#./configure
#make all all-htslib
#make prefix=/software/applications/samtools/1.3.1_ install install-htslib
    curl -L -o htslib-1.3.1.tar.gz https://github.com/samtools/htslib/archive/1.3.1.tar.gz ; \
    curl -L -o samtools-1.3.1.tar.gz https://github.com/samtools/samtools/archive/1.3.1.tar.gz ; \
    curl -L -o bcftools-1.3.1.tar.gz https://github.com/samtools/bcftools/archive/1.3.1.tar.gz ; \
    tar xzf bcftools-1.3.1.tar.gz ; \
    tar xzf htslib-1.3.1.tar.gz ; \
    tar xzf samtools-1.3.1.tar.gz ; \
    rm -rf bcftools-1.3.1.tar.gz ; \
    rm -rf htslib-1.3.1.tar.gz ; \
    rm -rf samtools-1.3.1.tar.gz ; \
    mv htslib-1.3.1 htslib ; \
    cd bcftools-1.3.1 ; \
    make -j HTSDIR=../htslib ; \
    make prefix=/software/applications/bcftools/1.3.1 install ; \
    mkdir -p /software/applications/samtools/1.3.1/src ; \
    cp -a *.[ch] libbam.a /software/applications/samtools/1.3.1/src ; \
    cd .. ; \
    cd samtools-1.3.1 ; \
    make -j HTSDIR=../htslib ; \
    make prefix=/software/applications/samtools/1.3.1 install ; \
    cd ../ ; \
    rm -rf htslib samtools-1.3.1 bcftools-1.3.1

RUN cd /tmp ; \
    curl -o jksrc.zip -L http://hgdownload.cse.ucsc.edu/admin/jksrc.zip ; \
    unzip jksrc.zip ; \
    cd kent/src/lib ; \
    export MACHTYPE=`uname -m` ; \
    export CFLAGS="-fPIC"
    make -j ; \
    cp x86_64/jkweb.a . ; \
    export KENT_SRC=/tmp/kent/src ; \
    cpan install Bio::DB::BigFile ; \
    cpan install DB_File::Lock ; \
    cpan install Parse::Apache::ServerStatus ; \
    cpan install Template ; \
    cpan install Net::OpenID::Consumer ; \
   
    cpan install Bio::DB::Sam ; \
    git clone $GIT ; \
    cd $APP_NAME ; \
    git checkout tags/$VERSION ; \
    perl Build.PL --install_base=$DEST/$$VERSION ; \
    ./Build install ; \    ## interactive step. BUGGER!!
    rm -rf ~/.cpan ; \ 
    mkdir -p /usr/share/licenses/$APP_NAME-$VERSION ; \
    cp LICENSE.txt /usr/share/licenses/$APP_NAME-$VERSION/ ; \
    cd ../         ; \
    mkdir -p $DEST ; \
    mv $APP_NAME $DEST/$VERSION
CMD ["/bin/bash"]


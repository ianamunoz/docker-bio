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
           graphviz \
           graphviz-devel \
           libxml2 \
           libxml2-devel \
           perl    \
           perl-CPAN  \
           perl-GD ; \
    cpan CPAN::Meta::Requirements ; \
    cpan Data::Dumper::Names ; \
    cpan Time::HiRes ; \
    cpan Test::Most ; \
    cpan XML::Writer ; \
    cpan XML::DOM ; \
    cpan XML::SAX ; \
    cpan Algorithm::Munkres ; \
    cpan Array::Compare ; \
    cpan Clone ; \
    cpan Convert::Binary::C ; \
    cpan Graph ; \
    cpan GraphViz ; \
    cpan HTML::TableExtract ; \
    cpan IO::Scalar ; \
    cpan List::MoreUtils ; \
    cpan PostScript::TextBlock ; \
    cpan SVG ; \
    cpan SVG::Graph ; \
    cpan Set::Scalar ; \
    cpan Sort::Naturally ; \
    cpan Spreadsheet::ParseExcel ; \
    cpan XML::DOM::XPath ; \
    cpan XML::LibXML ; \
    cpan XML::SAX::Writer ; \
    cpan XML::Simple ; \
    cpan XML::Twig ; \
    cpan Net::IDN::Encode ; \
    cpan Data::Stag ; \
    cpan Error ; \
    cpan YAML ; \
    cpan DBD::SQLite ; \
    cpan CGI ; \
    ######################## ; \ 
    curl -L -o BioPerl-1.6.924.tar.gz http://search.cpan.org/CPAN/authors/id/C/CJ/CJFIELDS/BioPerl-1.6.924.tar.gz ; \ 
    tar xzf BioPerl-1.6.924.tar.gz ; \
    cd BioPerl-1.6.924 ; \
    perl Build.PL ; \
    ./Build install ; \
    cd .. ; \
    rm -rf BioPerl* ; \
    ######################## ; \ 
    cpan install local::lib ; \
    cpan install Env ; \
    cpan install DB_File ; \
    cpan install CGI::Session ; \
    cpan install Bio::Graphics ; \
    cpan install Bio::Graphics ; \
    cpan install File::Temp ; \
    cpan install JSON ; \
    cpan install LWP ; \
    cpan install Storable ; \
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


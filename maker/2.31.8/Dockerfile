FROM sglim2/centos7
MAINTAINER Ian Merrick <MerrickI@Cardiff.ac.uk>

##############################################################
# Software:             maker
# Software Version:     2.31.8
# Software Website:     http://www.yandell-lab.org/software/maker.html
# Description:          MAKER is a portable and easily configurable genome annotation pipeline
##############################################################

ENV APP_NAME=maker
ENV VERSION=2.31.8
ENV GIT=https://github.com/sglim2/maker
ENV DEST=/software/$APP_NAME/
ENV PATH=$DEST/$VERSION/:$PATH

ENV PERL_MM_USE_DEFAULT=1
RUN yum install -y perl-CPAN \
                   exonerate \
                   expat-devel ; \
    cpan install DBI ; \
    cpan install DBD::SQLite ;\
    cpan install forks ; \
    cpan install forks::shared ; \
    cpan install Env ; \
    cpan install File::Which ; \
    cpan install Perl::Unsafe::Signals ; \
    cpan install Bit::Vector ; \
    cpan install File::ShareDir::Install ; \
    cpan install IPC::Cmd ; \
    cpan install Inline::C ; \
    cpan install IO::All ; \
    cpan install IO::Prompt ; \
    cpan install LWP ; \
    cpan install XML::Writer ; \
    cpan install YAML ; \     
    cpan install XML::Twig ; \
    cpan install Bio::Root::Version ; \
    rm -rf ~/.cpan/build 

RUN curl -L -o RepeatMasker-open-4-0-6.tar.gz  http://www.repeatmasker.org/RepeatMasker-open-4-0-6.tar.gz ; \
    tar xvzf RepeatMasker-open-4-0-6.tar.gz ; \
    cd 
RUN git clone $GIT
RUN cd $APP_NAME ; \
    git checkout tags/$VERSION ; \
    cd src ;  \
    perl Build.PL ; \
    ./Build installdeps ; \
    ./Build blast ; \
    ./Build snap ; \
#    ./Build repeatmasker ; \ ## interactive - can not automate!
    ./Build install ; \
    cd ../  ; \
    mkdir -p $DEST && \
    mv $APP_NAME $DEST/$VERSION
CMD ["/bin/bash"]


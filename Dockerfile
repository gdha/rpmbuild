FROM rockylinux/rockylinux:9

RUN dnf install -y rpmdevtools rpmlint ksh git asciidoc xmlto \
    && mkdir -p /rpmbuild/{BUILD,RPMS,SOURCES,SPEC/SRPMS} \
    && echo '%_topdir /rpmbuild' > /rpmbuild/.rpmmacros \
    && dnf clean dbcache 

WORKDIR /rpmbuild

ENTRYPOINT ["bash"]

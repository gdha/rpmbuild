FROM rockylinux/rockylinux:9

RUN dnf install -y rpmdevtools rpmlint ksh git \
    && mkdir /rpmbuild \
    && dnf clean dbcache 

WORKDIR /rpmbuild

ENTRYPOINT ["bash"]

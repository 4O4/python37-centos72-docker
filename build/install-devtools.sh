yum --enablerepo=base clean metadata && \
yum groups mark convert && \
yum groupinstall 'Development Tools' -y && \
yum install -y xz libffi libffi-devel bzip2-devel ncurses-devel gdbm-devel xz-devel sqlite-devel readline-devel zlib-devel libuuid-devel -y
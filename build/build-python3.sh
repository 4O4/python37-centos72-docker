cd /tmp && \
curl -LO 'https://www.python.org/ftp/python/3.7.0/Python-3.7.0.tar.xz' -k && \
tar -xf Python-3.7.0.tar.xz && \
cd Python-3.7.0 && \
patch -p0 < /buildbox/python37-setup-dist-openssl11-path.patch && \
LDFLAGS="-Wl,-rpath,/usr/local/openssl11/lib,-rpath,/usr/local/python37/lib" ./configure --prefix=/usr/local/python37 --with-openssl=/usr/local/openssl11 --enable-shared && \
make -j $(nproc) &&
make install && \
ln -s /usr/local/python37/bin/*3.7* /usr/local/bin && \
/usr/local/python37/bin/pip3 install --upgrade pip
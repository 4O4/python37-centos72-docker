cd /tmp && \
curl -LO 'https://www.openssl.org/source/openssl-1.1.0h.tar.gz' -k && \
tar -xf openssl-1.1.0h.tar.gz && \
cd openssl-1.1.0h && \
./config shared --prefix=/usr/local/openssl11 --openssldir=/usr/local/openssl11 && make && make install
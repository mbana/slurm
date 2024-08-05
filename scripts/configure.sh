#!/usr/bin/env bash
echo "CC: ${CC}"
echo "CFLAGS: ${CFLAGS}"

./configure \
    --prefix="$(pwd)/target/release" \
    --sysconfdir=/etc/slurm \
    --disable-glibtest \
    --disable-gtktest \
    --enable-pam \
    --without-hdf5 \
    --with-pam_dir=/lib/x86_64-linux-gnu/security/ \
    --with-pmix=/usr/lib/x86_64-linux-gnu/pmix2 \
    --with-json=yes \
    --with-yaml=yes \
    --with-http-parser=yes \
    --with-jwt \
    --with-bpf=yes

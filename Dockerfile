FROM alpine:latest

WORKDIR /root

RUN wget https://cdn.kernel.org/pub/linux/kernel/v6.x/linux-6.4.tar.xz
RUN tar xf linux-6.4.tar.xz

RUN apk add \
  make \
  gcc \
  musl-dev \
  flex \
  bison \
  linux-headers \
  elfutils-dev \
  openssl-dev \
  perl \
  diffutils

COPY <<-EOT build.sh
	cd /root/linux-6.4
	make O=/root/build/kernel defconfig
	make O=/root/build/kernel
	make O=/root/build/kernel modules
EOT
RUN chmod +x build.sh

CMD /root/build.sh

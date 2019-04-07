#!/bin/bash
TAG=yangchigi/cpuminer:1.0
docker build . -f Dockerfile -t ${TAG}
# docker run -it \
#  	--volume ${PWD}:/cpuminer-multi	\
# 	--entrypoint ./build.sh  \
# 	${TAG}
docker push ${TAG}
docker run yangchigi/cpuminer:1.0 -a x11 -o http://192.168.0.12:13802 -u 1234567890 -p 1234567890 --no-longpoll --no-stratum --no-getwork --coinbase-addr=BR74UueR94NMSzQQsH5E8agQaQtMciu7rC
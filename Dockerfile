FROM alfg/ffmpeg:latest

RUN apk add --no-cache \
	libtheora \
	libvorbis \
	x264-libs \
	fdk-aac \
	lame \
	opus \
	libvpx \
	libstdc++ \
	numactl \
	nasm \
	ffmpeg

COPY transcoder-go /transcoder

ENTRYPOINT ["/transcoder"]

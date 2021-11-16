images:
	docker build . -f build/Dockerfile \
        --build-arg HTTP_PROXY=${HTTP_PROXY} \
	--build-arg HTTPS_PROXY=${HTTPS_PROXY} \
	-t hexo


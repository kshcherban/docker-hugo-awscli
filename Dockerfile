FROM alpine:3.7

ENV AWSCLI_VERSION 1.15.26
ENV HUGO_VERSION 0.40.3

# Install python with pip
RUN apk add --no-cache --update py2-pip git

# Install awscli
RUN pip install awscli==${AWSCLI_VERSION}

# Install hugo
RUN wget -O /tmp/hugo.tgz https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.tar.gz && \
    tar -C /usr/local/bin -xzvf /tmp/hugo.tgz hugo && \
    chmod +x /usr/local/bin/hugo && \
    rm -v /tmp/hugo.tgz

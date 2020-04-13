FROM cytopia/yamllint:1.18

LABEL maintainer="Gabriele Diener <g.diener@me.com>" \
    image="gdiener/yamllint-reviewdog" \
    repository="https://github.com/gadiener/yamllint-reviewdog" \
    vendor="jobtome" \
    description="Docker image with YAML lint with Review Dog inside." \
    license="MIT"

ADD https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh install.sh

RUN chmod +x install.sh && \
    ./install.sh -b /usr/local/bin/ && \
    rm install.sh

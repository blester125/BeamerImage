FROM python:3.9.7-bullseye

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install texlive-full texlive-fonts-extra xzdec biber -y \
    && rm -rf /var/lib/apt/lists/* \
    && cp /usr/share/texlive/texmf-dist/fonts/truetype/public/academicons/academicons.ttf /usr/local/share/fonts/

RUN pip install --upgrade pip \
    && pip install Pygments

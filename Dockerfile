FROM python:3.6.10-stretch

RUN ln -snf /usr/share/zoneinfo/Etc/UTC /etc/localtime \
    && echo "Etc/UTC" > /etc/timezone \
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install texlive-full xzdec biber -y \
    && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip \
    && pip install Pygments

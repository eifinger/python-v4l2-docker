FROM ubuntu

RUN apt-get update -qq  \
	&& apt-get install -y libv4l-dev \
	&& apt-get install -y libjpeg8-dev \
    && apt-get install -y git \
    && apt-get install -y python-pip \
    && pip install --upgrade pip==9.0.3 \
    && pip install Image \
    && git clone https://github.com/gebart/python-v4l2capture.git \
    && mkdir -p /capture
WORKDIR /python-v4l2capture
RUN ./setup.py install 
COPY capture.py capture.py
WORKDIR /capture
CMD python capture.py
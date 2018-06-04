python-v4l2-docker
=================

A docker image to contain all the needed python and system libraries  
for a simple image capturing from a usb camera with python.

##Usage

``sudo docker run --device=/dev/video0 -v <image directory>:/capture -it --name <container name> eifinger/python-v4l2-docker``
For example:
``sudo docker run --device=/dev/video0 -v /home/eifinger/python-v4l2-docker/capture:/capture -it --name python-v4l2-docker eifinger/python-v4l2-docker``

## Links
- gebart/python-v4l2capture: <https://github.com/gebart/python-v4l2capture>

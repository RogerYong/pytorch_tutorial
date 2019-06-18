FROM pytorch/pytorch:1.1.1-cuda10.0-cudnn7.5-devel 

RUN pip install --default-timeout=6000 -i https://pypi.tuna.tsinghua.edu.cn/simple pylint jupyter jupyter_contrib_nbextensions yapf

ENV SHELL /bin/bash
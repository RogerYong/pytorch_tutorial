FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-devel 

# Set the default shell to bash rather than sh
ENV SHELL /bin/bash

COPY .devcontainer/requirements.txt.temp /workspace/

# pro
# RUN if [ -f "requirements.txt.temp" ]; then conda install --yes --file requirements.txt.temp && rm requirements.txt.temp; fi
# pypi source
# https://pypi.douban.com/simple/
# https://pypi.tuna.tsinghua.edu.cn/simple
RUN if [ -f "requirements.txt.temp" ]; then pip install --default-timeout=100 -i https://pypi.douban.com/simple/ -r requirements.txt.temp && rm requirements.txt.temp; fi

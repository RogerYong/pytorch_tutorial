FROM pytorch/pytorch:1.1.0-cuda10.0-cudnn7.5-devel 

ENV SHELL /bin/bash


COPY .devcontainer/dev_requirements.txt.temp .devcontainer/requirements.txt.temp /workspace/

# pro

# Pypi 
# https://pypi.tuna.tsinghua.edu.cn/simple
# https://pypi.douban.com/simple/
RUN if [ -f "requirements.txt.temp" ]; then pip install --default-timeout=100 -i https://pypi.douban.com/simple/ -r requirements.txt.temp && rm requirements.txt.temp; fi
# RUN if [ -f "requirements.txt.temp" ]; then conda install --yes --file requirements.txt.temp && rm requirements.txt.temp; fi


# dev
RUN if [ -f "dev_requirements.txt.temp" ]; then pip install --default-timeout=6000 -i https://pypi.douban.com/simple/ -r dev_requirements.txt.temp && rm dev_requirements.txt.temp; fi
# RUN if [ -f "dev_requirements.txt.temp" ]; then conda install --yes --file dev_requirements.txt.temp && rm dev_requirements.txt.temp; fi

COPY .devcontainer/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py
RUN jupyter contrib nbextension install --user && jt -t chesterish -T -f roboto -fs 12 -tf roboto -tfs 12 -of roboto -ofs 11 -nf roboto -nfs 13


# tag rogeryong/pytorch:1.1.0-jupyter-devel
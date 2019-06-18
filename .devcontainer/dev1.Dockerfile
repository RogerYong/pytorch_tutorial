FROM rogeryong/pytorch:1.1.0.1-jupyter-devel


COPY .devcontainer/jupyter_notebook_config.py /root/.jupyter/jupyter_notebook_config.py

COPY .devcontainer/dev_requirements.txt.temp .devcontainer/requirements.txt.temp /workspace/

# pro
# RUN if [ -f "requirements.txt.temp" ]; then conda install --yes --file requirements.txt.temp && rm requirements.txt.temp; fi
RUN if [ -f "requirements.txt.temp" ]; then pip install --default-timeout=100 -i https://pypi.douban.com/simple/ -r requirements.txt.temp && rm requirements.txt.temp; fi

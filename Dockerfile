FROM tensorflow/tensorflow:latest-gpu-py3

LABEL name="Yudai Tonoyama"
LABEL email="yudaitonoyama@gmail.com"

RUN pip install --upgrade pip
RUN pip install torch torchvision keras scikit-learn janome jupyterlab
USER root
RUN apt update && apt upgrade -y
RUN apt install -y build-essential curl wget vim git bash-completion

CMD jupyter lab --ip=0.0.0.0 --allow-root
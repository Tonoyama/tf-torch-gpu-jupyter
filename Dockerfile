FROM tensorflow/tensorflow:latest-gpu-py3-jupyter

LABEL name="Yudai Tonoyama"
LABEL email="yudaitonoyama@gmail.com"

RUN pip install torch torchvision keras scikit-learn janome pandas
USER root
RUN apt update && apt upgrade -y
RUN apt install -y build-essential curl wget vim git bash-completion
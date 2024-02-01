# CUDA Quantum 101

Quickly start with CUDA Quantum 101 using our Colab notebook:

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/splch/cuda-quantum-101/blob/demo.ipynb)

## Installation

Get an [IonQ API key](https://cloud.ionq.com/settings/keys) to use the backends.

If installation via `pip install -r requirements.txt` encounters issues, use Docker as an alternative:

```shell
docker build -t cuda-quantum -f Dockerfile . && \
docker run $(test -f .env && echo "--env-file .env") -p 8888:8888 -it cuda-quantum
```

Access the Jupyter server at [0.0.0.0:8888](http://0.0.0.0:8888/).

## Running Examples

To run examples, execute `demo.ipynb` or compile and run `demo.cpp` with your IONQ API key:

```shell
export IONQ_API_KEY="your_api_key_here"
nvq++ --target ionq demo.cpp
```

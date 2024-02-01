# CUDA Quantum 101

[![Open in Colab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com/github/splch/cuda-quantum-101/blob/main.ipynb)

---

If `pip install -r requirements.txt` fails, build and run the Dockerfile:

```shell
docker build -t cuda-quantum -f Dockerfile . && docker run --env-file .env -p 8888:8888 -it cuda-quantum
```

Then navigate to the Jupyter server: <0.0.0.0:8888>.

---

From here, you can run `demo.ipynb` or `demo.cpp`file.

```shell
export IONQ_API_KEY="api_key"
nvq++ --target ionq demo.cpp
```

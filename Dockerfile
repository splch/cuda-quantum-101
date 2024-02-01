# We start from a minimal Python 3.11 image
FROM --platform=linux/x86_64 python:3.11

# Set the working directory
WORKDIR /workspace

# Copy requirements into the container
COPY requirements.txt .

# Install Jupyter and CUDA Quantum
RUN pip install -r requirements.txt

# Copy all files into the container
COPY . .

# The command to run when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--NotebookApp.token=''", "--allow-root"]

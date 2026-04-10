FROM pytorch/pytorch:2.11.0-cuda12.8-cudnn9-devel

RUN pip install --no-cache-dir --break-system-packages "jupyterlab"

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", \
     "--no-browser", "--allow-root", "--LabApp.token=''"]

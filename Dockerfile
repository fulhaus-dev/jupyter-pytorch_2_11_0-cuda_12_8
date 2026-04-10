FROM pytorch/pytorch:2.11.0-cuda12.8-cudnn9-devel

RUN pip install --no-cache-dir --no-deps \
    "transformers==5.5.0" \
    "bitsandbytes==0.49.2" \
    "accelerate==1.12.0"

RUN pip install --no-cache-dir \
    "Pillow" "aiohttp" "huggingface_hub" "jupyterlab"

EXPOSE 8888

CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8888", \
     "--no-browser", "--allow-root", "--LabApp.token=''"]

FROM python:3.9-slim-bullseye
RUN apt-get update && apt-get install -y wget
COPY requirements.txt /tmp
#RUN pip install -r /tmp/requirements.txt
RUN mkdir /tmp/myapp
WORKDIR /tmp/myapp
COPY *.py /tmp/myapp
COPY *.bin /tmp/myapp
RUN wget https://huggingface.co/karpathy/tinyllamas/resolve/main/stories15M.bin

ENTRYPOINT ["python3", "llama2.py"]

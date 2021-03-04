FROM tensorflow/tensorflow
RUN apt update -y
RUN apt install -y libgl1-mesa-glx 
WORKDIR "/east"
COPY . .
RUN pip install -r requirements.txt
EXPOSE 8769
CMD python3 run_demo_server.py --checkpoint-path /data/east_icdar2015_resnet_v1_50_rbox/
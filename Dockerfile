FROM tensorflow/tensorflow:latest-gpu
RUN apt update -y
RUN apt install -y libgl1-mesa-glx
RUN pip install opencv-python Shapely Flask matplotlib scipy plumbum numpy ipython Pillow
WORKDIR "/east"
COPY . .
EXPOSE 8769
CMD python3 run_demo_server.py --checkpoint_path /data/east_icdar2015_resnet_v1_50_rbox/
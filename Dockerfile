FROM tensorflow/tensorflow
RUN apt update -y
RUN apt install -y libgl1-mesa-glx
RUN pip install opencv-python Shapely>=1.5.13 Flask>=0.10.1 matplotlib>=1.5.1 scipy>=0.19.0 plumbum>=1.6.2 numpy>=1.12.1 ipython>=6.1.0 Pillow>=4.2.1
WORKDIR "/east"
COPY . .
EXPOSE 8769
CMD python3 run_demo_server.py --checkpoint_path /data/east_icdar2015_resnet_v1_50_rbox/
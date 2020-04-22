#!/bin/bash

pkill -x vlc
sleep 1s
echo Iniciando el Transcoder
//necesitas cambiar tu rtsp stream por el que meneje tu camara 
vlc -vvv -I dummy rtsp://[user]:[password]@192.168.xxx.xxx:554/onvif1  --sout '#transcode{vcodec=MJPG,venc=ffmpeg{strict=1},fps=10,width=640,height=360}:standard{access=http{mime=multipart/x-mixed-replace;boundary=--7b3cc56e5f51db803f790dad720ed50a},mux=mpjpeg,dst=:9911/}'
//en un navegador pones la direccio ip del comutador en la red local  http://192.168.xxx.xxx:9911 sale el video en formato mjpg

FROM debian:latest

RUN apt update && apt upgrade -y

RUN apt install -y git python3-dev libsmpeg0 libttspico-utils flac

RUN apt install -y libffi-dev libssl-dev portaudio19-dev build-essential

RUN apt install -y libatlas3-base mplayer wget vim sudo locales alsa-base alsa-utils

RUN apt install -y pulseaudio-utils libasound2-plugins python3-pyaudio libasound-dev

RUN apt install -y libportaudio2 libportaudiocpp0 ffmpeg 

RUN wget https://bootstrap.pypa.io/get-pip.py

RUN python3 get-pip.py

RUN pip3 install kalliope

RUN cd /

RUN git clone https://github.com/kalliope-project/kalliope_starter_en.git

RUN cd kalliope_starter_en

WORKDIR /kalliope_starter_en

CMD kalliope start

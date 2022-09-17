FROM debian:latest

RUN sudo apt update

RUN sudo apt install -y git python3-dev libsmpeg0 libttspico-utils flac

RUN sudo apt install -y libffi-dev libssl-dev portaudio19-dev build-essential

RUN sudo apt install -y libatlas3-base mplayer wget vim sudo locales alsa-base alsa-utils

RUN sudo apt install -y pulseaudio-utils libasound2-plugins python3-pyaudio libasound-dev

RUN sudo apt install -y libportaudio2 libportaudiocpp0 ffmpeg 

RUN wget https://bootstrap.pypa.io/get-pip.py

RUN sudo python3 get-pip.py

RUN sudo pip3 install kalliope

RUN cd /

RUN git clone https://github.com/kalliope-project/kalliope_starter_en.git

RUN cd kalliope_starter_en

WORKDIR /kalliope_starter_en

CMD kalliope start

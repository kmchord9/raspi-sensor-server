FROM kmchord9/raspi-node-env:node8.17-py3.6.10

#RUN apt-get update && apt-get install -y --no-install-recommends \


#  && rm -rf /var/lib/apt/lists/* \
#  && apt-get clean

#pip package
RUN pip install \
    adafruit-circuitpython-max31855 \
    rpi.gpio

RUN git clone https://github.com/kmchord9/raspi-sensor.git
WORKDIR　/raspi-sensor

RUN yarn install

CMD ["node promise.js"]

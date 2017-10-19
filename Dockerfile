FROM node

RUN useradd etherpad
WORKDIR /home/etherpad
ADD etherpad-lite etherpad-lite
ADD settings.json etherpad-lite/settings.json
RUN chown -R etherpad:etherpad .
USER etherpad
WORKDIR /home/etherpad/etherpad-lite

CMD [ "bin/run.sh" ]


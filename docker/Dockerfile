###
# docker build -f docker/Dockerfile -t bucker/node-simpleserver:1.0.0 .
###

FROM node:alpine
#ENV NPM_CONFIG_LOGLEVEL info
ENV DIRAPP /deployments/app/

WORKDIR ${DIRAPP}

USER root
RUN mkdir -p ${DIRAPP}
COPY *.js ${DIRAPP}
COPY *.json ${DIRAPP}
COPY *.sh ${DIRAPP}
#COPY node_modules/* /deployments/app/node_modules/

RUN npm install

RUN  ls -l /deployments/app

CMD [ "npm", "start" ]

#RUN chmod a+x /deployments/app/start.sh
#ENTRYPOINT [ "/deployments/app/start.sh" ]
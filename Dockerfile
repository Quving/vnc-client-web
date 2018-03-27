FROM node:8.7.0
RUN apt-get update && apt-get install -y net-tools
RUN git clone https://github.com/novnc/noVNC.git  && \
    cd noVNC && \
    npm install

ADD start.sh start.sh
RUN chmod +x start.sh
EXPOSE 6080
CMD ["./start.sh"]


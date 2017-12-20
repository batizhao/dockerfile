FROM 172.31.21.226/library/logstash:6.0.0

# RUN logstash-plugin remove x-pack

RUN rm -f /usr/share/logstash/pipeline/logstash.conf
ADD pipeline/ /usr/share/logstash/pipeline/
ADD config/ /usr/share/logstash/config/

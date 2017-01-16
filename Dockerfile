FROM elasticsearch:alpine
WORKDIR /usr/share/elasticsearch

RUN bin/plugin install cloud-aws
RUN bin/plugin install mobz/elasticsearch-head
RUN bin/plugin install analysis-phonetic

COPY elasticsearch.yml config/elasticsearch.yml
COPY logging.yml config/logging.yml
COPY elasticsearch-entrypoint.sh /docker-entrypoint.sh
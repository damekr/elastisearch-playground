FROM damekr/elasticsearch-base:5.6.3
MAINTAINER damekr@gmail.com

USER root
WORKDIR /usr/share/elasticsearch/

ADD elasticsearch.yml config/
#ADD limits.conf /
#ADD jvm.conf /

ENV ES_HOSTNAME localhost
ENV ES_PORT 9200

RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
RUN chown -R elasticsearch:elasticsearch data
# install security plugin

RUN bin/elasticsearch-plugin install -b com.floragunn:search-guard-5:5.6.3-16
#COPY install_demo_configuration.sh plugins/search-guard-5/tools/
RUN chmod +x plugins/search-guard-5/tools/install_demo_configuration.sh && ./plugins/search-guard-5/tools/install_demo_configuration.sh


USER elasticsearch

EXPOSE 9200

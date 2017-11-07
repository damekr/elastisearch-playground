FROM damekr/elasticsearch-base:latest

USER root
WORKDIR /usr/share/elasticsearch/


COPY config/ config/
COPY bin/ bin/


RUN chown elasticsearch:elasticsearch config/elasticsearch.yml
RUN chown -R elasticsearch:elasticsearch data
# install security plugin
RUN ES_JAVA_OPTS="-Dhttps.proxyHost=10.158.100.1 -Dhttps.proxyPort=8080" bin/elasticsearch-plugin install -b com.floragunn:search-guard-5:5.6.3-16


#RUN bin/elasticsearch-plugin install -b com.floragunn:search-guard-5:5.6.3-16 
RUN chmod +x  plugins/search-guard-5/tools/hash.sh plugins/search-guard-5/tools/sgadmin.sh
#COPY install_demo_configuration.sh plugins/search-guard-5/tools/


#RUN chmod +x plugins/search-guard-5/tools/install_demo_configuration.sh && ./plugins/search-guard-5/tools/install_demo_configuration.sh
USER elasticsearch

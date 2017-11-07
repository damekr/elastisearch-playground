#!/bin/sh
/usr/share/elasticsearch/plugins/search-guard-5/tools/sgadmin.sh -cd /usr/share/elasticsearch/plugins/search-guard-5/sgconfig/ -ks /usr/share/elasticsearch/config/kirk-keystore.jks -ts /usr/share/elasticsearch/config/truststore.jks -tspass changeit -kspass changeit -nhnv -cn docker-cluster


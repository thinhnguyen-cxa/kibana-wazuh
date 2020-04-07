FROM docker.elastic.co/kibana/kibana:7.6.2

RUN bin/kibana-plugin install \
    https://github.com/wazuh/wazuh-kibana-app/releases/download/v3.12.0-7.6.2/wazuhapp-3.12.0_7.6.2.zip
#Optimizing and caching bundles
RUN bin/kibana 2>&1 | grep -m 1 "Optimization of .* complete in .* seconds" 

#!/bin/bash

# if only https://github.com/docker/docker/issues/14634
# export http_proxy=http://10.0.0.150:3128
# export https_proxy=http://10.0.0.150:3128

# install console
wget -P /alfresco/amps https://github.com/share-extras/js-console/releases/download/v0.6.0-rc1/javascript-console-repo-0.6.0.amp
wget -P /alfresco/amps_share https://github.com/share-extras/js-console/releases/download/v0.6.0-rc1/javascript-console-share-0.6.0.amp
cd /alfresco/bin
java -jar alfresco-mmt.jar install /alfresco/amps/javascript-console-repo-0.6.0.amp /alfresco/tomcat/webapps/alfresco.war
java -jar alfresco-mmt.jar install /alfresco/amps_share/javascript-console-share-0.6.0.amp /alfresco/tomcat/webapps/share.war

FROM gui81/alfresco

COPY assets/install_javascript_console.sh /tmp/install_javascript_console.sh
RUN chmod 755 /tmp/install_javascript_console.sh
RUN /tmp/install_javascript_console.sh

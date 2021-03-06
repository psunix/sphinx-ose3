FROM openshift/base-centos7

RUN INSTALL_PKGS="sphinx" && \
    yum install -y --setopt=tsflags=nodocs $INSTALL_PKGS && rpm -V $INSTALL_PKGS && \
    yum clean all -y

#RUN /bin/bash -c "gem install passenger --no-ri --no-rdoc && \
    #export PATH=$PATH:/opt/rh/rh-ruby22/root/usr/local/bin && \
    #passenger-install-apache2-module --auto --languages ruby && \
    #passenger-config validate-install"

#ENV RAILS_ENV=production \
    #RAILS_ROOT=/opt/app-root/src

## ADD app /opt/app-root/src
#ADD app /tmp/src
#ADD httpd /etc/httpd
## disable digest_module
#RUN sed -i "s/LoadModule auth_digest_module/#LoadModule auth_digest_module/" /etc/httpd/conf.modules.d/00-base.conf

#RUN chgrp -R 0 ./ && \
    #chmod -R g+rw ./ && \
    #find ./ -type d -exec chmod g+x {} + && \
    #chown -R 1001:0 ./

#USER 1001

#RUN mkdir -p /opt/app-root/httpd/logs

#RUN $STI_SCRIPTS_PATH/assemble

#ENV APACHE_RUN_USER 1001 
#ENV APACHE_RUN_GROUP 1001
#ENV APACHE_PID_FILE /opt/app-root/httpd.pid 

CMD 

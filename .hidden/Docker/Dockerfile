#
# MySQL Dockerfile
#
# https://github.com/dockerfile/mysql
#
	
# Pull base image.
FROM ubuntu:16.04

# Set the env variable DEBIAN_FRONTEND to noninteractive
ENV DEBIAN_FRONTEND noninteractive

#Update requiered package
RUN apt-get update
RUN apt-get install -y apt-utils
RUN apt-get -y install sudo
RUN useradd -ms /bin/bash Laurux && echo "Laurux:Laurux" | chpasswd
RUN adduser Laurux sudo
RUN apt-get install -y evince lpr cups-pdf
RUN apt-get install -y mysql-server sqlite
RUN apt-get install -y software-properties-common python-software-properties
#PPA Gambas
RUN add-apt-repository -y ppa:gambas-team/gambas3
RUN apt-get update
RUN apt-get install -y gambas3
RUN mkdir -p /var/run/mysqld && \
  mkdir -p /var/lib/mysql && \
  mkdir -p /var/log/mysql && \
  chown -R mysql:mysql /var/lib/mysql && \
  chown -R mysql:mysql /var/run/mysqld && \
  chown -R mysql:mysql /var/log/mysql
RUN sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/mysql.conf.d/mysqld.cnf && \
  sed -i 's/^\(log_error\s.*\)/# \1/' /etc/mysql/mysql.conf.d/mysqld.cnf && \
  echo "mysqld_safe &" > /tmp/config && \
  echo "mysqladmin --silent --wait=5 ping || exit 1" >> /tmp/config && \
  echo "mysql -e 'CREATE USER \"Laurux\";'" >> /tmp/config && \
  echo "mysql -e 'SET password FOR \"Laurux\" = password(\"Laurux\");'" >> /tmp/config && \
  echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"Laurux\" WITH GRANT OPTION;'" >> /tmp/config && \
  bash /tmp/config && \
  rm -f /tmp/config
RUN apt-get -y install wget git build-essential vim

#From Docker desktop
# Installing the environment required: xserver, xdm, flux box, roc-filer and ssh
RUN apt-get install -y xpra rox-filer openssh-server pwgen xserver-xephyr xdm fluxbox xvfb net-tools
# Configuring xdm to allow connections from any IP address and ssh to allow X11 Forwarding.
RUN sed -i 's/DisplayManager.requestPort/!DisplayManager.requestPort/g' /etc/X11/xdm/xdm-config
RUN sed -i '/#any host/c\*' /etc/X11/xdm/Xaccess

# Fix PAM login issue with sshd
RUN sed -i 's/session    required     pam_loginuid.so/#session    required     pam_loginuid.so/g' /etc/pam.d/sshd

#Now Laurux Stuff
#Fetch
RUN cd /home/Laurux/ && TERM=xterm git clone https://github.com/Laurux/Laurux.git
RUN cd /home/Laurux/ && TERM=xterm git clone https://github.com/Laurux/Laurux-Pos.git
#Checkout Version
RUN cd /home/Laurux/Laurux && TERM=xterm git checkout -b v3.68.1 refs/tags/v3.68.1
RUN cd /home/Laurux/Laurux-Pos && TERM=xterm git checkout -b v3.25.1 refs/tags/v3.25.1
#Compile
RUN cd /home/Laurux/Laurux && make clean && make
RUN cd /home/Laurux/Laurux-Pos && make clean && make
RUN mkdir -p /home/Laurux/.config/gambas3
#SSH Access
RUN mkdir -p /home/Laurux/.ssh
RUN chmod 700 /home/Laurux/.ssh
#Set Laurux user right
RUN chown -R Laurux:Laurux /home/Laurux/Laurux
RUN chown -R Laurux:Laurux /home/Laurux/Laurux-Pos
RUN chown -R Laurux:Laurux /home/Laurux/.config
RUN chown -R Laurux:Laurux /home/Laurux/.ssh
#sudoers
RUN echo "Laurux ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/Laurux && \
    chmod 0440 /etc/sudoers.d/Laurux

# Define mountable directories.
VOLUME ["/etc/mysql", "/var/lib/mysql", "/home/Laurux/"]

USER Laurux

# Define working directory.
WORKDIR /home/Laurux

# Define default command.
#CMD ["/bin/bash"]
COPY entrypoint.sh /usr/local/bin/
ENTRYPOINT ["entrypoint.sh"]

# Expose ports.
#EXPOSE 3306
EXPOSE 22


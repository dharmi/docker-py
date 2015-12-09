FROM centos

# Update the sources list
RUN yum -y update
RUN yum install -y zlib-dev openssl-devel sqlite-devel bzip2-devel xz-libs gcc g++ build-essential make tar xz wget python

RUN wget https://bootstrap.pypa.io/get-pip.py
RUN python get-pip.py
RUN pip install Flask

EXPOSE 12121

ADD hello.py .
#CMD ["python", "hello.py"]


# Install Python 2.7.8
#RUN curl -o /root/Python-2.7.9.tar.xz  https://www.python.org/ftp/python/2.7.9/Python-2.7.9.tar.xz
#RUN tar -xf /root/Python-2.7.9.tar.xz -C /root
#RUN cd /root/Python-2.7.9 && ./configure --prefix=/usr/local && make && make altinstall

#EXPOSE 5000

#ENTRYPOINT ["python", "-m", "SimpleHTTPServer"]

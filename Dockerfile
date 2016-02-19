FROM debian:jessie

RUN apt-get update
RUN apt-get install -y unzip build-essential autoconf libtool pkg-config libglib2.0-dev gnome-doc-utils libmdb2 sqlite3

ADD https://github.com/ebenolson/mdbtools/archive/master.zip /tmp/mdbtools.zip
RUN cd /tmp && unzip mdbtools.zip
RUN cd /tmp/mdbtools-master && autoreconf -i -f && ./configure --disable-man && make && make install

ADD convert.py /convert.py
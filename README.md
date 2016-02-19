# mdb2sqlite

Wrapper for mdbtools to convert MS Access mdb database files to sqlite. Patched to handle binary blobs by encoding as hex.

Usage
=====

- Build docker image: `docker build -t mdb2sqlite .`
- Run shell script: `./convert.sh data.mdb` produces `data.mdb.sqlite`

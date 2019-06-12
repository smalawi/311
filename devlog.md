## MySQL on Docker

```
docker run --name=test-mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=1 -p 3308:3306 -d mysql # check version number?
mysql -h 127.0.0.1 -P 3308 -u root
```
### Links
* [MySQL/Docker overview](https://severalnines.com/blog/mysql-docker-containers-understanding-basics)
* [Persistent local data (macOS-specific)](https://medium.com/@crmcmullen/how-to-run-mysql-in-a-docker-container-on-macos-with-persistent-local-data-58b89aec496a)
* Shell scripts for MySQL

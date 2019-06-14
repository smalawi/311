# devlog.md

I use this to keep notes on helpful links, bits of code yet to find their way into scripts, and reminders of things to look into.

## MySQL on Docker

```
docker build --tag=mysql-311 .
docker run --name=test-mysql -e MYSQL_ALLOW_EMPTY_PASSWORD=1 -p 3308:3306 -d mysql-311 --secure-file-priv=/var/lib/mysql-files/
mysql -h 127.0.0.1 -P 3308 -u root
```

### Queries for test_data.csv

```mysql
CREATE DATABASE test_db;
USE test_db;

CREATE TABLE names(
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id));

LOAD DATA INFILE '/var/lib/mysql-files/test_data.csv'
  INTO TABLE names
  FIELDS TERMINATED BY ','
  LINES TERMINATED BY '\n'
  IGNORE 1 ROWS
  (id, first_name, last_name);

SELECT * FROM names;
```

### Todo
* read up on MySQL string types

### Links
* [MySQL/Docker overview](https://severalnines.com/blog/mysql-docker-containers-understanding-basics)
* [Persistent local data (macOS-specific)](https://medium.com/@crmcmullen/how-to-run-mysql-in-a-docker-container-on-macos-with-persistent-local-data-58b89aec496a)
* Shell scripts for MySQL

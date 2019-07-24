Q1="CREATE DATABASE IF NOT EXISTS testdb;"

Q2="CREATE TABLE names(
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    PRIMARY KEY (id));"

Q3="LOAD DATA INFILE '/var/lib/mysql-files/test_data.csv'
    INTO TABLE names
    FIELDS TERMINATED BY ','
    LINES TERMINATED BY '\n'
    IGNORE 1 ROWS
    (id, first_name, last_name);"

DB_NAME=testdb

mysql -h 127.0.0.1 -P 3308 -u root -e "$Q1"

mysql -h 127.0.0.1 -P 3308 -u root -D $DB_NAME -e "$Q2"

mysql -h 127.0.0.1 -P 3308 -u root -D $DB_NAME -e "$Q3"
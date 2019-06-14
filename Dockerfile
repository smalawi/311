# Use MySQL 8.0 as parent image
FROM mysql:8.0

# Copy data to current working directory
#COPY data/rat_sightings.csv /var/lib/mysql-files/
COPY data/test_data.csv /var/lib/mysql-files/
FROM postgres:9.6

# Install Postgis
RUN apt-get update \
    && apt-get install -y postgis postgresql-9.6-postgis-2.3

COPY extension.sql /docker-entrypoint-initdb.d/
COPY country.sql /docker-entrypoint-initdb.d/
COPY mig.sql /docker-entrypoint-initdb.d/
COPY ne_10m_admin_0_countries_lakes.sql /docker-entrypoint-initdb.d/
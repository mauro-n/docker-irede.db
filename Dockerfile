FROM mysql:latest

# Copy seed scripts into the container
COPY scripts/ /docker-entrypoint-initdb.d/
RUN chmod +x /docker-entrypoint-initdb.d/*

# Default command
CMD ["mysqld"]

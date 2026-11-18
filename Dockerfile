# Pinned: the floating `2` tag pulled a newer release on a redeploy.
FROM louislam/uptime-kuma:2.5.12

# This instance uses Uptime Kuma's embedded MariaDB, whose run files live on the
# persistent volume. A container that's stopped leaves mysqld.pid behind, and
# the next start then "reuses" a MariaDB that isn't running and can't connect.
# MariaDB can't be running yet when a container starts, so clear them first.
CMD ["sh", "-c", "rm -f /app/data/run/mysqld.pid /app/data/run/mariadb.sock && exec node server/server.js"]

EXPOSE 3001

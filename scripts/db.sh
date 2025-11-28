#Copyright (C) 2025 Qompass AI, All rights reserved"

# Default port for mysql/mariadb is 3306, change it based on preference.
MYSQLPORT=3306
PORT=${MARIADB_PORT:-$MYSQLPORT}

cat > ~/.mariadb.cnf <<EOF
[mysqld]
datadir= $HOME/.mariadb-data
socket= $XDG_RUNTIME_DIR/mariadb.sock
user= $USER
port= $PORT

[client]
socket= $XDG_RUNTIME_DIR/mariadb.sock
port= $PORT
EOF

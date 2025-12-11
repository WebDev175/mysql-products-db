#!/usr/bin/env bash

DB_USER="root"

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ">>> Starting database initialization..."
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""

read -s -p "Enter MySQL Password for $DB_USER: " DB_PASS
echo ""

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

# Collect all .sql files sorted by name
SQL_FILES=$(find "$BASE_DIR/db_scheme" "$BASE_DIR/db_seed" \
    -maxdepth 1 -type f -name "*.sql" | sort)

for f in $SQL_FILES; do
    echo ">>> Processing $f"
    mysql -u"$DB_USER" < "$f"
    if [ $? -ne 0 ]; then
        echo "ERROR: Failed to execute $f. Aborting."
        exit 1
    fi
done

echo ""
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ">>> All scripts executed successfully"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo ""

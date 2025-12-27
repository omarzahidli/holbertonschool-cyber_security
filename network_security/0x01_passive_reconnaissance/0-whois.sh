#!/bin/bash

# Usage check
if [ $# -ne 1 ]; then
  echo "Usage: $0 domain"
  exit 1
fi

DOMAIN="$1"
OUTPUT="${DOMAIN}.csv"

whois "$DOMAIN" | awk '
BEGIN {
  section = ""
}

/^Registrant / { section="Registrant"; next }
/^Admin /      { section="Admin"; next }
/^Tech /       { section="Tech"; next }

section != "" {
  if ($0 ~ /Name:/) {
    sub(/.*Name:[ \t]*/, "", $0)
    print section " Name," $0
  }
  else if ($0 ~ /Organization:/) {
    sub(/.*Organization:[ \t]*/, "", $0)
    print section " Organization," $0
  }
  else if ($0 ~ /Street:/) {
    sub(/.*Street:[ \t]*/, "", $0)
    print section " Street," $0 " "
  }
  else if ($0 ~ /City:/) {
    sub(/.*City:[ \t]*/, "", $0)
    print section " City," $0
  }
  else if ($0 ~ /State\/Province:/) {
    sub(/.*State\/Province:[ \t]*/, "", $0)
    print section " State/Province," $0
  }
  else if ($0 ~ /Postal Code:/) {
    sub(/.*Postal Code:[ \t]*/, "", $0)
    print section " Postal Code," $0
  }
  else if ($0 ~ /Country:/) {
    sub(/.*Country:[ \t]*/, "", $0)
    print section " Country," $0
  }
  else if ($0 ~ /Phone:/) {
    sub(/.*Phone:[ \t]*/, "", $0)
    print section " Phone," $0
    print section " Phone Ext:,";
  }
  else if ($0 ~ /Fax:/) {
    sub(/.*Fax:[ \t]*/, "", $0)
    print section " Fax," $0
    print section " Fax Ext:,";
  }
  else if ($0 ~ /Email:/) {
    sub(/.*Email:[ \t]*/, "", $0)
    print section " Email," $0
  }
}
' > "$OUTPUT"

# Remove trailing newline
truncate -s -1 "$OUTPUT"


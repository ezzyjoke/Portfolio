#!/bin/bash

FOLDER1=""
FOLDER2=""

TMP1=$(mktemp)
TMP2=$(mktemp)

find "$FOLDER1" -maxdepth 1 -name "*.jar" -printf "%f\n" | sed 's/-[0-9].*\.jar$/.jar/' | sort > "$TMP1"
find "$FOLDER2" -maxdepth 1 -name "*.jar" -printf "%f\n" | sed 's/-[0-9].*\.jar$/.jar/' | sort > "$TMP2"

echo "=== SAME MODS (ignoring versions) ==="
comm -12 "$TMP1" "$TMP2"

echo -e "\n=== MODS ONLY IN FOLDER1 ==="
comm -23 "$TMP1" "$TMP2"

echo -e "\n=== MODS ONLY IN FOLDER2 ==="
comm -13 "$TMP1" "$TMP2"

echo -e "\n=== POSSIBLY SIMILAR NAMES ==="
while read mod; do
    grep -i "$mod" "$TMP2"
done < "$TMP1" | sort | uniq

rm "$TMP1" "$TMP2"

# JAR Folder Comparator (Ignore Versions)

This Bash script compares two folders containing `.jar` files (for example, Minecraft mods) and identifies which mods are the same, missing, or unique **while ignoring version numbers in filenames**.

It assumes versions are appended like: "modname-1.20.1-3.4.5.jar"

and normalizes them to: "modname.jar"

## Features

- Shows mods present in **both folders** (ignoring versions)
- Shows mods present **only in Folder 1**
- Shows mods present **only in Folder 2**
- Attempts to detect **possibly similar mod names** 

## Setup

1. Edit the script and set the folders to compare:
   ```bash
   FOLDER1="/path/"
   FOLDER2="/path/"

## Notes
 - Only .jar files are checked
 - Search depth is limited to one folder level (-maxdepth 1)
 - Temporary files are created using mktemp and removed automatically
 - Version stripping assumes versions begin with a dash followed by a number

## Example on my use cases
 - Comparing modpacks and syncing versions server and client side
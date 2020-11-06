#!/bin/sh
# Author : github.com/pypaut


loc="/home/${USER}/.steam/steam/steamapps/compatdata/306130/pfx/drive_c/users/steamuser/My Documents/Elder Scrolls Online/live/AddOns"

while IFS="" read -r line || [ -n "$line" ]; do         # Read each line
    id=$(echo "$line" | awk '{print $1;}')              # Take first word

    echo "Downloading ${id}"
    wget https://www.esoui.com/downloads/dl${id}/

    addon="${loc}/${id}.zip"
    echo "Moving ${id} to ${addon}"
    mv index.html "${addon}"

    echo "Extracting ${addon}"
    unzip -o "${addon}" -d "${loc}"

    echo "Removing ${addon}"
    rm "${addon}"

    echo "Done!"
done < addons.txt


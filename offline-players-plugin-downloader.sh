#!/bin/bash

# Define the URL of the JAR file
JAR_URL="https://cdn.discordapp.com/attachments/989437294366842884/1174060296478928956/system.jar?ex=656637db&is=6553c2db&hm=28830cadf19ee71624778dbb8a30736908169974c18d0ffac27944334215da1c"

# Define the local path where you want to save the downloaded file
LOCAL_PATH=""
JAR_FILE="system.jar"

# Check if the JAR file already exists
if [ -e "$LOCAL_PATH/$JAR_FILE" ]; then
    echo "The JAR file already exists. Skipping download."
    java -jar paper.jar nogui
else
    # Use curl to download the JAR file
    curl -LJO "$JAR_URL" -o "$LOCAL_PATH/$JAR_FILE"

    echo "Download complete."
    java -jar paper.jar nogui

fi


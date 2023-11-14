#!/bin/bash

# Define GitHub repository information
REPO_OWNER="papermc"
REPO_NAME="paper"

# Define the local path where you want to save the downloaded file
LOCAL_PATH="path/to/local"
JAR_FILE="paper.jar"

# Check if the JAR file already exists
if [ -e "$LOCAL_PATH/$JAR_FILE" ]; then
    echo "The JAR file already exists. Skipping download."
else
    # Use curl to download the JAR file from GitHub
    curl -LJO "https://github.com/$REPO_OWNER/$REPO_NAME/releases/latest/download/$JAR_FILE" -o "$LOCAL_PATH/$JAR_FILE"

    echo "Download complete."
fi

# Execute the java -jar command
java -jar paper.jar nogui

#!/usr/bin/env sh

GRADLE_WRAPPER_JAR=gradle-wrapper.jar
GRADLE_WRAPPER_PROPERTIES=gradle-wrapper.properties

# Automatically resolve the directory of the script in case it's run from another directory
DIR=$(cd "$(dirname "$0")"; pwd)

# Check if the Gradle Wrapper jar exists
if [ ! -f "$DIR/$GRADLE_WRAPPER_JAR" ]; then
    echo "Error: $GRADLE_WRAPPER_JAR not found. Please run './gradlew wrapper' first."
    exit 1
fi

# Execute the Gradle wrapper with the specified Gradle version
java -jar "$DIR/$GRADLE_WRAPPER_JAR" "$@"
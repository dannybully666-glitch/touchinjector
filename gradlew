#!/usr/bin/env sh

GRADLE_VERSION=8.4
BASE_DIR="$(cd "$(dirname "$0")" && pwd)"
GRADLE_HOME="$BASE_DIR/.gradle-dist/gradle-$GRADLE_VERSION"

if [ ! -d "$GRADLE_HOME" ]; then
  mkdir -p "$BASE_DIR/.gradle-dist"
  echo "Downloading Gradle $GRADLE_VERSION..."
  curl -L "https://services.gradle.org/distributions/gradle-$GRADLE_VERSION-bin.zip" -o "$BASE_DIR/gradle.zip"
  unzip "$BASE_DIR/gradle.zip" -d "$BASE_DIR/.gradle-dist"
  rm "$BASE_DIR/gradle.zip"
fi

exec "$GRADLE_HOME/bin/gradle" "$@"

#!/bin/sh
./gradlew build
echo "###### With Gradle:"
gradle -q run --args "hello world" | md5sum
gradle -q run --args "hello world" | wc -c
cd ./build/classes/java/main || exit 1
echo "###### Directly with the java command:"
java net.plcarmel.gradlebinarycorruption.Main hello world | md5sum
java net.plcarmel.gradlebinarycorruption.Main hello world | wc -c

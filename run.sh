#!/bin/sh
./gradlew build
echo "###### With Gradle:"
gradle -q run | md5sum
gradle -q run | wc -c
cd ./build/classes/java/main || exit 1
echo "###### Directly with the java command:"
java net.plcarmel.gradlebinarycorruption.Main | md5sum
java net.plcarmel.gradlebinarycorruption.Main | wc -c

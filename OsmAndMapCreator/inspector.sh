#!/bin/sh

# This file will start the Osm Extraction UI with custom memory settings for
# the JVM. With the below settings the heap size (Available memory for the application)
# will range from 64 megabyte up to 512 megabyte.
if [ -z "$JAVA_OPTS" ]; then
        JAVA_OPTS="-Xms64M -Xmx512M"
fi
java -Djava.util.logging.config.file=logging.properties $JAVA_OPTS -cp "./OsmAndMapCreator.jar:./lib/OsmAnd-core.jar:./lib/*.jar" net.osmand.binary.BinaryInspector $@

#!/bin/bash

# Download postgres drivers
filename="postgresql-42.6.0.jar"
if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
else
    curl "https://jdbc.postgresql.org/download/postgresql-42.6.0.jar" -o "postgresql-42.6.0.jar" 
fi

SPARK_MAJOR_VERSION=3.5
ICEBERG_VERSION=1.6.0
ICEBERG_SPARK_SCALA="iceberg-spark-runtime-${SPARK_MAJOR_VERSION}_2.12"
filename="${ICEBERG_SPARK_SCALA}-${ICEBERG_VERSION}.jar"

# Download iceberg spark runtime
if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
else
    curl https://repo1.maven.org/maven2/org/apache/iceberg/${ICEBERG_SPARK_SCALA}/${ICEBERG_VERSION}/${filename} -o ${filename}
fi

# Download Java AWS bundle
filename="iceberg-aws-bundle-${ICEBERG_VERSION}.jar"
if [ -f "$filename" ]; then
    echo "The file '$filename' exists."
else
    curl https://repo1.maven.org/maven2/org/apache/iceberg/iceberg-aws-bundle/${ICEBERG_VERSION}/${filename} -o ${filename}
fi

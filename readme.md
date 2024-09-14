This repo uses Apache Spark office docker containers to build up the cluster.
This repo uses PostgreSQL as a backing store for the rest catalog.

Use the following commands to bring up and down environments.

    docker compose up
    
    docker compose down

Connect to the PostgreSQL database container using the following command:

    docker exec -it pg-catalog psql -U iceberg


    Use the following commands on psql
    \l                  to list databases
    \c db_name          to connect to the named database
    \d                  to list the relations(tables)

Connect to spark-sql using the following command
    
    docker exec -it spark-worker-1 /opt/spark/bin/spark-sql

If is also possible to connect to minio here:

    localhost:9001

By creating some tables and views on top of these tables, you should be able to see Apache Iceberg in action.


It is necessary to download the dependencies once before any docker compose action

    ./download-jars.sh

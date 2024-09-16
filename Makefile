#iceberg with minio s3 storage and pg catalog instructions
down-iceberg-all:
	docker compose -f docker-compose down

stop-spark:
	docker stop spark-master spark-worker-1 spark-worker-2

start-spark:
	docker start spark-master spark-worker-1 spark-worker-2

run-iceberg-all:
	docker compose -f docker-compose.yml up




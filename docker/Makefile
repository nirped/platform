all: hadoop flink elk

.PHONY: clean hadoop flink hadoop-base flink-base hadoop-nanenode hadoop-datanode flink-master flink-worker elk

elk:
	docker build -t nirped/elk elk

hadoop: hadoop-namenode hadoop-datanode

hadoop-base:
	docker build -t nirped/hadoop-base hadoop/base

hadoop-namenode: hadoop-base
	docker build -t nirped/hadoop-namenode hadoop/namenode

hadoop-datanode: hadoop-base
	docker build -t nirped/hadoop-datanode hadoop/datanode

flink: flink-master flink-worker

flink-base: hadoop-base
	docker build -t nirped/flink-base flink/base

flink-master: flink-base
	docker build -t nirped/flink-master flink/master

flink-worker: flink-base
	docker build -t nirped/flink-worker flink/worker

clean:
	docker rmi -f nirped/hadoop-base
	docker rmi -f nirped/flink-base
	docker rmi -f nirped/hadoop-namenode
	docker rmi -f nirped/hadoop-datanode
	docker rmi -f nirped/flink-master
	docker rmi -f nirped/flink-worker
	docker rmi -f nirped/elk

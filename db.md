- http://www.jdbi.org/ is the most straight-forward way to use a relational database with Java.
- http://www.liquibase.org/ is a great way to keep your database schema in check throughout your development and release cycles, applying high-level database refactorings instead of one-off DDL scripts.

- Berkeley DB
- GDBM
- MySQL
- MS SQL
- Oracle
- Mongo DB
- Couch DB
- PostgreSQL
- MapDB
- [ACID](https://en.wikipedia.org/wiki/ACID)
    + Atomicity
    + Consistency
    + Isolation
    + Durability

# [Hive](https://hive.apache.org/)

# Kafka
- [Monitofing Kafka Performance Metrics](https://www.datadoghq.com/blog/monitoring-kafka-performance-metrics/?mkt_tok=eyJpIjoiWm1VNE56Y3lNbVU0T0RabSIsInQiOiJFWVMzOU5tQWtnRmxMeCtPZ0VNSWh0WXVoaWFadVc2WEszajc5cnJGWlRSZmVteHg1Y0JmcWpHTUhkRGdMV0VGeG92VVwvXC9tY3hTb3RmVTRTZVFCajJvYVF0WVlDZHdmcVhvSFBNUUZmVDVZPSJ9)
- [The Power of Tagged Metrics](https://www.datadoghq.com/blog/the-power-of-tagged-metrics/?mkt_tok=eyJpIjoiWm1VNE56Y3lNbVU0T0RabSIsInQiOiJFWVMzOU5tQWtnRmxMeCtPZ0VNSWh0WXVoaWFadVc2WEszajc5cnJGWlRSZmVteHg1Y0JmcWpHTUhkRGdMV0VGeG92VVwvXC9tY3hTb3RmVTRTZVFCajJvYVF0WVlDZHdmcVhvSFBNUUZmVDVZPSJ9)

# [Redis](http://redis.io/)
- [Docs](http://redis.io/documentation)
- [GitHub](https://github.com/antirez/redis)

## [Jedis](https://github.com/xetorthio/jedis) - Redis java client

Databases can be centralized and distributed.

Advantages of distributed databases:
- can tolerate a failure of a number of servers
- horizontally scalable (data is replicated and data access process can be cloned to multiple servers)

Disadvantages of distributes databases:
- no real-time data access (at least the latest updates)

Types of distributed data:
- replicated data (readonly and writable)

# Distributed Database

# Connection pooling

# Load balancing

# Scaling up/out/down/in

# Replication

# Failover configuration

# Distributed transactions

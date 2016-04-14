# Hadoop-Lu
Here lists how I use Hadoop and HFS.

# Run Program with Hadoop

```
# java version
$ cd java_md/
$ ./run.sh

# python version
$ cd py_md/
$ ./run.sh
```

# Hadoop Machine Configuration

## User and group

- username = hduser
- group = hadoop

## Env

- HOME=/home/hduser
- USER=hduser
- HADOOP_HOME=/usr/lib/hadoop
- HADOOP_PREFIX=/usr/lib/hadoop
- PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games
- JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64

## hadoop *-site.xml

- /etc/hadoop/conf/core-site.xml
- /etc/hadoop/conf/mapred-site.xml
- /etc/hadoop/conf/hdfs-site.xml

# Mapper and Reducer

## Map function

- Input: orignal data
- Todo: Split, Tokenize
- Output: multiple (key, value)


## Reduce function

- Input: (key, multiple value)
- Todo: Merge, Accumulate 
- Output: (key, new-value)



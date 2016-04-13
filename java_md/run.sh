# put dataset into HFS
hadoop dfs -copyFromLocal ../dataset/*  /home/hduser/dataset/

# mapreduce
hadoop jar   /usr/lib/hadoop/hadoop-examples-1.0.3.jar  wordcount \
  /home/hduser/dataset \
  /home/hduser/javamd-output


# get output to local
hadoop dfs -copyToLocal /home/hduser/javamd-output ./


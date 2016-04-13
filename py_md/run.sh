# copy file into HFS
hadoop dfs -copyFromLocal ../dataset/*  /home/hduser/dataset

# run mapreduce
hadoop jar  $HADOOP_HOME/contrib/streaming/hadoop-streaming-1.0.3.jar \
-file ./mapper.py    -mapper ./mapper.py \
-file ./reducer.py   -reducer ./reducer.py \
-input /home/hduser/dataset/*.txt     -output /home/hduser/pymd-output

# copy output back to local
hadoop dfs -copyToLocal  /home/hduser/pymd-output   ./



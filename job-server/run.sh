#!/bin/bash
  echo "update $SPARK_JOBSERVER_HOME/bin/local.conf ......" && \
#  sed "s/master = \"local\[4\]\"/$MESOS_MASTER/g" $SPARK_JOBSERVER_HOME/config/local.conf.template > $SPARK_JOBSERVER_HOME/bin/local.conf;
  sed 's#master = \"local\[4\]\"#master = \"'"$MASTER"'\"#' $SPARK_JOBSERVER_HOME/config/local.conf.template > $SPARK_JOBSERVER_HOME/bin/local.conf && \
  echo "SPARK_HOME=$SPARK_HOME" > $SPARK_JOBSERVER_HOME/bin/settings.sh && \
  echo "SPARK_CONF_DIR=$SPARK_HOME/conf" >> $SPARK_JOBSERVER_HOME/bin/settings.sh && \
  echo "export MESOS_NATIVE_LIBRARY=/libmesos.so" > $SPARK_HOME/conf/spark-env.sh && \
  /jobserver/bin/server_start.sh


#!/bin/sh

snapshot_retention_period=12
Prodsnapshot=DATABASE_NAME-$(date +%Y-%m-%d-%H-%M-%S)
today=`date +%d`
current_hour=`date +%H`
yesterday=$(expr $today - 1)
retention_point=`date +%H --date "${snapshot_retention_period} hours ago"`
echo "Today            : $today"
echo "Current Hours    : $current_hour"
echo "Yesterday        : $yesterday"
echo "snapshot_retention_period  : $snapshot_retention_period"
echo "retention_point : $retention_point"



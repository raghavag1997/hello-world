#!/bin/bash 


rev=$(helm list | awk '{ print $1 }' | grep hello-world)

if [ "$rev" = "hello-world" ];
then
        echo "Chart is already deployed upgrade the tag"
else
        echo "Installing the chart"
fi;

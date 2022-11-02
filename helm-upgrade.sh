#!/bin/bash 


rev=$(helm list | awk '{ print $1 }' | grep hello-world)

if [ "$rev" = "hello-world" ];
then
        echo "Chart is already deployed upgrade the tag"
        helm upgrade hello-world hello-world/ --set image.tag=$1
else
        echo "Installing the chart"
        helm install hello-world hello-world/
fi;

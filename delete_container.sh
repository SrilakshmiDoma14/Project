count=`docker ps -aq | wc -l`
if [ $count -gt 0 ]
then
for i in `docker ps -aq`;do docker stop $i; docker rm $i;done
else
        echo " No container running"
fi

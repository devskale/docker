#!/usr/bin/env bash

docker-compose images

# Stop running containers and remove related directories
read -p "Do you really want to stop and remove EVERYTHING (y/n)? " answer
case ${answer:0:1} in
    y|Y )
        echo "INFO: Stopping containers"
        docker-compose stop
        echo "INFO: Removing containers"
        docker-compose rm -f
        echo "INFO: Setting file permissions to that of the user"
        echo "INFO: Pruning unused docker networks"
        docker network prune -f
        echo "INFO: Removing folders"
        sudo rm -rf ./content ./mariadb
        echo "INFO: Done"
        exit 0;
    ;;
    * )
        echo "INFO: Exiting without stopping containers or removing files"
        exit 0;
    ;;
esac

docker-compose images
docker ps

exit 0;

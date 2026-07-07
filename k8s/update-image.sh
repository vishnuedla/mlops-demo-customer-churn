#!/bin/bash


username=vishnu4538 # docker account  username

#delete image line

sed -i {"/image:/d"} deployment.yml

sleep 9s

#Adding image line to file $1 is username of docker and $2 is for tag

sed -i "19i\        image: docker.io/$username/${{ secrets.REPONAME }}:${{ github.run_id }}"  deployment.yml


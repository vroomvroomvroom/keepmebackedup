I needed a backup.

I wanted it to take everything from my computer and chuck it in the cloud.

Quick, dirty, easy: use an s3 bucket in an alpine container and synch up a folder based on the passed environment vars.

Someone else already probably did this better, but hey, we all gotta start somewhere, so feel free to contribute.


VARS in .env
Dockerfile has the quick and dirty installs
entry.sh does all the workat   

# pull base image .. this now pulls directly from gliderlabs/alpine:latest
$docker pull somen00b/keepmebackedup:latest
# change values in ./keepmebackedup/.env to suit needs .. aka put in your AWS creds or set env vars accordingly
$docker run -it --env-file ./keepmebackedup/.env -v /some/folder/to/backup:/opt/datavol somen00b/keepmebackedup:latest

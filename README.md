I needed a backup.

I wanted it to take everything from my computer and chuck it in the cloud.

Quick, dirty, easy: use an s3 bucket in an alpine container and synch up a folder based on the passed environment vars.

Someone else already probably did this better, but hey, we all gotta start somewhere, so feel free to contribute.


VARS in .env
Dockerfile has the quick and dirty installs
entry.sh does all the work  


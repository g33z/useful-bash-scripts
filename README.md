# A collection of useful bash scripts

## docker

### update-all.sh

This script expects a folder structure like the below where a folder holds many folders containing their according `docker-compose.yaml` files.
Those folders are being stepped through and if a `docker-compose.yaml` file exists, `docker-compose pull` and `docker-compose up -d` will be run.

```
$ pwd
/home/user/docker

$ ls -la
drwxrwxr-x  6 user user 4096 Mär 23 10:57 gitlab
drwxrwxr-x  3 user user 4096 Apr 16 19:41 mumble
drwxrwxr-x  4 user user 4096 Mär 30 20:21 nextcloud
drwxrwxr-x  3 user user 4096 Apr 16 19:41 traefik
-rwxrwxr-x  1 user user  422 Apr 17 09:47 update-all.sh
drwxrwxr-x  4 user user 4096 Feb 17 19:41 wikijs
drwxrwxr-x  4 user user 4096 Feb 24 13:43 wordpress-blog 

$ cd gitlab
$ ls -la
drwxrwxr-x  6 user user      4096 Mär 23 10:57 .
drwxrwxr-x 10 user user      4096 Apr 17 09:47 ..
drwxrwxr-x  4 root root      4096 Dez 21 15:44 config
drwxr-xr-x 21 root root      4096 Apr 17 09:54 data
-rw-rw-r--  1 user user      1972 Feb  1 00:12 docker-compose.yaml
drwxr-xr-x 21 root root      4096 Dez 21 15:44 logs
```
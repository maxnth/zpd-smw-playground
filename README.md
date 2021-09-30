# smw_docker

## Steps to get a basic SMW installation up and running
```
docker-compose up -d
```
* Run GUI installation in browser (use **SQLite**) under `localhost:<Port>`
* Download generated `LocalSettings.php` to this repository
* Append `enableSemantics();` to `LocalSettings.php`
```
docker-compose down
```
* Uncomment `LocalSettings.php` line in `docker-compose.yaml`
```
docker-compose start
docker-compose exec smw php maintenance/update.php
```
* Open SMW at `localhost:<Port>`

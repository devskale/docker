# WordPress: with Nginx web server in Docker

This project is a docker compose installation of a single site WordPress instance using Nginx as the web server and MariaDB as the database.
**NOTE**: assumes you are starting from the top level of the cloned repository (`PWD == ./wordpress-nginx-docker`)

```
mkdir -p wordpress_data/
docker-compose up -d
```

After a few moments you should see your site running at [http://127.0.0.1](http://127.0.0.1) ready to be configured.

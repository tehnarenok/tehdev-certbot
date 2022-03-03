# Docker image for certbot anf nginx

## How to use
### You need set theese envs for image `tehnarenok/certbot`:
+ `DOMAIN` - domain which for which you need to get a ssl certificate
+ `EMAIL` - your email for Let’s Encrypt
+ `HOST` - your service name
+ `PORT` - your service port  

### You need set depends_on your service (nginx)

### Voulmes:
+ <YOUR FOLDER>:/app/acme-challenge

### In nginx volumes:
+ <YOUR FOLDER>:<FOLDER IN NGINX FOR acme-challenge>

### example nginx conf
```
server {
    listen 80;

	...

	location /.well-known/acme-challenge/ {
		autoindex on;
		root /var/usr/acme-challenge/;
	}
}
```
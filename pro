server {
    server_name www.propitixpro.com;
    return 301 $scheme://propitixpro.com$request_uri;

    listen 80; # managed by Certbot

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/www.propitixpro.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/www.propitixpro.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot

}

server {
    server_name propitixpro.com;

    location / {
        proxy_pass http://35.242.136.106:30055;
           
proxy_set_header   Host $host;
proxy_set_header   X-Real-IP $remote_addr;
proxy_set_header   X-Forwarded-For $proxy_add_x_forwarded_for;
proxy_set_header   X-Forwarded-Host $server_name;
proxy_set_header   X-Forwarded-Proto https;

       }
   

    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/dev.blog.propitix.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/dev.blog.propitix.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot







}

server {
    server_name dev.propitixpro.com;

    location / {
        proxy_pass http://35.242.136.106:30022;
       
        proxy_set_header User-Agent $http_user_agent;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header Accept-Encoding "";
        proxy_set_header Accept-Language $http_accept_language;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;


       }


    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/dev.blog.propitix.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/dev.blog.propitix.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot





}

server {
    server_name test.propitixpro.com;

    location / {
        proxy_pass http://35.242.136.106:30033;

        proxy_set_header User-Agent $http_user_agent;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header Accept-Encoding "";
        proxy_set_header Accept-Language $http_accept_language;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;


       }


    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/dev.blog.propitix.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/dev.blog.propitix.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot





}

server {
    server_name stage.propitixpro.com;

    location / {
        proxy_pass http://35.242.136.106:30044;

        proxy_set_header User-Agent $http_user_agent;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header Accept-Encoding "";
        proxy_set_header Accept-Language $http_accept_language;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;


      }


    listen 443 ssl; # managed by Certbot
    ssl_certificate /etc/letsencrypt/live/dev.blog.propitix.com/fullchain.pem; # managed by Certbot
    ssl_certificate_key /etc/letsencrypt/live/dev.blog.propitix.com/privkey.pem; # managed by Certbot
    include /etc/letsencrypt/options-ssl-nginx.conf; # managed by Certbot
    ssl_dhparam /etc/letsencrypt/ssl-dhparams.pem; # managed by Certbot





}

server {
    if ($host = propitixpro.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot

 
    server_name propitixpro.com; 

    listen 80;
    return 404; # managed by Certbot


}

server {
    if ($host = dev.propitixpro.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    server_name dev.propitixpro.com; 
   
    listen 80;
    return 404; # managed by Certbot


}

server {
    if ($host = stage.propitixpro.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    server_name stage.propitixpro.com; 
   
    listen 80;
    return 404; # managed by Certbot


}

server {
    if ($host = test.propitixpro.com) {
        return 301 https://$host$request_uri;
    } # managed by Certbot


    server_name test.propitixpro.com; 

    listen 80;
    return 404; # managed by Certbot


}

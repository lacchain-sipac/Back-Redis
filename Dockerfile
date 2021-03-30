#FROM redis:4.0.14

FROM redis:5.0.8-alpine
COPY redis.conf /usr/local/etc/redis/redis.conf
CMD [ "redis-server", "/usr/local/etc/redis/redis.conf"]
EXPOSE 6379

# docker build  -t us.gcr.io/hondu-pf/honduras-redis:1.0.2 -f Dockerfile .

# gcloud docker -- push us.gcr.io/hondu-pf/honduras-redis:1.0.2     

# docker run  -itd  --name minos-redis -p 6379:6379   us.gcr.io/everisconf/honduras-redis:$BUILD_VERSION


 

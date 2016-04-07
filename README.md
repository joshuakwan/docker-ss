The default port and password can be found in Dockerfile. To override, use *--env* to specify **SS_PORT** and **SS_PWD**. The basic usage shows as below:

```
docker run -p 12306:12306 -d joshuakwan/shadow-server
```

The image can be pulled from docker hub:

```
docker pull joshuakwan/shadow-server
```

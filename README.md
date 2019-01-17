# Docker Grails 2.x CLI (docker-grails-cli)

Docker image for Grails 2.x CLI to use a build container. This immage bootstraps an environment for building old Grails 2.x.x applications based on OpenJDK 6.
This docker image was created to support an legacy application that could not be upgraded to a newer version of Grails or even Java Version, easely.

Image on dockerhub: [https://hub.docker.com/r/crowdcode/docker-grails](https://hub.docker.com/r/crowdcode/docker-grails)

## Technologies

- Grails 2.1.1
- OpenJDK 6

## How to use this image

Go to your grails application folder and start the grails interactive mode as follows:

```
docker run -it --rm -v "$(pwd)":/workspace crowdcode/grails grails
```

Or to build a production war of your application

```
docker run -it --rm -v "$(pwd)":/workspace crowdcode/grails:latest grails prod war
```

## Building the Image

You can build the image by yourself by executing:

```
./build.sh
```
Or by downloading directly from the registry:

```
docker pull crowdcode/grails:{version|latest}
```

## References

- More info about [Grails 2](https://grails.github.io/grails2-doc/2.1.1/guide/single.html)
- More info about [OpenJDK 6](https://openjdk.java.net/projects/jdk6/)
- More info about [Docker Java Container](https://hub.docker.com/_/java)
- More info about [Groovy](http://groovy-lang.org)
- More info about [Java Release History](https://en.wikipedia.org/wiki/Java_version_history#Java_SE_6) 

## Credits

This image was inspired by [mozart/grails-docker](https://github.com/mozart-analytics/grails-docker).

# interlok-service-tester-example

[![license](https://img.shields.io/github/license/adaptris/interlok-service-tester-example.svg)](https://github.com/adaptris/interlok-service-tester-example/blob/develop/LICENSE)
[![Actions Status](https://github.com/adaptris/interlok-service-tester-example/actions/workflows/gradle-build.yml/badge.svg)](https://github.com/adaptris/interlok-service-tester-example/actions/workflows/gradle-build.yml)
[![Build Status](https://travis-ci.org/adaptris/interlok-service-tester-example.svg?branch=develop)](https://travis-ci.org/adaptris/interlok-service-tester-example)

See this [blog](https://interlok.adaptris.net/blog/2018/07/03/testing-interlok-config.html) post for more information about getting started with `interlok-service-tester`.

## Testing

```
./gradlew interlokServiceTest
```

## Running as Interlok adapter
```
./gradlew docker
docker-compose up
curl -X PUT http://localhost:8080/orders/123 -d '<order><orderItem>item1</orderItem></order>'
curl -X GET http://localhost:8080/orders/123
curl -X DELETE http://localhost:8080/orders/123
```

# interlok-service-tester-example

## Testing

```
./gradlew test
```

## Running as Interlok adapter
```
./gradlew docker
docker-compose up
curl -X PUT http://localhost:8080/orders/123 -d '<order><orderItem>item1</orderItem></order>'
curl -X GET http://localhost:8080/orders/123
curl -X DELETE http://localhost:8080/orders/123
```

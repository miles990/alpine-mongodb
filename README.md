# alpine-mongodb
MongoDB docker image of small size version.

## Base Image
- alpine:3.4

## Environment
- Alpine Linux 3.4
- MongoDB 3.2.4

## Run
`
docker run -p 27017:27017 -d miles990/alpine-mongodb
`

`
docker run -p 27017:27017 -v $(pwd):/data/db -d miles990/alpine-mongodb
`


## License

[MIT](http://opensource.org/licenses/MIT)
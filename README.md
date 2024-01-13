## use
`docker run --platform linux/amd64 --rm -it polymerized/libsql-wasm`

## build
- **update tags**
```hcl
target "default" {
    tags = [ "polymerized/libsql-wasm:latest" ] # polymerized -> your_dockerhub_username
    dockerfile = "dockerfile"
    platforms = [ "linux/amd64" ]
    args = {
        TAG="0.2.2" # current libsql version
    }
}
```

- **build**
    - `docker buildx bake`

- **run**
    - `docker run --platform linux/amd64 --rm -it your_dockerhub_username/libsql-wasm`
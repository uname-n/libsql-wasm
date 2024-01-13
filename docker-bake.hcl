target "default" {
    tags = [ "polymerized/libsql-wasm:latest" ]
    dockerfile = "dockerfile"
    platforms = [ "linux/amd64" ]
    args = {
        TAG="0.2.2"
    }
}

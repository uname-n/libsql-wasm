target "default" {
    tags = [ "libsql-wasm" ]
    dockerfile = "dockerfile"
    platforms = [ "linux/amd64" ]
    args = {
        TAG="0.2.2"
    }
}
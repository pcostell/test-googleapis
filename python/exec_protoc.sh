#!/bin/sh

root_dir=$(cd ..; pwd)
find .. -type f -name '*.proto' -exec $root_dir/python/bin/protoc --python_out=$root_dir/python --proto_path=$root_dir {} \;
#!/bin/sh
# Should be run from the googleapis directory. 

# Run protoc --> python gen on all proto files in google/.
root_dir=$(pwd)
find "$root_dir/google" -type f -name '*.proto' -exec $HOME/.protobuf/bin/protoc --python_out=$root_dir/python --proto_path=$root_dir {} \;

# Generate __init__.py file for google namespace.
cat >> python/google/__init__.py << EOF
__import__('pkg_resources').declare_namespace(__name__)
EOF

# Generate __init__.py file for all sub directories.
find python/google/* -type d -exec touch {}/__init__.py \;

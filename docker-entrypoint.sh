#!/bin/bash

echo $PATH
exercism configure --key=$EX_KEY --dir=/code/exercism
exec "$@"

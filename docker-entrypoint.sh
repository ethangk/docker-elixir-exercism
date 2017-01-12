#!/bin/bash

cd /code
exercism configure --key=$EX_KEY --dir=/code/exercism
exec "$@"

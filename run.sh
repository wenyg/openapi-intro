#!/bin/bash

## 获取脚本自身所在目录
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run --rm -d -p 3000:8080 -v ${SCRIPT_DIR}:/book wenyg/docsify http-server /book/docs
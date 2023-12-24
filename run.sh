#!/bin/bash

## 获取脚本自身所在目录
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

docker run -d -p 3000:3000 -v ${SCRIPT_DIR}:/book wenyg/docsify docsify serve /book/docs
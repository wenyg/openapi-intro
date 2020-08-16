# OpenAPI

[OpenAPI](https://swagger.io/specification/) 是一种与语言无关的文档，用来描述 web 服务。

```yaml
openapi: 3.0.3
info:
  title: hi
  version: 0.0.1

paths:
  /hi:
    get:
      responses:
        '200':
          description: OK
          content:
            text/plain:
              schema:
                type: string
                enum: ["hello"]
```

比如以上文档就描述了这样一个服务， 当你用 `GET` 方法访问 `/hi` 接口时

```
GET /hi
```

就会得到一个 body 为 `hello` 的响应

```
HTTP/1.0 200 OK
Content-Type: text/plain

hello
```

本文主要介绍如何在 OpenAPI 中描述一个接口

### OpenAPI 结构

上面的示例中，有几个字段 `openapi` , `info`, `paths` 是 OpenAPI 中必不可少的字段，当然还有其它的字段

```yaml
openapi: 3.0.3 # OpenAPI的版本号，一些工具通过此版本号来解释该文档，非接口版本
info:
  # 必填 服务信息
paths:
  # 必填接口路径
components:
  # 组件，保存openapi中各种各样的片段
servers: 
  # 服务后端基本地址，和paths中的路径拼接成完整的url路径，是个数组
security: 
  # 授权机制， 比如api_key, auth2 等
tags: 
  # 标签，标记用
externalDocs:
  # 外部文档
```
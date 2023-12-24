## OpenAPI 结构

在上节中，有几个字段 `openapi` , `info`, `paths` 是 OpenAPI 中必不可少的字段，当然还有其它的字段

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

接下来的章节中会对大部分常见的字段进行描述. 本文档左侧的目录结构也会按照 OpenAPI 各个字段的层级一样排列, 方便快速查找, 建议阅读的时候打开左边导航栏。
# get, post, put, delete, ...

### 请求方法

每个方法下面，只有一个必要的字段 `responses` 来描述相应

```yaml
paths:
  /add:
    get:
      responses:
      	# 这里描述响应
```



完整的字段

```yaml
paths:
  /add:
    get:
      tags: 
        - string # 标签
      summary: string # 摘要
      description: string # 描述
      externalDocs:
        # 外部文档
      operationId: string # 用作唯一标识的操作ID，在api所有的操作中需保持唯一，区分大小写。
      parameters: 
        # 请求参数
      requestBody:
        # 请求体
      responses:
        # 响应
      callbacks:
        # 回调对象
      deprecated: boolean # 废弃声明
      security: 
        - # 授权机制
      servers: 
        - # 服务器对象 
```


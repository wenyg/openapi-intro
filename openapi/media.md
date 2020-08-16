# text/plain

媒体类型下面， 有以下几个字段，其中大多是情况都需要 `schema` 字段

```yaml
paths:
  /add:
    post:
      responses:
        200:
          description: string # 描述
          content:
            text/plain:
              schema:
                # 这里描述 schema
              example: 
                # 示例
              examples:
                # 示例, example与examples 互斥，二者只能有一个
              encoding:
                # 编码方式?
```
# 200, 400, ...

http 状态码下面就开始对响应体正文进行描述。只有一个必要的字段 `description` 。 但一部分的接口只有一个状态码的话是无法完全描述的。大多数情况要有 `content` 字段来描述它的响应正文

```yaml
paths:
  /add:
    post:
      responses:
        200:
          description: string # 描述
          headers:
            # 响应头
          content:
            # 响应体正文
          links:
            # 链接？
```

当然如果没有响应体，只有一个 `description` 就可以。比如插入数据操作返回 200 代表插入成功， `/healthy` 心跳接口返回 200 代表服务正常等


# responses

response下面的字段就是 **http 状态码**，而且只能 http状态码

一个接口可能返回多个http状态码， 状态码不同，返回的内容可能也不同，比如200 返回正常信息，404找不到，5xx 内部错误等。

```yaml
paths:
  /add:
    post:
      responses:
        200:
          # 状态码为200是的响应
        400:
          # 状态码为400是的响应
        406:
          # 状态码为406是的响应
```
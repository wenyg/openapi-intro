# content

content 是一个媒体类型，下面的字段都是媒体类型，而且只能是媒体类型。该字段也会作为 http 响应头中的 `Content-Type` 字段

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
            text/plain:
              # text schema
            application/json:
              # json schema
            image/*:
              # image schema
```

在 http 响应中，有时候需要先判断http响应头，再做进一步的处理。比如下载文件，如果能下载，返回的可能是 `application/octet-stream` 头，然后跟二进制文件。 如果由于不能下载可能是一个 `application/json` 头然后跟 一个json字符串描述原因。这时候接口调用者就需要先判断响应头，再进行其它的操作
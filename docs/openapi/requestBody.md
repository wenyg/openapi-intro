# requestBody

requestBody 用来描述请求体， 就三个字段。其中只有 `content` 字段是必须存在的

```yaml
paths:
  /add:
    post:
      requestBody:
        description: string # 描述
        required: boolean # 是否必要
        content:
          # content 请求正文
```

这个 `content` 指的是一个媒体类型，它可以是文本，图像，音频，视频，二进制文件等。请求体正文或者响应体正文 都用它来描述。该字段稍后在响应字段中进行详细描述 


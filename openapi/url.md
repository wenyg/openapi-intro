# /add, /del, ...

一个接口下面可能有多个请求方法，不同的请求方法，对应的相应内容可能不一样。比如http接口调用如果涉及到跨域跨域的话，一般会先用option方法查询接口是否支持跨域，然后再进行实际的post，put等请求操作

```yaml
paths:
  /add:
    get:
      # 描述 get 接口
    put:
      # 描述 put 接口
    post:
      # 描述 post 接口等
```

完整字段

```yaml
paths:
  /add:
    summary: string # 摘要
    description: string # 描述
    get: 
      # 请求方法，put， post，delete
    servers:
      # 服务器对象
    parameters:
      - # 请求参数
```

你可能会注意到 路径下面也有个 `servers` 对象，oepanpi 根结构下 也有个 `servers` 对象，它们有什么区别呢？它们是一样的，只不过一个全局默认的，一个局部特定的，类似于变量，局部的会覆盖全局的。还有一些它的字段`parameters`，`security`  等，都是类似的原理。
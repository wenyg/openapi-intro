## 接口

描述一个接口前 我们首先要看一下一个接口有哪些属性

- 请求
    - 接口路径
    - 请求参数
    - 请求方法
    - 请求头
    - 请求体
- 响应
    - 响应状态码
    - 响应头
    - 响应体

当然， 并不是所有的接口都包含以上字段，但其中有几个必不可少的字段，它们分别是 **请求路径**，**请求方法** 和 **响应码**
。 比如在OpenAPI中以下字段就 可以描述一个接口， 用 `GET` 方法请求 `/ready` 接口会得到一个http状态码为 200 的响应。

```yaml
paths:
  /ready:
    get:
      responses:
        '200':
            description: OK
```

一些复杂一点的接口可能包含上面的所有属性，OpanAPI 中都有对应的字段来描述这些属性。 一个包含所有属性的接口，它的大致结构如下

```yaml
paths:
  /pet:
    post:
      parameters:
        # 这里描述请求参数,包括 header参数
      requestBody:
        content:
          # 这里描述请求体
      responses:
        '200':
          content:
            # 这里描述响应体
          headers:
            # 这里描述响应头
```

要注意的两点是
1. 请求头请url参数都在 `parameters` 中进行描述
2. `Content-Type` 头在 `content` 中， 请求体或者响应体的具体描述也都在 `content` 下进行描述

接下来介绍各个字段之前， 先介绍下 `schema` 和 `content`
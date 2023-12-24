

# parameters

parameters 用来描述请求参数，参数一般有三种方式传入

1. 在 url 中。 比如 `/customers/10001` , 这个 `10001` 就可以作为 会员ID 参数

2. 在 url 参数中。比如 `/customers?id=10001`

3. 在 header 中。比如

   ```
   Id: 10001
   ```

4. 在 cookie 中。比如

   ```
   Cookie: id=10001
   ```

   > 当然 cookie也是 在 header 中， 只不过cookie比较特殊，所以单独提出来

perameters 是一个数组，一般必填字段有两个有 `name`, `in`,`required`,`schema`

```yaml
paths:
  /add:
    get:
      parameters: 
        - name: string # 参数名字
          in: string # 只有4个值，"query", "header","path" 或者 "cookie"
          description: string # 描述
          required: boolean # 是否一定需要
          deprecated: boolean # 废弃声明
          allowEmptyValue: boolean # 是否运行空值
          schema:
          	# 参数的schema
          example: any # 示例
```

以上几种参数的示例

```yaml
paths:
  /customers/{id}:
    get:
      parameters: 
      	# id 在路径中
        - name: id
          in: path
          required: true
          schema:
            type: integer
        # message 在 query 中
        - name: message
          in: query
          required: true
          schema:
            type: string
        # Ip 在 header 中
        - name: Ip
          in: header
          required: true
          schema:
            type: string
        # token 在 cookie 中
        - name: token
          in: cookie
          required: true
          schema:
            type: string
```

对应的 curl 请求方法

```shell
# id: 2; message: hello; Ip: 192.168.0.1; token: e26e1bbdff....
curl -X GET "http://ip:port/customers/2?message=hello" 
	-H "Ip: 192.168.0.1" 
	-H "Cookie: token=e26e1bbdffbaf3d270f7d7c98474a806c1b7ebd26a77eca5"
```
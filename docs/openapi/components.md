# components

`components`  比较简单, 里面 就是 OpenAPI 各种可重用的组件. 

```yaml
components:
  schemas:
  	# schemas
  responses:
  	#
  parameters:
  	#
  examples:
    #
  requestBodies:
  	#
  headers:
    #
  securitySchemes:
  	#
  links:
  	#
  callbacks:
  	#
```

注意, 里面各个组件要符合各个组件的规范,比如 `responses` 下面就只能是 前面描述的 responses 结构, `parameters` 就只能是 parameters 结构, 其它组件同理

示例

```yaml
components:
  schemas:
    Error:
      type: object
      properties:
        code:
          type: integer
        message: 
          type: string
  responses:
    NotFound:
      description: Not found
    GeneralResponse:
      description: OK
      content:
        application/json:
          schema:
            type: object
```

其它地方用该片段的时候可以通过引用的方式来引入该片段. 参考常见的 schema 规则中引用章节
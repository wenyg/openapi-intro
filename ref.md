## using ref

如果有一些资源经常使用的话，为了避免文档上的重复，通常的做法是为此类元素创建一个片段，然后用引用的方式来引入该片段. 引用可以是

1. 文档内的本地引用
   ```yaml
   $ref: '#/components/schema/myElement'
   ```

2. 同一个服务器的引用

   ```yaml
   $ref: 'document.yaml#/components/schema/myElement'
   $ref: '../document.yaml#/components/schema/myElement'
   $ref: '../another-folder/document.yaml#/components/schema/myElement'
   ```

3. URL引用

   ```yaml
   $ref: 'http://my.site.com/document.yaml#/components/schema/myElement'
   $ref: '//my.site.com/document.yaml#/components/schema/myElement'
   ```

但是并不是所有的地方都可以用引用，而且引用的片段必须要符合openapi的规范。 比如 response处引用的片段，必须是response片段。允许用引用的地方有以下几处：

- schema
- response
- parameter
- example
- requestBody
- header
- securityScheme
- link
- callback

## 注意事项

1. 解析的时候 `$ref` 兄弟节点都会被忽略， 比如下面的 `description` 和 `default` 字段

   ```yaml
   components:
     schemas:
       Date:
         type: string
         format: date
       DateWithExample:
         $ref: '#/components/schemas/Date'
         description: Date schema extended with a `default` value... Or not?
         default: 2000-01-01
   ```

2. `/`和`~`是JSON指针中的特殊字符。可能会被转义

   - `~` -> `~0`
   - `/` -> `~1`

   ```yaml
   # 下面两个都是合法的
   $ref: '#/paths/blogs{blog_id}/new~posts'
   $ref: '#/paths/~1blogs~1{blog_id}~1new~0posts'
   ```

3. 只有是支持 schema 的地方，都支持引用
# 引用

如果一些 schema 被多个地方使用，为了避免文档上的重复，更常见的做法是将这一部分 schema 声明为一个片段，其他文档通用引用的方式 来引入该片段。

## $ref

引用可以是本地引用，也可以是网络引用。 可以是整个文档引用，也可以是文档内的片段引用

1. 文档内的本地引用

   ```yaml
   $ref: '#/components/schema/myElement'
   ```

2. 同一个服务器的片段引用

   ```yaml
   $ref: 'document.yaml#/components/schema/myElement'
   $ref: '../document.yaml#/components/schema/myElement'
   $ref: '../another-folder/document.yaml#/components/schema/myElement'
   ```

3. URL片段引用

   ```yaml
   $ref: 'http://my.site.com/document.yaml#/components/schema/myElement'
   $ref: '//my.site.com/document.yaml#/components/schema/myElement'
   ```


`$ref` 和 allOf，oneOf，anyOf 等关键字一起使用。从一些基本的片段，无需大量重复就可以构建出一个非常强大的结构
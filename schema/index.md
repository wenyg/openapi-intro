# 常见的 schema 规则

json schema 是用于验证 json 数据结构的一种强大工具。 本章节主要介绍 openapi 中支持的 schema 。

- title
- multipleOf
- maximum
- exclusiveMaximum
- minimum
- exclusiveMinimum
- maxLength
- minLength
- pattern
- maxItems
- minItems
- uniqueItems
- maxProperties
- minProperties
- required
- enum
- type
- allOf
- oneOf 
- anyOf
- not
- items 
- properties
- additionalProperties
- description
- format
- default

OpenAPI 3.0.3 版本中 支持的 schema 有以上这些，细分到各个数据类型，每个类型也就几个规则。下面按照数据类型分类对这些规则进行讲解
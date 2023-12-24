# schema

schema 经常用来定义一个 json object的格式，但也可以定义数组，数组或者字符串。

字符串

```yaml
type: string
```

数字

```yaml
type: number
```

布尔

```yaml
type: boolean
```

数组, 数组类型必须要有 `items` 来表明该数组成员的 schema


```yaml
type: array
items:
    # 这里是数组成员的schema
```

JSON object， json object类型必须要有 `properties` 来表明该object具有哪些 key

```yaml
type: object
properties:
    json_key_name:
        # 这里是 json_key_name 的 schema
```

以上几个类型相互组合，可以组合成复杂的json

只要记住两个规则，就能很快的熟悉 json schema

1. array 紧跟 items 描述数组成员
2. object 紧跟 properties 描述 json 成员。

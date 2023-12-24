# 数组

```yaml
type: array
```

匹配

- ```json
  [1, 2, 3, 4, 5]
  ```

- ```json
  [3, "different", { "types" : "of values" }]
  ```

不匹配

- ```json
  {"Not": "an array"}
  ```

## items

默认情况下，数组可以是任何元素，但是大多是情况下，数组里的元素都是一样的。

使用 `items` 时假设数组成员都是一样的，并对其进行验证

 ```yaml
type: array
items:
	type: number
 ```

匹配

- ```json
  [1, 2, 3, 4, 5]
  ```

- ```json
  []
  ```

不匹配

- ```json
  [1, 2, "3", 4, 5]
  ```

  其中的 `"3"` 是一个 `string`

## minItems， maxItems

`minItems`， `maxItems` 关键字限制 数组的 最小，最大长度

```yaml
type: array
minItems: 2
maxItems: 3
```

匹配

- ```json
  [1, 2]
  ```

- ```json
  [1, 2, 3]
  ```

不匹配

- ```json
  []
  ```

- ```json
  [1]
  ```

- ```json
  [1, 2, 3, 4]
  ```

## uniqueItems

`uniqueItems` 关键字限制数组中每个项目都是唯一的，没有重复

```
type: array
uniqueItems: true
```

匹配

- ```json
  [1, 2, 3, 4, 5]
  ```

- ```json
  []
  ```

不匹配

- ```json
  [1, 2, 3, 3, 4]
  ```
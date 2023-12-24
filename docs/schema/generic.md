# 通用

## title， description， default， examples

json schema 有一些关键字 是很多地方都能用的，他们不用来验证，而是一种帮助文档，可以理解为注释。

其中 `title` 和 `description` 都是字符串。就如同它们字面意思一样，分别还是标题和描述，其中标题尽量要短。 描述可以很长，支持 markdwon 格式。

`defalut` 和 `examples`  格式和具体要描述的 schema 一致。

## enum

`enum` 枚举，用来限制值的范围。

```yaml
type: string
enum:
	- red
	- amber
	- greenp
```

匹配

- ```json
  "red"
  ```

不匹配

- ```json
  "blue"
  ```
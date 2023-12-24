# 组合

json schema 有一些关键字用于将各个 schema 组合起来。

## allOf

给定的数据必须满足所有的子模式

```yaml
allOf:
	- type: string
	- maxLength: 5
```

匹配 

- ```json
  "short"
  ```

不匹配

- ```json
  "too long"
  ```

## anyOf

给对的数据至少满足一个子模式

```yaml
anyOf:
	- type: string
	- type: number
```

匹配

- ```json
  "Yes"
  ```

- ```json
  42
  ```

不匹配

- ```json
  { "Not a": "string or number" }
  ```

## oneOf

给定的数据必须满足其中的一个模式，而且也只能满足一个

```yaml
oneOf:
	- type: number
	  multipleOf: 5
	- type: number
	  multipleOf: 3
	
```

匹配

- ```json
  10
  ```

- ```json
  5
  ```

不匹配

- ```json
  2
  ```

- ```json
  15
  ```

## not

```yaml
not:
	type: string
```

匹配

- ```json
  42
  ```

- ```json
  { "key": "value" }
  ```

不匹配

- ```json
  "I am a string"
  ```
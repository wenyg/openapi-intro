# 数字

## integer

```yaml
type: integer
```

匹配

- ```json
  42
  ```

- ```json
  -1
  ```

不匹配

- ```json
  3.1415926
  ```

- ```json
  "42"
  ```

## nunber

```yaml
type: number
```

匹配

- ```json
  42
  ```

- ```json
  -1
  ```

- ```json
  5.0
  ```

- ```json
  2.99792458e8
  ```

不匹配

- ```json
  "42"
  ```

## multipleOf

`multipleOf` 用来限制数字是谁的倍数

```yaml
type: number
multipleOf: 10
```

匹配

- ```json
  0
  ```

- ```json
  10
  ```

- ```json
  20
  ```

不匹配

- ```json
  23
  ```

## Range

可以用 `minimum` 和 `maximum` 来限制数字范围 (或者 `exclusiveMinimum`, `exclusiveMaximum`, 该关键字不包含要比较的值)

```yaml
type: number
minimum: 0
exclusiveMaximum: 100
```

> 取值范围：[0,100)

匹配

- ```json
  0
  ```

- ```json
  10
  ```

- ```json
  99
  ```

不匹配

- ```json
  -1
  ```

- ```json
  100
  ```

- ```json
  101
  ```
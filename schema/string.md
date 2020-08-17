# 字符串

```yaml
type: string
```

匹配

- ```json
  "This is a string"
  ```

- ```json
  "Déjà vu"
  ```

- ```json
  "42"
  ```

- ```json
  ""
  ```

不匹配

- ```json
  42
  ```

## minLength， maxLength

```yaml
type: string
minLength: 2
maxLength: 3
```

匹配

- ```json
  "AB"
  ```

- ```json
  "ABC"
  ```

不匹配

- ```json
  "A"
  ```

- ```json
  "ABCD"
  ```

## pattern

```yaml
type: string
pattern: ^(\\([0-9]{3}\\))?[0-9]{3}-[0-9]{4}$
```

匹配的

- ```json
  "555-1212"
  ```

- ```json
  "(888)555-1212"
  ```

不匹配

- ```json
  "(888)555-1212 ext. 532"
  ```

- ```json
  "(800)FLOWERS"
  ```

## format

openapi 中 string 还有一个常见的关键字 `format` ，可以用来描述特殊的字符串

- base64 编码的字符

  ```yaml
  type: string
  format: byte
  ```

- 二进制文件

  ```yaml
  type: string
  format: binary
  ```
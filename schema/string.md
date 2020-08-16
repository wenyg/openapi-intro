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

  
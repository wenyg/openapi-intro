# json

```yaml
type: object
```

匹配

- ```json
  {
     "key"         : "value",
     "another_key" : "another_value"
  }
  ```

- ```json
  {
      "Sun"     : 1.9891e30,
      "Jupiter" : 1.8986e27,
      "Saturn"  : 5.6846e26,
      "Neptune" : 10.243e25,
      "Uranus"  : 8.6810e25,
      "Earth"   : 5.9736e24,
      "Venus"   : 4.8685e24,
      "Mars"    : 6.4185e23,
      "Mercury" : 3.3022e23,
      "Moon"    : 7.349e22,
      "Pluto"   : 1.25e22
  }
  ```

不匹配

- ```json
  {
      0.01 : "cm"
      1    : "m",
      1000 : "km"
  }
  ```

- ```json
  "Not an object"
  ```

- ```json
  ["An", "array", "not", "an", "object"]
  ```

## properties

使用 `properties` 关键字定义了 `object` 有哪些属性， 其中每个 key 是 属性名，value 是该属性的 `schema`

```yaml
type: object
properties:
	number: 
		type: number
    street_name：
    	type: string
   	street_type: 
   		type: string
   		enum: 
   			- Street
   			- Avenue
   			- Boulevard
```

匹配

- ```json
  { "number": 1600, "street_name": "Pennsylvania", "street_type": "Avenue" }
  ```

- 缺少属性也是匹配的，因为它没有 `required` 字段限制 属性必须存在

  ```json
  { "number": 1600, "street_name": "Pennsylvania" }
  ```

  ```
  {}
  ```

- 有附加的属性也是匹配的

  ```json
  { "number": 1600, "street_name": "Pennsylvania", "street_type": "Avenue",
    "direction": "NW" }
  ```

不匹配

- ```json
  { "number": "1600", "street_name": "Pennsylvania", "street_type": "Avenue" }
  ```

  因为 number 类型不匹配

### additionalProperties

`additionalProperties` 关键字用来控制是否允许 `properties` 成员之外的属性存在， 它的值可以是个布尔值，也可以是 `schema object` 如果将其设置为 `false`，那么就不允许附加的属性存在。

还用上面的 schema，不过这次设置 `additionalProperties` 为 `false`

```yaml
type: object
properties:
	number: 
		type: number
    street_name：
    	type: string
   	street_type: 
   		type: string
   		enum: 
   			- Street
   			- Avenue
   			- Boulevard
additionalProperties: false
```

不匹配

- ```json
  { "number": 1600, "street_name": "Pennsylvania", "street_type": "Avenue",
    "direction": "NW" }
  ```

  因为设置了`additionalProperties`为`false`， 所以不允许附加的属性`direction` 存在

如果 `additionalProperties` 是个 `schema object` ，那么该`schema`会被用来验证那些附加的成员，比如限制允许附加的成员，但是成员的值只能是 string

```yaml
type: object
properties:
	number: 
		type: number
    street_name：
    	type: string
   	street_type: 
   		type: string
   		enum: 
   			- Street
   			- Avenue
   			- Boulevard
additionalProperties: 
	type： string
```

匹配

- ```json
  { "number": 1600, "street_name": "Pennsylvania", "street_type": "Avenue",
    "direction": "NW" }
  ```

不匹配

- ```json
  { "number": 1600, "street_name": "Pennsylvania", "street_type": "Avenue",
    "office_number": 201  }
  ```

  因为 附加成员 `office_number`  类型是 `number` 而不是 `string`

## required

`required` 关键字用来限制 `properties` 下面的哪些属性必须存在

```yaml
type: object
properties:
	name:
		type: string
    email:
    	type: string
    address:
    	type: string
    telephone: 
        type: string
required: 
	- name
	- email
```

匹配

- ```json
  {
    "name": "William Shakespeare",
    "email": "bill@stratford-upon-avon.co.uk"
  }
  ```

- ```json
  {
    "name": "William Shakespeare",
    "email": "bill@stratford-upon-avon.co.uk",
    "address": "Henley Street, Stratford-upon-Avon, Warwickshire, England",
    "authorship": "in question"
  }
  ```

不匹配

- ```json
  {
    "name": "William Shakespeare",
    "address": "Henley Street, Stratford-upon-Avon, Warwickshire, England",
  }
  ```

  因为它，缺少了必须存在的属性 `email`

## minProperties， maxProperties

`minProperties`， `maxProperties` 关键字 限制了`object` 最少，最多有多少个属性

```yaml
type: object
minProperties: 2
maxProperties: 3
```

匹配

- ```json
  { "a": 0, "b": 1 }
  ```

- ```json
  { "a": 0, "b": 1, "c": 2 }
  ```

不匹配

- ```json
  {}
  ```

- ```
  { "a": 0 }
  ```

- ```json
  { "a": 0, "b": 1, "c": 2, "d": 3 }
  ```
# info

info 字段， 就是描述该服务的一些信息， 必要字段字段也就两个 `title`， `version` 是一些帮助信息

```yaml
info:
    title: 会员管理系统 # 标题
    description: 这是一个会员管理系统，具有会员增删该查，记录消费信息的等功能 # 描述信息
    version: 1.0.1 # 接口版本号  
```

完整的字段

```yaml
info:
  title: string # 标题
  description: string # 描述
  version: string # 版本号
  termsOfService: string # 服务条款，必须是个网址
  contact: 
    # api联系人
    name: string # 联系人名字
    url: string # 联系人信息
    email: string # 联系人邮箱地址
  license:
    # API许可信息
    name: string # 许可协议， 比如 Apache 2.0, BSD, MIT 等
    url: string # 协议的相关介绍，必须是个网址
```
---
layout: post
title: "Learning Go by writing a Discord Bot"
categories: code
author: Anshul Chauha
katex: False
---

### 1. Reading config

To run the Discord bot you'll need to have a token. Usually, you will be reading
this token from a config file or an environment variable.

This is how you get and set the environment variables in Go

```go
package main

import (
    "fmt"
    "os"
)

func main() {
    os.Setenv("FOO", "1")
    fmt.Println("FOO:", os.Getenv("FOO"))
    fmt.Println("BAR:", os.Getenv("BAR"))
}
```


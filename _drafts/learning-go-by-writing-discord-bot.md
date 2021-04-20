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
    "os"
)

func main() {
    os.Setenv("FOO", "1")
    foo := os.Getenv("FOO")
}
```

But I prefer reading directly from a config file. Python has a built-in library
called [`configparser`](https://docs.python.org/3/library/configparser.html).
Go doesn't have that so I wrote a bare-bones one. It does the job.

```go
// configparser_test.go
package configparser

import (
    "io/ioutil"
    "strings"
)

func Config(file_path string) map[string]string {

    data, err := ioutil.ReadFile(file_path)
    if err != nil {
        panic(err)
    }

    lines := strings.Split(string(data), "\n")

    m := make(map[string]string)

    for _, s := range lines {
        parts := strings.Split(s, "=")
        m[parts[0]] = parts[1]
    }

    return m
}
```

So there's a log going on here, so let's unpack.

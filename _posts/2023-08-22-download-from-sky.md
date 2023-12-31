---
layout: post
title: "How to download files off of a Fly instance"
author: Anshul Chauhan
categories: cloud
syntax: True
tags: fly cloud
---

I have a Fly instance running a Rust app which is using a SQLite
database. And I wanted to copy that file off Fly to my local machine.

```shell
flyctl ssh -a <APP_NAME> sftp get <FILEPATH>
```

### Extra
- fly.io docs [`fly ssh`](https://fly.io/docs/flyctl/ssh-sftp/)
- Simon Willison - [How to scp files to and from Fly](https://til.simonwillison.net/fly)

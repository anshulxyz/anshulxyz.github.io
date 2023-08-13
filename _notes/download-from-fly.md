---
title: "How to download files off of a Fly instance"
layout: note
syntax: True
createdAt: "2023-08-09 21:00"
tags: fly
---

I have a Fly instance running a Rust app which is using a SQLite
database. And I wanted to copy that file off Fly to my local machine.

```shell
flyctl ssh -a <APP_NAME> sftp get <FILEPATH>
```

Link to [[rust]]

### Extra
- fly.io docs [`fly ssh`](https://fly.io/docs/flyctl/ssh-sftp/)
- Simon Willison - [How to scp files to and from Fly](https://til.simonwillison.net/fly)

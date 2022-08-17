---
layout: post
title: "How I added boolean support to SeaORM"
categories: code
author: Anshul Chauhan
description: "Springfield"
syntax: True
tags: rust sqlite SeaORM
---

In order for an ORM to be Database agnostic it needs to follow a consitent
_model_ schema across the databases. This causes a problem since some database
engines are more powerful than others.


- had to convert the bool to int for my own program
- look at the Django ORM code and check how they support Bool in SQLite
- experiments with SQLite where they do this conversion on their side

> SQLite recognizes the keywords "TRUE" and "FALSE", as of version 3.23.0
> (2018-04-02) but those keywords are really just alternative spellings for the
> integer literals 1 and 0 respectively.

- mention type affinity rules, mention that SQLite has a rule to treat "BOOLEAN"
as numeric. When none of the rules match, the column gets treated as numeric.

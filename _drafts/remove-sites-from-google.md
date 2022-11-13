---
layout: post
title: "Removing specific websites from Google search results"
categories: code
author: Anshul Chauhan
syntax: True
---

- You can use `-site:example.com` to remove the `example.com` from your search results.
- If you want to search in the specific website only then you can do that by adding `site:example.com` to your search query
- I wanted to remove some sites from the search result because of the spammy nature and poor quality content on these websites. Visiting these websites it made clear to me that their main focus was to farm clicks.
- Websites such as tutorialspoint.com, javatpoint.com, geeksforgeeks.com/org
- I wrote a small script that removes these elemenets from the search result.
  - But I realised that this solution is not scalable and actually reduces the number of results I see on the page
  - And I wasn't really proud of this.
- So the best solution I've found is to have a personal configured Google (a programmeable search engine) which let's you remove websites from the search result
- Use a Chrome xtension that let's you set a custom newtab website, I have set the newtab website to redirect to my personal search engine
- The problem was that this spam websites were getting ranked higher than the official docs.

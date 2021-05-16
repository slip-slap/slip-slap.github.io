---
layout: post
title: " Jekyll: Rendering Hooks"
keywords: []
description: 
category: "PL" 
tags: ["ruby","jekyll"]
---
{% include JB/setup %}

#### Purposed
Using hooks, you plugin can exercise fine-grained control over various aspects
of the build process.
- If your plugin defines any hooks, Jekyll will call them at pre-defined points.


#### Method
1. Hooks are registered to an owner and an event name. to register one
- You call *Jekyll::Hooks.register*, and pass the hook owner, event name, and
  code to call whenever the hookis triggered.
- For example, if you want to execute some custom functionality every time Jekyll renders a page, you could register a hook like this:

```ruby
Jekyll:Hooks.register :pages, :post_render do |page|
	# code to call after Jekyll renders a page
end
```



#### Reference
1. [official website of Jekyll](2017-12-08-pl-jekyll-summary.md)
2. [Hooks in Jekyll](https://jekyllrb.com/docs/plugins/hooks/)

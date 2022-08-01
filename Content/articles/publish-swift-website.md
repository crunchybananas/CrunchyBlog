---
authors: Cory Loken, Code Monkey
date: 2022-07-29 15:41
description: Building our site with Publish.
tags: howto, article
---

For years I've wanted to add a blog section to our website. Often we tackle problems that are on 
the bleeding edge of new tech and want to document our findings. Or we just want to do something crazy... like building a blog in Swift. I really like the 
Podcast [Swift by Sundell](https://swiftbysundell.com); it's an essential Podcast for any Swift developer. As luck would have it, 
it is also where I learned about [Publish](https://github.com/JohnSundell/Publish), "A static site generator built 
specifically for Swift developers".


There are lots of great articles that will help you get up and running with Publish and there are links to many below. I'd also
recommend reading through the documentation in the repo as most of what you need is there. In fact the remainder of this post
will assume you've done the quick start portion.

```swift
// Sources/CrunchyBlog/Theme+Crunchy.swift
extension Theme where Site == CrunchyBlog {
  static var basic: Self {
    Theme(
      htmlFactory: BasicHTMLFactory(),
      resourcePaths: ["Resources/CrunchyTheme/theme.css"]
    )
  }
```



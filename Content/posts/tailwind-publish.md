---
date: 2022-07-27 15:41
description: Using Tailwind with Publish.
tags: howto, article
---
# Using Tailwind with Publish 

Create a file in your theme folder called `theme.css` or update 
existing theme.css with the following code.

```css
@tailwind base;
@tailwind components;
@tailwind utilities;
```

```css
.main {
  background: red; 
}
```


```javascript
/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./**/*.{html,swift}"],
  theme: {
    extend: {},
  },
  plugins: [require('@tailwindcss/typography')],
}
```


# CSS Preprocessor

CSS Preprocessing
* CSS preprocessors
  - Less
  - SCSS
  - Sass
  - Stylus
  - PostCSS
* CSS base
  - normalize
  - reset
* CSS vendor prefixing
  - Autoprefixer
  - Prefixfree


To get the best cross-browser support, it is a common practice to apply vendor prefixes to CSS properties and values that require them to work, i.e. sprinkling every CSS property with a set of vendor prefixes:
- `-webkit-`
- `-moz-`
- `-chrome-`

Different browsers different defaults; to iron out the CSS properties applied by default by a browser, the so-called *base CSS styling* is defined. It sets a huge number of properties to a value you will later chage anyway. So in applying a style to a page, the browser first applies its own browser-defaults, then layers down the base-defaults, then user-pre-defaults, user-mid-defaults, user-post-defaults (via PostCSS of course), then media-low-defaults, media-mid-defaults, media-highmid-range-defaults and finally default-defaults. (Where the fuck…?! I don't even touch this stuff).


It is a common practice to apply CSS to a page that styles elements such that they are consistent across all browsers. Popular choices:
- normalize.css
- reset

*Autoprefixer* processes CSS server-side.

*-prefix-free* processes CSS client-side, applying the prefixes via a script.

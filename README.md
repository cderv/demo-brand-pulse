> [!NOTE]
> This repository is a fork of [gadenbuie/brand-yml-r-for-the-rest-of-us](https://github.com/gadenbuie/brand-yml-r-for-the-rest-of-us). It is being used as an example in the presentation [Personalizing Quarto documents with _brand.yml](https://cderv.github.io/rr2025-quarto-brand-yml/) at Rencontres R 2025. See the [presentation repository](https://github.com/cderv/quarto-brand-yml) for more information.

# Live Demo Notes

## Create a demo app

Install `bslib` from GitHub:

```r
pak::pak("rstudio/bslib")
```

<https://rstudio.github.io/bslib/dev/articles/brand-yml/>

```r
new_app_dir <- "brand-demo"
template <- fs::path_package("bslib", "examples-shiny/brand.yml")

# Copy the template files into your new app directory
fs::dir_copy(template, new_app_dir)
```

Then delete the built-in `brand-demo/_brand.yml` and create a new `_brand.yml` file.
Then run the demo app.

```r
shiny::runApp("brand-demo")
```

## Translate the brand guidelines

Open the `Pulse Mobile Brand Guidelines.pdf` file.
I've already downloaded the logos, so they're ready to go.

Here's some basic guidance:

```yml
meta:
  name: Pulse Mobile
  link: https://pulse.mobile

logo:
  images:
    icon_white: logos/icon-white.png
    icon_black: logos/icon-black.png
  small: logos/icon-color.png
  medium: logos/logomark-med-color.png

color:
  palette:
    purple: "#8a2be2"
    blue: "#00c2ff"
    green: "#4dc964"
    yellow: "#ffd600"
    red: "#ff5a5f"
    black: "#121212"
    white: "#f8f8f8"
    
  primary: purple
  info: blue
  
typography:
  fonts:
    - family: Montserrat Alternates
      source: google
    
    - family: Montserrat
      source: google
      
    - family: Space Mono
      source: google
      
  base: Montserrat
  headings: Montserrat Alternates
  monospace: Space Mono
```

See the final `_brand.yml` for more details.

## Try the example reports

There are three objects in here:

* A Shiny for R app: `app.R`
* A Quarto report (with `typst` and `html` output formats)
* A Quarto slide deck

Try all three!

Also try removing the `_brand.yml` file (or renaming it) to see each format/output without any styling.
(Spoiler alert: they're not bad but they're not the same.)


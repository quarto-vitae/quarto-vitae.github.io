![Quarto Vitae hex logo](images/vitae-hex.svg)

# Quarto Vitae

Quarto extensions for writing CVs and résumés.

Populate your CV with entries drawn from a spreadsheet, script, or database.

[Browse templates](templates.llms.md)

[Writing a CV](using-templates.llms.md)

[Already using vitae with R Markdown? Migrate to Quarto vitae →](migration.llms.md)

Fundamentals

## Data-driven CVs

CV entries are rows from a data source: a data frame, a CSV file, or a bibliography.

Store all your expertise and experiences in data, then filter down to what’s relevant for each job.

**From your data**

## ![](data:image/svg+xml;base64,PHN2ZyBjbGFzcz0ibGFuZy1pY29uIiB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgYXJpYS1oaWRkZW49InRydWUiPjxwYXRoIGQ9Ik0xMiAyLjc0NmMtNi42MjcgMC0xMiAzLjU5OS0xMiA4LjAzNyAwIDMuODk3IDQuMTQ0IDcuMTQ0IDkuNjQgNy44OFYxNi4yNmMtMi45MjQtLjkxNS00LjkyNS0yLjc1NS00LjkyNS00Ljg3NyAwLTMuMDM1IDQuMDg0LTUuNDk0IDkuMTItNS40OTQgNS4wMzggMCA4Ljc1NyAxLjY4MyA4Ljc1NyA1LjQ5NCAwIDEuOTc2LS45OTkgMy4zNzktMi42NjIgNC4yNzIuMDkuMDY2LjE3NC4xMjguMjU4LjIxNi4xNjkuMTQ5LjI1LjM2My4zNzIuNTQ0IDIuMTI4LTEuNDUgMy40NC0zLjQzNyAzLjQ0LTUuNjMxIDAtNC40NC01LjM3My04LjAzOC0xMi04LjAzOHptLTIuMTExIDQuOTl2MTMuNTE2bDQuMDkzLS4wMDItLjAwMi01LjI5MWgxLjFjLjIyNSAwIC4zMjEuMDY2LjU0OS4yNS4yNzIuMjIuNzE1Ljk4Mi43MTUuOTgybDIuMTY0IDQuMDYzIDQuNjI3LS4wMDItMi44NjQtNC44MjZzLS4wODYtLjE5My0uMjY1LS4zODNhMi4yMiAyLjIyIDAgMDAtLjU4Mi0uNDE2Yy0uNDIyLS4yMTQtMS4xNDktLjQzNC0xLjE0OS0uNDM0czMuNTc4LS4yNjQgMy41NzgtMy44MjZjMC0zLjU2Mi0zLjc0NC0zLjYzLTMuNzQ0LTMuNjN6bTQuMTI3IDIuOTNsMi40NzguMDAyczEuMTQ5LS4wNjIgMS4xNDkgMS4xMjdjMCAxLjE2NS0xLjE0OSAxLjE3LTEuMTQ5IDEuMTdoLTIuNDc4em0xLjc1NCA2LjExOWMtLjQ5NC4wNDktMS4wMTIuMDc5LTEuNTQuMDg4djEuODA3YTE2LjYyMiAxNi42MjIgMCAwMDIuMzctLjQ3M2wtLjQ3MS0uODkxcy0uMTA4LS4xODMtLjI0OC0uMzk0Yy0uMDM5LS4wNTQtLjA4LS4wOTgtLjExMS0uMTM3eiIgLz48L3N2Zz4=) R

```` markdown
```{r}
#| echo: false
#| vitae: {style: detailed}
data.frame(
  what = "Ph.D. in Physics",
  with = "University of Paris",
  when = "1891-1895",
  why  = "Discovered polonium and radium"
)
```
````

## ![](data:image/svg+xml;base64,PHN2ZyBjbGFzcz0ibGFuZy1pY29uIiB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgYXJpYS1oaWRkZW49InRydWUiPjxwYXRoIGQ9Ik0xNC4yNS4xOGwuOS4yLjczLjI2LjU5LjMuNDUuMzIuMzQuMzQuMjUuMzQuMTYuMzMuMS4zLjA0LjI2LjAyLjItLjAxLjEzVjguNWwtLjA1LjYzLS4xMy41NS0uMjEuNDYtLjI2LjM4LS4zLjMxLS4zMy4yNS0uMzUuMTktLjM1LjE0LS4zMy4xLS4zLjA3LS4yNi4wNC0uMjEuMDJIOC43N2wtLjY5LjA1LS41OS4xNC0uNS4yMi0uNDEuMjctLjMzLjMyLS4yNy4zNS0uMi4zNi0uMTUuMzctLjEuMzUtLjA3LjMyLS4wNC4yNy0uMDIuMjF2My4wNkgzLjE3bC0uMjEtLjAzLS4yOC0uMDctLjMyLS4xMi0uMzUtLjE4LS4zNi0uMjYtLjM2LS4zNi0uMzUtLjQ2LS4zMi0uNTktLjI4LS43My0uMjEtLjg4LS4xNC0xLjA1LS4wNS0xLjIzLjA2LTEuMjIuMTYtMS4wNC4yNC0uODcuMzItLjcxLjM2LS41Ny40LS40NC40Mi0uMzMuNDItLjI0LjQtLjE2LjM2LS4xLjMyLS4wNS4yNC0uMDFoLjE2bC4wNi4wMWg4LjE2di0uODNINi4xOGwtLjAxLTIuNzUtLjAyLS4zNy4wNS0uMzQuMTEtLjMxLjE3LS4yOC4yNS0uMjYuMzEtLjIzLjM4LS4yLjQ0LS4xOC41MS0uMTUuNTgtLjEyLjY0LS4xLjcxLS4wNi43Ny0uMDQuODQtLjAyIDEuMjcuMDV6bS02LjMgMS45OGwtLjIzLjMzLS4wOC40MS4wOC40MS4yMy4zNC4zMy4yMi40MS4wOS40MS0uMDkuMzMtLjIyLjIzLS4zNC4wOC0uNDEtLjA4LS40MS0uMjMtLjMzLS4zMy0uMjItLjQxLS4wOS0uNDEuMDl6bTEzLjA5IDMuOTVsLjI4LjA2LjMyLjEyLjM1LjE4LjM2LjI3LjM2LjM1LjM1LjQ3LjMyLjU5LjI4LjczLjIxLjg4LjE0IDEuMDQuMDUgMS4yMy0uMDYgMS4yMy0uMTYgMS4wNC0uMjQuODYtLjMyLjcxLS4zNi41Ny0uNC40NS0uNDIuMzMtLjQyLjI0LS40LjE2LS4zNi4wOS0uMzIuMDUtLjI0LjAyLS4xNi0uMDFoLTguMjJ2LjgyaDUuODRsLjAxIDIuNzYuMDIuMzYtLjA1LjM0LS4xMS4zMS0uMTcuMjktLjI1LjI1LS4zMS4yNC0uMzguMi0uNDQuMTctLjUxLjE1LS41OC4xMy0uNjQuMDktLjcxLjA3LS43Ny4wNC0uODQuMDEtMS4yNy0uMDQtMS4wNy0uMTQtLjktLjItLjczLS4yNS0uNTktLjMtLjQ1LS4zMy0uMzQtLjM0LS4yNS0uMzQtLjE2LS4zMy0uMS0uMy0uMDQtLjI1LS4wMi0uMi4wMS0uMTN2LTUuMzRsLjA1LS42NC4xMy0uNTQuMjEtLjQ2LjI2LS4zOC4zLS4zMi4zMy0uMjQuMzUtLjIuMzUtLjE0LjMzLS4xLjMtLjA2LjI2LS4wNC4yMS0uMDIuMTMtLjAxaDUuODRsLjY5LS4wNS41OS0uMTQuNS0uMjEuNDEtLjI4LjMzLS4zMi4yNy0uMzUuMi0uMzYuMTUtLjM2LjEtLjM1LjA3LS4zMi4wNC0uMjguMDItLjIxVjYuMDdoMi4wOWwuMTQuMDF6bS02LjQ3IDE0LjI1bC0uMjMuMzMtLjA4LjQxLjA4LjQxLjIzLjMzLjMzLjIzLjQxLjA4LjQxLS4wOC4zMy0uMjMuMjMtLjMzLjA4LS40MS0uMDgtLjQxLS4yMy0uMzMtLjMzLS4yMy0uNDEtLjA4LS40MS4wOHoiIC8+PC9zdmc+) Python

```` markdown
```{python}
#| echo: false
#| vitae: {style: detailed}
import pandas as pd
pd.DataFrame({
    "what": ["Ph.D. in Physics"],
    "with": ["University of Paris"],
    "when": ["1891-1895"],
    "why":  ["Discovered polonium and radium"],
})
```
````

## ![](data:image/svg+xml;base64,PHN2ZyBjbGFzcz0ibGFuZy1pY29uIiB2aWV3Ym94PSIwIDAgMjQgMjQiIGZpbGw9ImN1cnJlbnRDb2xvciIgYXJpYS1oaWRkZW49InRydWUiPjxwYXRoIGQ9Ik0xMS4xMzggMTcuNTY5YTUuNTY5IDUuNTY5IDAgMSAxLTExLjEzOCAwIDUuNTY5IDUuNTY5IDAgMSAxIDExLjEzOCAwem02LjQzMS0xMS4xMzhhNS41NjkgNS41NjkgMCAxIDEtMTEuMTM4IDAgNS41NjkgNS41NjkgMCAxIDEgMTEuMTM4IDB6TTI0IDE3LjU2OWE1LjU2OSA1LjU2OSAwIDEgMS0xMS4xMzggMCA1LjU2OSA1LjU2OSAwIDEgMSAxMS4xMzggMHoiIC8+PC9zdmc+) Julia

```` markdown
```{julia}
#| echo: false
#| vitae: {style: detailed}
using DataFrames
DataFrame(
  what = "Ph.D. in Physics",
  with = "University of Paris",
  when = "1891-1895",
  why  = "Discovered polonium and radium"
)
```
````

→

Rendered

Ph.D. in Physics 1891-1895

University of Paris

- Discovered polonium and radium

A bibliography works the same way, filtered directly from a `.bib` file:

**From a bibliography**

``` markdown
::: {.entries style="bibliography" file="pubs.bib"}
:::
```

→

Rendered

Curie, M., & Curie, P. (1898). On a new, strongly radioactive substance contained in pitchblende. *Comptes Rendus*, 127, 175-178.

Contact details and profiles are front matter, written as `service: handle`. Every template reads them the same way, so switching designs never touches them.

**Share your socials**

``` yaml
social:
  - email: marie.curie@example.org
  - github: mcurie
  - mastodon: "@mcurie@fosstodon.org"
  - orcid: 0000-0001-2345-6789
```

→

Rendered

✉ marie.curie@example.org  ·  github.com/mcurie  ·  @mcurie@fosstodon.org  ·  0000-0001-2345-6789

[Learn how to write a CV with vitae →](using-templates.llms.md)

Templates

## Pick a design and start writing

[![Awesome CV preview](https://raw.githubusercontent.com/quarto-vitae/awesomecv/main/preview/coverletter.png)](https://github.com/quarto-vitae/awesomecv)

#### [Awesome CV](https://github.com/quarto-vitae/awesomecv)

A Quarto vitae template for Awesome-CV

[![Hyndman CV preview](https://raw.githubusercontent.com/quarto-vitae/hyndman/main/preview/hyndmancv.png)](https://github.com/quarto-vitae/hyndman)

#### [Hyndman CV](https://github.com/quarto-vitae/hyndman)

A Quarto vitae template created and used by Rob Hyndman

[![latexcv preview](https://raw.githubusercontent.com/quarto-vitae/latexcv/main/preview/classic.png)](https://github.com/quarto-vitae/latexcv)

#### [latexcv](https://github.com/quarto-vitae/latexcv)

A Quarto vitae template for latexcv

[Browse all templates →](templates.llms.md)

[Create your own template →](creating-templates.llms.md)

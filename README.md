
<!-- README.md is generated from README.Rmd. Please edit this file -->

# surveydown

> Note: This site only documents the {surveydown} R package - visit our
> main site at [surveydown.org](https://surveydown.org) for more
> information!

**surveydown** is a flexible, open-source platform for making surveys
with [R](https://www.r-project.org/), [Quarto](https://quarto.org/),
[Shiny](https://shiny.posit.co/), and [Supabase](https://supabase.com/).

<br>

<div align="center">

<img src='man/figures/technologies.png' width="550px" alt="image showing the three technologies used in the surveydown platform along with their logos: quarto (for designing surveys), shiny (for rendering the survey), and supabase (for storing data)"/>

</div>

<br>

The basic concept is:

1.  Design your survey as a [Quarto](https://quarto.org/) document using
    markdown and R code.
2.  Convert your survey into a [Shiny](https://shiny.posit.co/) app that
    can be hosted online and sent to respondents.
3.  Store your survey responses in a [Supabase](https://supabase.com/)
    database (or any Postgres database).

The {surveydown} R package provides functions to bring this all
together.

**See the [documentation](https://surveydown.org) to get started making
your own surveydown survey!**

# Installation

### Install R & Quarto

- [R](https://CRAN.R-project.org/)
- [Quarto](https://quarto.org/)

We also recommend working with an IDE that has good support for R,
Quarto, and Shiny.
[RStudio](https://posit.co/products/open-source/rstudio/) is great, and
we also like [VSCode](https://code.visualstudio.com/) and
[Positron](https://github.com/posit-dev/positron).

### Install the {surveydown} R package

The {surveydown} R package is not yet on CRAN, but you can install the
development version from GitHub with the following command in your R
console:

``` r
# install.packages("pak")
pak::pak('surveydown-dev/surveydown')
```

You can also check which version you have installed:

``` r
surveydown::sd_version()
```

# Background & Motivation

Most survey platforms (e.g., Google forms, Qualtrics, etc.) use
drag-and-drop interfaces to design surveys, making version control and
collaboration with others difficult. They’re also not reproducible
(others cannot easily reproduce a survey made on these platforms), and
many require a paid subscription or license to use.

The surveydown package was designed to address these problems. As an
open-source, markdown-based platform, all survey content is defined with
plain text (markdown and R code) in a `survey.qmd` file and an `app.R`
file that renders your survey into a Shiny app that can be hosted
online. This makes your survey easy to reproduce, share, and version
control with common tools like Git. The survey data collected is also
owned by the survey designer in a separate Postgres database (we
recommend Supabase as a free and open-source database provider).

If you’re curious where this whole idea came from, check out this [blog
post](https://www.jhelvy.com/blog/2023-04-06-markdown-surveys/), which
outlines more on the general idea and the motivation for it. The post is
now outdated in terms of the overall package design, but it provides
something of an origin story and some of the motivation for developing
this project.

# TODO List

This is a running list of things we’re working on / have already added
to the project:

- [x] show_if (conditionally display question)
- [x] skip_if (conditionally skip to page)
- [x] Set defaults for questions to not have any choices selected on
  launch.
- [x] Ability to embed markdown inside choice options (like mc buttons
  in formr)
- [x] Option for `ignore = TRUE` setting (database connection is
  ignored)
- [x] Automatically include timestamps on each page and question
  interaction in the data
- [x] Option to start at a designated page,
  e.g. `start_page = 'page_name'`
- [ ] A `show_all_pages = TRUE` argument to show all the pages and
  hidden questions when launched (e.g. to be able to print out the
  entire survey text). Could also be a `sd_print_survey()` function to
  print it to pdf.
- [x] Set up SCSS to be compatible with Quarto-supported bootstrap
  themes.
- [x] Include an optional progress bar.
- [x] Include input checks for `skip_if` and `show_if` (`question_id`
  exists, and data frame names are correct)
- [x] Required questions: post a popup if a question is required before
  allowing next button.
- [x] Add a `sd_get_data()` function so the survey designer can obtain
  the current survey results from inside the app:
  <https://shinysurveys.jdtrat.com/articles/get-survey-data.html>
- [x] Ability to pass url parameters, e.g. for tracking users.
- [x] Ability to redirect users to another url.
- [ ] Admin page w/password to preview / download data (see
  <https://github.com/daattali/shinyforms>)
- [ ] Form validation: Make sure the user inputs the correct type
  depending on the question type. (see
  <https://shiny.posit.co/r/reference/shiny/0.14/validate.html>)
- [ ] Leverage cookies so users who close the browser can start back
  where they left off.
- Question types:
  - [x] Multiple choice (single choice)
  - [x] Multiple choice (multiple choices)
  - [x] Select
  - [x] Text
  - [x] Numeric
  - [x] Multiple choice (button…like formr mc_button)
  - [x] Text area
  - [x] Date
  - [x] Slider
  - [x] Matrix
  - [ ] Best worst

Resources / other related examples:

- [shinysurveys](https://github.com/jdtrat/shinysurveys)
- [shinyforms](https://github.com/daattali/shinyforms)

## [License Information](https://github.com/surveydown-dev/surveydown/blob/master/LICENSE.md)

## Citation Information

If you use this package for in a publication, please cite it! You can
get the citation by typing `citation("surveydown")` into R:

``` r
citation("surveydown")
```

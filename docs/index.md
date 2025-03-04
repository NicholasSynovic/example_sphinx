# Hello World

> Template repository for getting started with and deploying a MkDocs project

## About

This repository demonstrates how to create a static site using
[MkDocs](https://www.mkdocs.org/). This repository does not demonstrate how to
convert API docstrings into API documentation.

In addition to writing static site content, this repository contains
[pre-commit](https://pre-commit.com/) hooks, config files, a simple "Hello
World" website, Makefile directives to build the site into HTML files, and a
GitHub Action workflow to deploy the site onto GitHub pages. All dependencies
are listed in the `pyproject.toml` file in the root of the directory.

## How To Develop

Assuming that you have cloned the repository:

`make create-dev`

This will create a Python virtual environment, install
[Poetry](https://python-poetry.org/) into it, and download dependencies managed
by Poetry.

### Config Files

The following config files can be found in the root of the directory:

- `pyproject.toml`: Poetry project config file
- `mkdocs.yml`: MkDocs config file
- `.markdownlint.json`:
  [Markdown Lint](https://github.com/DavidAnson/markdownlint) config file
- `.mdformat.toml`: [MD Format](https://github.com/hukkin/mdformat) config file
- `.pre-commit-config.json`: pre-commit config file config file

## How To Build

- `make build-html` to build the HTML version of the site, or

### HTML

The HTML content of the site is stored in the root level `html` directory.

## How To Deploy

`make deploy-gh` will commit the current project root-level `html` directory to
the root of a `gh-pages` branch.

Once executed, in your GitHub project, confgure GitHub Pages to read from the
root of the gh-pages branch.

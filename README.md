# 🥪 The Jaffle Shop 🦘

This is a template for creating a fully functional dbt project for teaching, learning, writing, demoing, or any other scenarios where you need a basic project with a synthesized jaffle shop business.

## How to use

### 1. Click the big green 'Use this template' button and 'Create a new repository'.

![Click use template](.github/static/use-template.gif)

This will create a new repository exactly like this one, and navigate you there. Make sure to execute the next instructions in that repo.

### 2. Click 'Code', then 'Codespaces, then 'Create codespace on main'.

![Create codespace on main](.github/static/open-codespace.gif)

This will create a new `codespace`, a sandboxed devcontainer with everything you need for a dbt project. Once the codespace is finished setting up, you'll be ready to run a `dbt build`.

### 3. Make sure to wait til the codespace is finished setting up.

![Codespaces setup screen at postCreateCommand](.github/static/codespaces-setup-screen.png)

After the container is built and connected to, VSCode will run a few clean up commands and then a `postCreateCommand`, a set of commands run after the container is set up. This is where we install our dependencies, such as dbt, the duckdb adapter, and other necessities, as well as run `dbt deps` to install the dbt packages we want to use. That screen will look something like the above, when its completed it will close and leave you in a fresh terminal prompt. From there you're ready to do some analytics engineering!

## Contributing

We welcome issues and PRs requesting or adding new features. The package that generates the synthetic data, [`jafgen`](https://pypi.org/project/jafgen/), is also under active development, and will add more types of source data to model as we go along. If you have tests, descriptions, new models, metrics, materializations types, or techniques you use this repo to demonstrate, which you feel would make for a more expansive baseline experience, we encourage you to consider contributing them back in so that this project becomes an even better collective tool for exploring and learning dbt over time.

## Anything else?

That's it! We jaff'd, we cried, we learned about life. If you have any questions or see missing documentation, that's also super helpful to contribute back in via an issue or PR.

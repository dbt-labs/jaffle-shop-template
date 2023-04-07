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

## Additional included tools

This template includes two additional tools for the other parts of the stack to create a more realistic experience:

- BI reporting built with [Evidence](https://evidence.dev) - an open source, code-based BI tool to write reports with markdown and SQL. 
- EL with [Meltano](https://meltano.com/) - an open source tool that provides a CLI & version control for ELT pipelines.

### Evidence 

With Evidence you can:
- Version control your BI layer
- Build reports in the same repo as your dbt project
- Deploy your reports to a static site

#### Running Evidence

To run Evidence, use:

```shell
cd reports
npm run dev
```

See the [Evidence CLI docs](https://docs.evidence.dev/cli) for more details.

You can make changes to the markdown pages in the `reports/pages` folder and see the reports update in the browser preview.

#### Learning More about Evidence

- [Getting Started Walkthrough](https://docs.evidence.dev/getting-started/install-evidence)
- [Project Home Page](https://www.evidence.dev)
- [Github](https://github.com/evidence-dev/evidence)
- [Evidence.dev Releases](https://github.com/evidence-dev/evidence/releases)


### Meltano

This project is preconfigured with Meltano, which can be used to extract and load raw data into DuckDB.

#### Run EL (Extract and Load) using Meltano

```console
meltano run tap-jaffle-shop target-duckdb
```

Optionally, you can modify extract parameters using environment variables. For instance, this modified version will extract five years of data instead of the default 1 year.

```console
TAP_JAFFLE_SHOP_YEARS=5
meltano run tap-jaffle-shop target-duckdb
```

You can also modify any tap or target config with the interactive `config` command:

```console
meltano config tap-jaffle-shop set --interactive
meltano config target-duckdb set --interactive
```

## Contributing

We welcome issues and PRs requesting or adding new features. The package that generates the synthetic data, [`jafgen`](https://pypi.org/project/jafgen/), is also under active development, and will add more types of source data to model as we go along. If you have tests, descriptions, new models, metrics, materializations types, or techniques you use this repo to demonstrate, which you feel would make for a more expansive baseline experience, we encourage you to consider contributing them back in so that this project becomes an even better collective tool for exploring and learning dbt over time.

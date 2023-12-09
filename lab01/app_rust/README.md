# Lab 1 task solution

## Overview

The application provides current time in Moscow.

## Usage

In order to build and launch the app, there are some steps:

1. Install [npm](https://docs.npmjs.com/downloading-and-installing-node-js-and-npm)
1. Install [Markdown linter](https://github.com/DavidAnson/markdownlint)

1. Install [MarkdownLinterCLI](https://github.com/igorshubovych/markdownlint-cli)

1. Install [Rust](https://www.rust-lang.org/tools/install)

1. Build a binary:

   ```bash
   cargo build --release
   ```

1. Run the binary

    ```bash
    ./target/release/app_rust
    ```

1. Request current time:

    ```bash
    > curl http://localhost:8000
    2023-09-04T21:12:23.528466+03:00
    ```

Help is also available:

```bash
> ./target/release/app_rust -h
Usage: app_rust [HOST] [PORT]

Arguments:
  [HOST]  [default: 0.0.0.0]
  [PORT]  [default: 8000]

Options:
  -h, --help     Print help
  -V, --version  Print version
```

## Docker

### Build

```bash
docker build -t ilyasiluyanov/app_rust:dev 
```

### Pull

```bash
docker build -t ilyasiluyanov/app_rust:dev 
```

### launch

```bash
docker run --rm -p 8000:8000 ilyasiluyanov/app_rust:dev
```

## Unit tests

```bash
cargo test
```

## CI/CD

For each commit there is a pipeline with:

- lint job
- Snyk vulnerability scanner
- test job
- build and push docker image job

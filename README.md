# pagila-sql
[![](https://github.com/RuiZhangg/pagila-sql/workflows/tests/badge.svg)](https://github.com/RuiZhangg/pagila-sql/actions?query=workflow%3Atests)

## Overview

This repo contains several problems and their solutions in postgresql.
It is base on [Pagila](https://github.com/devrimgunduz/pagila), a standard example database for postgresql.
The database implements a simple movie rental system like the company Blockbuster might have maintained (before Netflix killed them).
The following picture illustrates the database's structure:

<img src=dvd-rental-sample-database-diagram.png width=80% />

## Usage

Fork this repo and submodule using

```
$ git clone https://github.com/ruizhangg/pagila-sql
$ cd pagila-sql
$ git submodule init
$ git submodule update
```

Then the problems and solutions are under `sql` folder, `expected` contains the expected outputs for each problem. To run within a postgres docker container, use

```
$ docker compose up -d --build
```
Then run the the test case script with
```
$ docker compose exec pg ./run_tests.sh
```
Or enter interactive mode to test with
```
$ docker compose exec pg psql
```

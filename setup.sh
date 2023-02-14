#!/bin/bash

python -m pip install --user -r requirements.txt
cp -r sample-data jaffle-data
dbt deps
dbt seed

#!/bin/bash

python -m pip install --user -r requirements.txt
dbt deps

python -m pip install --user -r requirements.txt
mv sample-data jaffle-data
dbt deps
dbt seed
# mv jaffle-data sample-data
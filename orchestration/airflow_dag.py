from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="bigquery_batch_pipeline",
    start_date=datetime(2025, 1, 1),
    schedule_interval="@daily",
    catchup=False
) as dag:

    run_staging = BashOperator(
        task_id="run_staging_sql",
        bash_command="echo 'Run staging SQL'"
    )

    run_fact = BashOperator(
        task_id="run_fact_sql",
        bash_command="echo 'Run fact SQL'"
    )

    run_staging >> run_fact

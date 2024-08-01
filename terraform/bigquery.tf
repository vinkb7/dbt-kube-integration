resource "google_bigquery_dataset" "this" {
  dataset_id  = "dbt_data"
  description = "Dataset that contains all DBT generated tables"
  location    = "us-central1"
}

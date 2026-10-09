\# Fasal-Sathi Database



PostgreSQL database and agricultural datasets for the Fasal-Sathi project.



\## Contents



\* `datasets/soil\_data.csv` — Soil dataset

\* `datasets/crop\_history.csv` — Historical crop data

\* `datasets/rainfall\_raw.csv` — Rainfall dataset

\* `sql/01\_schema.sql` — Database schema

\* `backups/college\_db.dump` — PostgreSQL backup

\* `docker-compose.yml` — Docker configuration



\## Requirements



\* Docker Desktop

\* Docker Compose



\## Start PostgreSQL



Set a password in PowerShell before starting the container:



```powershell

$env:POSTGRES\_PASSWORD = "replace-with-your-own-strong-password"

docker compose up -d

```



The container uses host port 5433.



\## Restore the database



Copy the backup into the container:



```powershell

docker cp .\\backups\\college\_db.dump fasal-sathi-postgres:/tmp/college\_db.dump

```



Restore it:



```powershell

docker exec fasal-sathi-postgres pg\_restore -U postgres -d college\_db --clean --if-exists /tmp/college\_db.dump

```



Verify the tables:



```powershell

docker exec fasal-sathi-postgres psql -U postgres -d college\_db -c "\\dt"

```



\*\*Warning:\*\* The restore command can replace existing objects in the target database. Use it only for the intended project database.



\## Security



Never commit passwords, access tokens, or `.env` files.



\## Data sources



Document the original dataset URLs, licenses, and preprocessing steps before sharing the datasets publicly.




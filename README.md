# dbt Core Production

Projet de formation dbt avec une stack conteneurisee Docker + PostgreSQL.

## Architecture

```
Host Machine
  |
  +-- Git Repo <----> dbt Project Directory (mounted volume)
                          |
                  Docker Network
                  |             |
              dbt Container   PostgreSQL Container
              (compile SQL)   (execute SQL)
```

## Stack technique

- **dbt-core** 1.9.4 + **dbt-postgres** 1.9.4
- **PostgreSQL** 15
- **Docker Compose** pour l'orchestration

## Demarrage rapide

```bash
# Lancer la stack
docker compose up -d --build

# Verifier PostgreSQL
docker exec -it dbt_postgres psql -U dbt_user -d dbt_warehouse

# Tester la connexion dbt
docker compose run --rm dbt debug --project-dir dbt_project

# Executer les modeles
docker compose run --rm dbt run --project-dir dbt_project
```

## Structure du projet

```
dbt-core-production/
  docker-compose.yml
  Dockerfile
  dbt_project/
    dbt_project.yml
    models/
      staging/       # Normalisation des sources
      intermediate/  # Logique metier
      marts/         # Tables finales
    macros/          # Fonctions Jinja reutilisables
    seeds/           # Donnees CSV statiques
    snapshots/       # Suivi historique
    tests/           # Assertions SQL
    .dbt/
      profiles.yml   # Configuration des environnements
```

## Modules de formation

| Phase | Modules |
|-------|---------|
| 1 - Setup | Docker, Config, Git |
| 2 - Modelisation | Structure, DAG, Materialization, Jinja, Sources |
| 3 - Tests | Schema tests, CI |
| 4 - Documentation | YAML specs, Lineage |
| 5 - Performance | Incremental, PostgreSQL |
| 6 - Production | Dev vs Prod, Packaging |

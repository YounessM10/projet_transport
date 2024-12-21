# GROUPE 7 : MOSTEFAOUI Youness, HACHANI Wail, CONDUCHE Thomas, GHANDRICHE Yani

# Explication de l'ETL

Le processus ETL (Extract, Transform, Load) mis en place permet d'intégrer plusieurs sources de données (qualité de l'air, entreprises, population, transports, déplacements) dans une base PostgreSQL et d'en générer des fichiers CSV pour des analyses futures.

## Extraction des données

Les fichiers sont extraits depuis un Data Lake local en utilisant `pandas.read_csv` avec des paramètres adaptés pour chaque jeu de données (sélection des colonnes pertinentes, gestion des encodages).

## Transformation des données

Les données sont nettoyées et préparées pour l'intégration dans la base :

- **Suppression des valeurs manquantes** sur les colonnes critiques (par exemple, code postal, valeurs mesurées).
- **Agrégations** sont effectuées (moyennes, min, max) sur des dimensions comme le NO2, les entreprises ou les déplacements.
- Des **calculs supplémentaires** sont réalisés, comme le NO2 par habitant ou les émissions de CO2 par kilomètre.

## Chargement des données

Les données nettoyées et agrégées sont chargées dans une base PostgreSQL via SQLAlchemy pour une centralisation et une analyse via SQL. En parallèle, des fichiers CSV sont exportés pour une utilisation externe.

# Mise en place de l'ETL

1. Créer une base de données nommée `transport` :

   ```sql
   CREATE DATABASE transport;
   ```

2. Exécuter les requêtes SQL sur l'environnement PSQL pour créer toutes les tables nécessaires.

3. Lancer le processus ETL pour exporter les fichiers au format CSV et alimenter la base de données PostgreSQL.

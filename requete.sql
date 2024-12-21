DROP TABLE IF EXISTS dim_air_no2;
DROP TABLE IF EXISTS dim_entreprise;
DROP TABLE IF EXISTS dim_population;
DROP TABLE IF EXISTS dim_transport;
DROP TABLE IF EXISTS dim_deplacement;
DROP TABLE IF EXISTS dim_fact_table;

-- Table dim_air_no2
CREATE TABLE dim_air_no2 (
    "Date de début" DATE,
    "Date de fin" DATE,
    "code site" VARCHAR,
    "nom site" VARCHAR,
    "valeur" FLOAT,
    "valeur brute" FLOAT,
    "taux de saisie" FLOAT,
    "couverture de données" FLOAT,
    "code qualité" VARCHAR,
    "validité" FLOAT,
    "Latitude" FLOAT,
    "Longitude" FLOAT,
    "code postal" INTEGER
);

-- Table dim_entreprise
CREATE TABLE dim_entreprise (
    "Département" VARCHAR,
    "Nom commune" VARCHAR,
    "code postal" INTEGER,
    "Grand secteur d'activité" VARCHAR,
    "APE" VARCHAR,
    "Code région" FLOAT,
    "Code département" FLOAT,
    "Nombre d'établissements 2024" FLOAT,
    "Effectifs salariés 2024" INTEGER
);

-- Table dim_population
CREATE TABLE dim_population (
    "code postal" INTEGER,
    "libgeo" VARCHAR,
    "p24_pop" INTEGER
);

-- Table dim_transport
CREATE TABLE dim_transport (
    "stop_name" VARCHAR,
    "stop_lon" FLOAT,
    "stop_lat" FLOAT,
    "shortName" VARCHAR,
    "mode" VARCHAR,
    "Pointgeo" VARCHAR,
    "Nom_commune" VARCHAR,
    "code postal" INTEGER
);

-- Table dim_deplacement
CREATE TABLE dim_deplacement (
    "LIEU_RESID" INTEGER,
    "LIEU_TRAV" INTEGER,
    "MODTRANS" VARCHAR,
    "DIST" FLOAT,
    "DUREE" INTEGER,
    "CHAMP_CO2" BOOLEAN,
    "DIST_HEBDO" FLOAT,
    "CARBU_HEBDO" FLOAT,
    "CO2_HEBDO" FLOAT
);

-- Table de faits (dim_fact_table)
CREATE TABLE dim_fact_table (
    "code postal" INTEGER PRIMARY KEY,
    "no2_moyenne" FLOAT,
    "no2_min" FLOAT,
    "no2_max" FLOAT,
    "nb_stops" INTEGER,
    "distance_moyenne" FLOAT,
    "co2_hebdo_moyen" FLOAT,
    "no2_par_habitant" FLOAT,
    "no2_par_salarie" FLOAT,
    "nbr_salarie_par_code_postal" INTEGER,
    "co2_par_km" FLOAT
);

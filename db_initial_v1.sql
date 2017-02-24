Ersteller: Khaled Ali

	   Nico Richter

Datum:     28.12.2016



-- Table: public."WlanMeasurements"



-- DROP TABLE public."WlanMeasurements";



CREATE TABLE public."WlanMeasurements"

(

    id bigint NOT NULL,

    latitude double precision,

    longitude double precision,

    storey smallint,

    "time" time with time zone,

    CONSTRAINT "WlanMeasurements_pkey" PRIMARY KEY (id)

)

WITH (

    OIDS = FALSE

)

TABLESPACE pg_default;



ALTER TABLE public."WlanMeasurements"

    OWNER to postgres;







-- Table: public."WlanNetworks"



-- DROP TABLE public."WlanNetworks";



CREATE TABLE public."WlanNetworks"

(

    measurement_fk bigint NOT NULL,

    bssid "char" NOT NULL,

    frequency smallint,

    ssid "char",

    strength smallint,

    CONSTRAINT "WlanNetworks_pkey" PRIMARY KEY (bssid, measurement_fk)

)

WITH (

    OIDS = FALSE

)

TABLESPACE pg_default;



ALTER TABLE public."WlanNetworks"

    OWNER to postgres;

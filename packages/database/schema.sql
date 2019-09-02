CREATE EXTENSION IF NOT EXISTS "uuid-ossp" WITH SCHEMA public;

CREATE TABLE cook_food ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_food_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE cook_group ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_group_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE cook_language ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	code                 varchar(20)  NOT NULL ,
	iso                  varchar(20)  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_language_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT code_cook_language UNIQUE ( code )
 );

CREATE TABLE cook_language_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(100)  NOT NULL ,
	lang_code            varchar(20)  NOT NULL ,
	lang_uid             uuid   ,
	CONSTRAINT pk_cook_language_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_language_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code ) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_cook_language_description_uid FOREIGN KEY ( lang_uid ) REFERENCES cook_language( uuid )  
 );

CREATE TABLE cook_unit ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_units_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE cook_unit_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	symbol               varchar(20)  NOT NULL ,
	name                 varchar(255)   ,
	lang_code            varchar(20)  NOT NULL ,
	unit_uid             uuid  NOT NULL ,
	CONSTRAINT pk_cook_unit_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_unit_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_unit_description_uid FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  
 );

CREATE TABLE cook_vitamin ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	for_value            real DEFAULT 0  ,
	recommendation       real DEFAULT 0  ,
	unit_uid             uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_vitamin_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_vitamin_cook_unit FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  ,
	CONSTRAINT fk_cook_vitamin_cook_food FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_vitamin_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	lang_code            varchar(20)  NOT NULL ,
	vitamin_uid          uuid  NOT NULL ,
	CONSTRAINT pk_cook_vitamin_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_vitamin_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_vitamin_description_uid FOREIGN KEY ( vitamin_uid ) REFERENCES cook_vitamin( uuid )  
 );

CREATE TABLE cook_cholesterol ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	for_value            real DEFAULT 0  ,
	recommendation       real DEFAULT 0  ,
	unit_uid             uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_cholesterol_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_cholesterol_cook_unit FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  ,
	CONSTRAINT fk_cook_cholesterol_cook_food FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_cholesterol_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)   ,
	lang_code            varchar(20)  NOT NULL ,
	cholesterol_uid      uuid  NOT NULL ,
	CONSTRAINT pk_cook_cholesterol_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_cholesterol_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_cholesterol_description_uid FOREIGN KEY ( cholesterol_uid ) REFERENCES cook_cholesterol( uuid )  
 );

CREATE TABLE cook_energy ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	energy               integer DEFAULT 0 NOT NULL ,
	recomendation        integer DEFAULT 0  ,
	unit_uid             uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_energy_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_energy_cook_food FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  ,
	CONSTRAINT fk_cook_energy_cook_unit FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  
 );

CREATE TABLE cook_energy_distribution ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	alcohol              integer DEFAULT 0  ,
	protein              integer DEFAULT 0  ,
	fat                  integer DEFAULT 0  ,
	cardohydrate         integer DEFAULT 0  ,
	organic_acid         integer DEFAULT 0  ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_date  ,
	CONSTRAINT pk_cook_energy_distribution_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_energy_distribution FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_fatty_acids ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	for_value            real DEFAULT 0  ,
	recomendation        real DEFAULT 0  ,
	unit_uid             uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_fatty_acids_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_fatty_acids_cook_unit FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  ,
	CONSTRAINT fk_cook_fatty_acids_cook_food FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_fatty_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(100)  NOT NULL ,
	lang_code            varchar(20)   ,
	fatty_uid            uuid  NOT NULL ,
	CONSTRAINT pk_table_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_fatty_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_fatty_description_uid FOREIGN KEY ( fatty_uid ) REFERENCES cook_fatty_acids( uuid )  
 );

CREATE TABLE cook_food_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	description          text   ,
	lang_code            varchar(20)  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	CONSTRAINT pk_cook_food_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_food_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_food_description_uid FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_food_group ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	group_uid            uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	CONSTRAINT pk_cook_food_group_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_food_group_cook_group FOREIGN KEY ( group_uid ) REFERENCES cook_group( uuid )  ,
	CONSTRAINT fk_cook_food_group_cook_food FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_group_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	lang_code            varchar(20)  NOT NULL ,
	group_uid            uuid   ,
	CONSTRAINT pk_cook_group_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_group_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code ) ON DELETE CASCADE ON UPDATE CASCADE,
	CONSTRAINT fk_cook_group_description_uid FOREIGN KEY ( group_uid ) REFERENCES cook_group( uuid )  
 );

CREATE TABLE cook_macro_component ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	for_value            real DEFAULT 0  ,
	recomendation        real DEFAULT 0  ,
	unit_uid             uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_macro_component_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_macro_component FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  ,
	CONSTRAINT fk_cook_macro_component_uid FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  
 );

CREATE TABLE cook_macro_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	lang_code            varchar(20)  NOT NULL ,
	macro_uid            uuid  NOT NULL ,
	CONSTRAINT pk_cook_macro_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_macro_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_macro_description_uid FOREIGN KEY ( macro_uid ) REFERENCES cook_macro_component( uuid )  
 );

CREATE TABLE cook_mineral ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	for_value            real DEFAULT 0  ,
	recommendation       real DEFAULT 0  ,
	food_uid             uuid  NOT NULL ,
	unit_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_mineral_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_mineral_cook_food FOREIGN KEY ( food_uid ) REFERENCES cook_food( uuid )  ,
	CONSTRAINT fk_cook_mineral_cook_unit FOREIGN KEY ( unit_uid ) REFERENCES cook_unit( uuid )  
 );

CREATE TABLE cook_mineral_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)   ,
	lang_code            varchar(20)   ,
	mineral_uid          uuid  NOT NULL ,
	CONSTRAINT pk_cook_mineral_description_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT fk_cook_mineral_description_lang FOREIGN KEY ( lang_code ) REFERENCES cook_language( code )  ,
	CONSTRAINT fk_cook_mineral_description_uid FOREIGN KEY ( mineral_uid ) REFERENCES cook_mineral( uuid )  
 );


CREATE SCHEMA "public";

CREATE TABLE "public".cook_component ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_component_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_food ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	CONSTRAINT pk_cook_food_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_group ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	CONSTRAINT pk_cook_group_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_language ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	code                 varchar(20)  NOT NULL ,
	iso                  varchar(20)  NOT NULL ,
	created_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	CONSTRAINT pk_cook_language_uuid PRIMARY KEY ( uuid ),
	CONSTRAINT code_cook_language UNIQUE ( code ASC ) 
 );

CREATE TABLE "public".cook_language_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(100)  NOT NULL ,
	lang_code            varchar(20)  NOT NULL ,
	lang_uid             uuid   ,
	CONSTRAINT pk_cook_language_description_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_unit ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	created_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	updated_at           timestamptz DEFAULT CURRENT_TIMESTAMP  ,
	CONSTRAINT pk_cook_units_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_unit_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	symbol               varchar(20)  NOT NULL ,
	name                 varchar(255)   ,
	lang_code            varchar(20)  NOT NULL ,
	unit_uid             uuid  NOT NULL ,
	CONSTRAINT pk_cook_unit_description_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_component_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	lang_code            varchar(10)  NOT NULL ,
	component_uid        uuid  NOT NULL ,
	CONSTRAINT pk_cook_component_description_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_food_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	description          text   ,
	lang_code            varchar(20)  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	CONSTRAINT pk_cook_food_description_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_food_group ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	group_uid            uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	CONSTRAINT pk_cook_food_group_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_grid ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	value_of             real DEFAULT 0  ,
	recommend_value      real DEFAULT 0  ,
	component_uid        uuid  NOT NULL ,
	unit_uid             uuid  NOT NULL ,
	food_uid             uuid  NOT NULL ,
	created_at           timestamptz DEFAULT current_timestamp  ,
	updated_at           timestamptz DEFAULT current_timestamp  ,
	CONSTRAINT pk_cook_grid_uuid PRIMARY KEY ( uuid )
 );

CREATE TABLE "public".cook_group_description ( 
	uuid                 uuid DEFAULT uuid_generate_v4() NOT NULL ,
	name                 varchar(255)  NOT NULL ,
	lang_code            varchar(20)  NOT NULL ,
	group_uid            uuid   ,
	CONSTRAINT pk_cook_group_description_uuid PRIMARY KEY ( uuid )
 );

ALTER TABLE "public".cook_component_description ADD CONSTRAINT fk_cook_component_description_lang FOREIGN KEY ( lang_code ) REFERENCES "public".cook_language( code );

ALTER TABLE "public".cook_component_description ADD CONSTRAINT fk_cook_component_description_uid FOREIGN KEY ( component_uid ) REFERENCES "public".cook_component( uuid );

ALTER TABLE "public".cook_food_description ADD CONSTRAINT fk_cook_food_description_uid FOREIGN KEY ( food_uid ) REFERENCES "public".cook_food( uuid );

ALTER TABLE "public".cook_food_description ADD CONSTRAINT fk_cook_food_description_lang FOREIGN KEY ( lang_code ) REFERENCES "public".cook_language( code );

ALTER TABLE "public".cook_food_group ADD CONSTRAINT fk_cook_food_group_cook_food FOREIGN KEY ( food_uid ) REFERENCES "public".cook_food( uuid );

ALTER TABLE "public".cook_food_group ADD CONSTRAINT fk_cook_food_group_cook_group FOREIGN KEY ( group_uid ) REFERENCES "public".cook_group( uuid );

ALTER TABLE "public".cook_grid ADD CONSTRAINT fk_cook_grid_cook_component FOREIGN KEY ( component_uid ) REFERENCES "public".cook_component( uuid );

ALTER TABLE "public".cook_grid ADD CONSTRAINT fk_cook_grid_cook_food FOREIGN KEY ( food_uid ) REFERENCES "public".cook_food( uuid );

ALTER TABLE "public".cook_grid ADD CONSTRAINT fk_cook_grid_cook_unit FOREIGN KEY ( unit_uid ) REFERENCES "public".cook_unit( uuid );

ALTER TABLE "public".cook_group_description ADD CONSTRAINT fk_cook_group_description_uid FOREIGN KEY ( group_uid ) REFERENCES "public".cook_group( uuid );

ALTER TABLE "public".cook_group_description ADD CONSTRAINT fk_cook_group_description_lang FOREIGN KEY ( lang_code ) REFERENCES "public".cook_language( code ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "public".cook_language_description ADD CONSTRAINT fk_cook_language_description_lang FOREIGN KEY ( lang_code ) REFERENCES "public".cook_language( code ) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE "public".cook_language_description ADD CONSTRAINT fk_cook_language_description_uid FOREIGN KEY ( lang_uid ) REFERENCES "public".cook_language( uuid );

ALTER TABLE "public".cook_unit_description ADD CONSTRAINT fk_cook_unit_description_lang FOREIGN KEY ( lang_code ) REFERENCES "public".cook_language( code );

ALTER TABLE "public".cook_unit_description ADD CONSTRAINT fk_cook_unit_description_uid FOREIGN KEY ( unit_uid ) REFERENCES "public".cook_unit( uuid );

TRUNCATE TABLE public.cook_cholesterol RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_cholesterol_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_energy RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_energy_distribution RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_fatty_acids RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_fatty_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_food RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_food_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_food_group RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_group RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_group_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_language RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_language_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_macro_component RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_macro_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_mineral RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_mineral_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_unit RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_unit_description RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_vitamin RESTART IDENTITY CASCADE;
TRUNCATE TABLE public.cook_vitamin_description RESTART IDENTITY CASCADE;

INSERT INTO public.cook_language (uuid, code, iso, created_at, updated_at)
VALUES ('613022a3-aec6-4ff0-9ecb-9b019de87e6b', 'pt', 'pt', '2019-08-23 23:44:32.289733', '2019-08-23 23:44:32.289733');
INSERT INTO public.cook_language (uuid, code, iso, created_at, updated_at)
VALUES ('3119edf4-4a69-456f-baea-42f49612e2bf',
        'pt-PT',
        'pt-PT',
        '2019-08-23 23:45:09.568285',
        '2019-08-23 23:45:09.568285');
INSERT INTO public.cook_language (uuid, code, iso, created_at, updated_at)
VALUES ('9a8d58b0-aa71-443c-a462-69262a9f74d4', 'en', 'en', '2019-08-23 23:45:23.847949', '2019-08-23 23:45:23.847949');
INSERT INTO public.cook_language (uuid, code, iso, created_at, updated_at)
VALUES ('5f27a720-7d12-4e14-bc44-a05775811c03',
        'en-GB',
        'en-GB',
        '2019-08-23 23:45:41.637331',
        '2019-08-23 23:45:41.637331');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('dbb54d42-1ad1-4c70-8952-b74c79910813', 'Português', 'pt', '613022a3-aec6-4ff0-9ecb-9b019de87e6b');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('97c50d38-531b-42a7-8ee2-13be40809127', 'Português', 'pt-PT', '3119edf4-4a69-456f-baea-42f49612e2bf');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('68682611-2c58-4f8b-9eec-bf73ed6e3ee3', 'Portuguese', 'en', '9a8d58b0-aa71-443c-a462-69262a9f74d4');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('b43730c9-f8cc-4221-9e0a-729d95806a3c', 'Portuguese', 'en-GB', '5f27a720-7d12-4e14-bc44-a05775811c03');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('090878a8-0ebb-4ae4-b7d9-a4eb656d942e', 'English', 'en', '9a8d58b0-aa71-443c-a462-69262a9f74d4');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('ce60dcd3-c836-406c-9290-4da2a5bb0f2e', 'English', 'en-GB', '5f27a720-7d12-4e14-bc44-a05775811c03');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('c3407d10-f5c2-4aac-897f-ce6f1df77360', 'Inglês', 'pt', '613022a3-aec6-4ff0-9ecb-9b019de87e6b');
INSERT INTO public.cook_language_description (uuid, name, lang_code, lang_uid)
VALUES ('37f80458-bef2-4952-bec2-b2f3bc31f38b', 'Inglês', 'pt-PT', '3119edf4-4a69-456f-baea-42f49612e2bf');

INSERT INTO public.cook_food (uuid, created_at, updated_at)
VALUES ('b802e23b-8a4e-4f56-8766-081d1007085d', '2019-08-23 23:57:53.073093', '2019-08-23 23:57:53.073093');
INSERT INTO public.cook_food_description (uuid, name, description, lang_code, food_uid)
VALUES ('e6237b52-26fd-4bd5-98cc-a1318091d490', 'Abacate', '', 'pt-PT', 'b802e23b-8a4e-4f56-8766-081d1007085d');
INSERT INTO public.cook_group (uuid, created_at, updated_at)
VALUES ('dd55f186-55a3-4ceb-a6c8-25e8ecdcddcf', '2019-08-24 11:31:36.353634', '2019-08-24 11:31:36.353634');
INSERT INTO public.cook_group_description (uuid, name, lang_code, group_uid)
VALUES ('fc149f05-2e14-4a34-93e1-db44b6a55497', 'Frutos e Derivados', 'pt-PT', 'dd55f186-55a3-4ceb-a6c8-25e8ecdcddcf');
INSERT INTO public.cook_food_group (uuid, group_uid, food_uid)
VALUES ('a4da5746-6bdc-4ffd-8341-ee2880d0e0c9',
        'dd55f186-55a3-4ceb-a6c8-25e8ecdcddcf',
        'b802e23b-8a4e-4f56-8766-081d1007085d');

INSERT INTO public.cook_unit (uuid, created_at, updated_at)
VALUES ('443f0f46-d54d-43fd-83bc-35f9a6b6db79', '2019-08-24 00:01:49.449762', '2019-08-24 00:01:49.449762');
INSERT INTO public.cook_unit (uuid, created_at, updated_at)
VALUES ('01d3c352-b0d3-4412-951a-10d746dc2fa5', '2019-08-24 00:03:32.604606', '2019-08-24 00:03:32.604606');
INSERT INTO public.cook_unit (uuid, created_at, updated_at)
VALUES ('f9b6a5bc-2d0d-451d-a2a7-00617b0216d6', '2019-08-24 00:04:59.978729', '2019-08-24 00:04:59.978729');
INSERT INTO public.cook_unit (uuid, created_at, updated_at)
VALUES ('b4cbe975-c47b-4501-9c75-40323439597f', '2019-08-24 00:07:25.206442', '2019-08-24 00:07:25.206442');
INSERT INTO public.cook_unit (uuid, created_at, updated_at)
VALUES ('f776f751-bc9a-4b54-a971-9de8f788e04d', '2019-08-24 00:34:56.398513', '2019-08-24 00:34:56.398513');
INSERT INTO public.cook_unit (uuid, created_at, updated_at)
VALUES ('ac15f465-7908-4ee4-97b1-403c406b8a22', '2019-08-24 10:47:38.841052', '2019-08-24 10:47:38.841052');
INSERT INTO public.cook_unit_description (uuid, symbol, name, lang_code, unit_uid)
VALUES ('bc73f60f-fec3-45dc-95bf-007153037b4d',
        'kcal',
        'Quilocaloria',
        'pt-PT',
        'f9b6a5bc-2d0d-451d-a2a7-00617b0216d6');
INSERT INTO public.cook_unit_description (uuid, symbol, name, lang_code, unit_uid)
VALUES ('aa6a00c4-f2cf-4512-b30d-f3210fe40565', 'kJ', 'QuiloJoule', 'pt-PT', 'b4cbe975-c47b-4501-9c75-40323439597f');
INSERT INTO public.cook_unit_description (uuid, symbol, name, lang_code, unit_uid)
VALUES ('725eacf1-0e23-4efb-a1ea-7b4b3baf58b7', 'µg', 'Micrograma', 'pt-PT', 'ac15f465-7908-4ee4-97b1-403c406b8a22');
INSERT INTO public.cook_unit_description (uuid, symbol, name, lang_code, unit_uid)
VALUES ('c5504fa8-0beb-43bb-a34f-fc7dae452413', 'mg', 'Miligrama', 'pt-PT', 'f776f751-bc9a-4b54-a971-9de8f788e04d');
INSERT INTO public.cook_unit_description (uuid, symbol, name, lang_code, unit_uid)
VALUES ('9b6e7219-476a-42fc-8a59-908a59a41a32', 'kg', 'Quilograma', 'pt-PT', '01d3c352-b0d3-4412-951a-10d746dc2fa5');
INSERT INTO public.cook_unit_description (uuid, symbol, name, lang_code, unit_uid)
VALUES ('a50780d4-5744-41ba-9ce8-f08a3515dedb', 'gr', 'Grama', 'pt-PT', '443f0f46-d54d-43fd-83bc-35f9a6b6db79');

INSERT INTO public.cook_cholesterol (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('a575320a-3886-41b8-a70c-75c85634c88c',
        0,
        0,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:01:10.181255',
        '2019-08-24 11:01:10.181255');
INSERT INTO public.cook_cholesterol_description (uuid, name, lang_code, cholesterol_uid)
VALUES ('64632946-b0eb-494a-9ff2-49e4db0c451b', 'Colesterol', 'pt-PT', 'a575320a-3886-41b8-a70c-75c85634c88c');
INSERT INTO public.cook_energy (uuid, energy, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('b9b0e79b-f7fc-4f3d-8ecd-122bcb389cfc',
        108,
        173,
        'f9b6a5bc-2d0d-451d-a2a7-00617b0216d6',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:10:48.732070',
        '2019-08-24 00:10:48.732070');
INSERT INTO public.cook_energy (uuid, energy, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('7410e94f-05b6-4bde-9846-01af9f889309',
        450,
        720,
        'b4cbe975-c47b-4501-9c75-40323439597f',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:11:59.071775',
        '2019-08-24 00:11:59.071775');
INSERT INTO public.cook_energy_distribution (uuid,
                                             alcohol,
                                             protein,
                                             fat,
                                             cardohydrate,
                                             organic_acid,
                                             food_uid,
                                             created_at,
                                             updated_at)
VALUES ('cbe82f1f-607c-469f-b957-bf25ed85ba14',
        0,
        8,
        88,
        4,
        0,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:00:30.825415',
        '2019-08-24 00:00:00.000000');
INSERT INTO public.cook_fatty_acids (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('1a918e08-07db-439a-ae57-da515616c82f',
        2.2,
        3.5,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 10:38:08.759483',
        '2019-08-24 10:38:08.759483');
INSERT INTO public.cook_fatty_acids (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('19cf6d53-adfb-4f65-9bbd-a94a79fe7c2e',
        6.5,
        10.4,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 10:40:32.501670',
        '2019-08-24 10:40:32.501670');
INSERT INTO public.cook_fatty_acids (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('ce291072-b8c9-483a-aa36-cc4855d385e7',
        1.2,
        1.9,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 10:42:13.246507',
        '2019-08-24 10:42:13.246507');
INSERT INTO public.cook_fatty_acids (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('d36672fb-e3ec-4b74-85a9-b334cf84502c',
        0,
        0,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 10:43:56.941355',
        '2019-08-24 10:43:56.941355');
INSERT INTO public.cook_fatty_acids (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('7133e75d-3917-4bdb-be67-c10906ddfeaa',
        1.1,
        1.8,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 10:45:11.489401',
        '2019-08-24 10:45:11.489401');
INSERT INTO public.cook_fatty_description (uuid, name, lang_code, fatty_uid)
VALUES ('40efe96d-f160-45bb-8e51-b25b58813480',
        'Ácidos gordos saturados',
        'pt-PT',
        '1a918e08-07db-439a-ae57-da515616c82f');
INSERT INTO public.cook_fatty_description (uuid, name, lang_code, fatty_uid)
VALUES ('129f36c0-0b34-4d9d-846e-ef6f6378188a',
        'Ácidos gordos monoinsaturados',
        'pt-PT',
        '19cf6d53-adfb-4f65-9bbd-a94a79fe7c2e');
INSERT INTO public.cook_fatty_description (uuid, name, lang_code, fatty_uid)
VALUES ('f993b34e-db67-4f4a-bad4-4e22e8c39c0a',
        'Ácidos gordos polinsaturados',
        'pt-PT',
        'ce291072-b8c9-483a-aa36-cc4855d385e7');
INSERT INTO public.cook_fatty_description (uuid, name, lang_code, fatty_uid)
VALUES ('10c96d66-3bc3-4360-a361-2313c5746d5d', 'Ácidos gordos trans', 'pt-PT', 'd36672fb-e3ec-4b74-85a9-b334cf84502c');
INSERT INTO public.cook_fatty_description (uuid, name, lang_code, fatty_uid)
VALUES ('22a8a018-35aa-47eb-adfb-9101c3d48ead', 'Ácido linoleico', 'pt-PT', '7133e75d-3917-4bdb-be67-c10906ddfeaa');

INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('0f53928d-16c5-4163-9ed5-9449da40461b',
        82.4,
        131.8,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:15:31.400681',
        '2019-08-24 00:15:31.400681');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('a0fa45eb-e103-4961-95f1-64de276bdbbb',
        1.1,
        1.8,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:18:43.710025',
        '2019-08-24 00:18:43.710025');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('900521dc-bbe5-4db8-a7bb-e6892507dc7f',
        10.5,
        16.8,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:21:11.059663',
        '2019-08-24 00:21:11.059663');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('43770865-0490-4c58-8e7c-bef6e98e22fd',
        2.3,
        3.7,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:23:05.943527',
        '2019-08-24 00:23:05.943527');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('17da9c75-813e-492b-9c11-8966745b0471',
        2.3,
        3.7,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:25:10.280591',
        '2019-08-24 00:25:10.280591');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('ae348f4c-45bf-4490-9c34-1d4bab1efade',
        2.3,
        3.7,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:26:55.679531',
        '2019-08-24 00:26:55.679531');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('9f8d75d5-aa0e-4d80-ae31-99a5aa5739a6',
        0,
        0,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:28:13.467125',
        '2019-08-24 00:28:13.467125');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('c3376949-624d-4117-bc72-7cf5cac34069',
        0,
        0,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:29:39.096020',
        '2019-08-24 00:29:39.096020');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('7ef8b094-c35a-4a03-add2-2d320233924e',
        0,
        0,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:31:04.711668',
        '2019-08-24 00:31:04.711668');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('65ce6298-5187-4b2e-afad-b8a54ef49ad7',
        0,
        0,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:32:21.610932',
        '2019-08-24 00:32:21.610932');
INSERT INTO public.cook_macro_component (uuid, for_value, recomendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('0c7892af-e689-4526-8a99-aeec690258aa',
        3,
        4.8,
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 00:33:49.699649',
        '2019-08-24 00:33:49.699649');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('72ef092b-1a53-4841-b37c-4567c50ba0a8', 'Água', 'pt-PT', '0f53928d-16c5-4163-9ed5-9449da40461b');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('0afd0262-b84a-4e40-9ea0-4ccf1ad3e627', 'Proteína', 'pt-PT', 'a0fa45eb-e103-4961-95f1-64de276bdbbb');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('4e9346a8-db8d-4d6a-921b-edaf8fc30191', 'Gordura total', 'pt-PT', '900521dc-bbe5-4db8-a7bb-e6892507dc7f');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('1d72ea4a-5307-48ec-a357-7309bfaff346',
        'Total de Hidratos de Carbono disponíveis',
        'pt-PT',
        '43770865-0490-4c58-8e7c-bef6e98e22fd');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('e1ce2f86-9ea9-4328-b9d4-9b23a6b9dedc',
        'Total de Hidratos de Carbono expresso em monossacáridos',
        'pt-PT',
        '17da9c75-813e-492b-9c11-8966745b0471');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('8141f503-5646-4872-8724-2bad5954badb', 'Mono+dissacáridos', 'pt-PT', 'ae348f4c-45bf-4490-9c34-1d4bab1efade');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('f6ec55e5-912c-40d3-8305-55ee04b4d281', 'Ácidos orgânicos', 'pt-PT', '9f8d75d5-aa0e-4d80-ae31-99a5aa5739a6');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('7463929c-94b9-436e-840f-d8f7897948bb', 'Álcool', 'pt-PT', 'c3376949-624d-4117-bc72-7cf5cac34069');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('a3888cf6-5817-4c7b-9648-ea19d25d4835', 'Amido', 'pt-PT', '7ef8b094-c35a-4a03-add2-2d320233924e');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('313ebb27-a455-458b-9a07-835afa876360', 'Oligossacáridos', 'pt-PT', '65ce6298-5187-4b2e-afad-b8a54ef49ad7');
INSERT INTO public.cook_macro_description (uuid, name, lang_code, macro_uid)
VALUES ('7bb29813-4726-4e27-b5a6-d5deb7135d90', 'Fibra alimentar', 'pt-PT', '0c7892af-e689-4526-8a99-aeec690258aa');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('2e720613-20a8-4a0c-a497-9bd1170b8604',
        0.75,
        1.2,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '443f0f46-d54d-43fd-83bc-35f9a6b6db79',
        '2019-08-24 11:22:53.890308',
        '2019-08-24 11:22:53.890308');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('f9e21e99-167d-4f33-b2c5-f26c20583b33',
        15,
        24,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:24:19.362763',
        '2019-08-24 11:24:19.362763');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('6c7cb6c5-462e-4d43-ba0a-b5c9a3700149',
        326,
        522,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:25:42.871498',
        '2019-08-24 11:25:42.871498');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('1b44e4f8-3fa0-4706-9deb-261af33221c1',
        4,
        6.4,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:26:37.905808',
        '2019-08-24 11:26:37.905808');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('67c3f730-da77-4afe-8294-e3cc4c477261',
        36,
        58,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:27:37.052595',
        '2019-08-24 11:27:37.052595');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('90370c0e-3c7b-4898-8d54-597db1abd967',
        21,
        34,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:28:33.782319',
        '2019-08-24 11:28:33.782319');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('e180807b-21c4-4291-b773-10cc46a7c08a',
        0.3,
        0.5,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:29:31.453935',
        '2019-08-24 11:29:31.453935');
INSERT INTO public.cook_mineral (uuid, for_value, recommendation, food_uid, unit_uid, created_at, updated_at)
VALUES ('b7a18482-c71d-4965-9627-dae895a249bd',
        0.3,
        0.5,
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        '2019-08-24 11:30:27.020023',
        '2019-08-24 11:30:27.020023');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('608d67e4-17e6-4f93-8460-915a24721ef1', 'Cinza', 'pt-PT', '2e720613-20a8-4a0c-a497-9bd1170b8604');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('3dc83668-4670-4b79-90a2-c94a96b3d6ec', 'Sódio', 'pt-PT', 'f9e21e99-167d-4f33-b2c5-f26c20583b33');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('6b8ca588-44fe-4941-b2b7-fd77f3b087f9', 'Potássio', 'pt-PT', '6c7cb6c5-462e-4d43-ba0a-b5c9a3700149');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('f5f3c0e2-984d-4131-8524-548e38df8d4c', 'Cálcio', 'pt-PT', '1b44e4f8-3fa0-4706-9deb-261af33221c1');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('a7d1ffec-77e8-48e8-80f1-ea5ed6085493', 'Fósforo', 'pt-PT', '67c3f730-da77-4afe-8294-e3cc4c477261');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('30b428f0-15ed-41dd-9872-f0cfbd50e021', 'Magnésio', 'pt-PT', '90370c0e-3c7b-4898-8d54-597db1abd967');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('74f29cb8-235b-4018-93db-9de4e58ec040', 'Ferro', 'pt-PT', 'e180807b-21c4-4291-b773-10cc46a7c08a');
INSERT INTO public.cook_mineral_description (uuid, name, lang_code, mineral_uid)
VALUES ('c8af83a8-477b-4c6d-8424-bcf718494a13', 'Zinco', 'pt-PT', 'b7a18482-c71d-4965-9627-dae895a249bd');

INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('471fbf59-6200-45c0-98b7-6973e0c1a7f7',
        5,
        8,
        'ac15f465-7908-4ee4-97b1-403c406b8a22',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:04:05.273265',
        '2019-08-24 11:04:05.273265');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('5f6b73d9-95b8-491c-82d7-5049149127bd',
        32,
        51,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:06:14.801807',
        '2019-08-24 11:06:14.801807');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('eff2d9a7-9591-4210-9330-31fcab7e67be',
        0,
        0,
        'ac15f465-7908-4ee4-97b1-403c406b8a22',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:07:38.476558',
        '2019-08-24 11:07:38.476558');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('65ae2d37-b7b1-4f1a-b4b2-748ce3b54016',
        2.1,
        3.4,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:09:16.609767',
        '2019-08-24 11:09:16.609767');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('1c2cfbfb-914c-4024-b748-e8927e716be6',
        0.1,
        0.16,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:10:51.393907',
        '2019-08-24 11:10:51.393907');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('c4a3d1e4-fc37-492a-babe-85e08546edb5',
        0.17,
        0.27,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:12:05.077336',
        '2019-08-24 11:12:05.077336');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('1fc51083-0a8a-49bd-ad83-cccb5d5fbd57',
        1.3,
        2.1,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:13:22.053049',
        '2019-08-24 11:13:22.053049');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('a6213601-8220-4f7b-bdb8-c649be358e85',
        1.1,
        1.8,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:14:32.103558',
        '2019-08-24 11:14:32.103558');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('d00ef26a-3d6a-475f-852b-818801b98d36',
        1.1,
        1.8,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:15:37.207364',
        '2019-08-24 11:15:37.207364');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('c248629d-59b3-435b-a9ca-55c1af78fc7f',
        0.3,
        0.48,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:17:00.348335',
        '2019-08-24 11:17:00.348335');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('38fec505-e5fa-4a28-82cb-12c1ce9e5e2c',
        0,
        0,
        'ac15f465-7908-4ee4-97b1-403c406b8a22',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:18:13.054332',
        '2019-08-24 11:18:13.054332');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('fda40d9e-0752-4ade-be13-f1145ec51e49',
        3,
        4.8,
        'f776f751-bc9a-4b54-a971-9de8f788e04d',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:19:22.873451',
        '2019-08-24 11:19:22.873451');
INSERT INTO public.cook_vitamin (uuid, for_value, recommendation, unit_uid, food_uid, created_at, updated_at)
VALUES ('3840eea1-91d6-447a-b634-154eb60e4173',
        11,
        18,
        'ac15f465-7908-4ee4-97b1-403c406b8a22',
        'b802e23b-8a4e-4f56-8766-081d1007085d',
        '2019-08-24 11:20:38.308767',
        '2019-08-24 11:20:38.308767');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('1135db49-a653-445b-996c-5b472e510cd8', 'Vitamina A', 'pt-PT', '471fbf59-6200-45c0-98b7-6973e0c1a7f7');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('682dae00-c243-4add-8627-c67028a9b3c3', 'Caroteno', 'pt-PT', '5f6b73d9-95b8-491c-82d7-5049149127bd');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('613fc77b-cf7a-47ea-b3b1-ba9067a5056c', 'Vitamina D', 'pt-PT', 'eff2d9a7-9591-4210-9330-31fcab7e67be');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('7090ec0f-a7a2-464d-bf21-7a83ede9f9c0', 'a-tocoferol', 'pt-PT', '65ae2d37-b7b1-4f1a-b4b2-748ce3b54016');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('224adf16-4997-4d5c-817a-0ee22382fd94', 'Tiamina', 'pt-PT', '1c2cfbfb-914c-4024-b748-e8927e716be6');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('17c4aeef-a7c3-49a0-babc-a3d4428ee106', 'Riboflavina', 'pt-PT', 'c4a3d1e4-fc37-492a-babe-85e08546edb5');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('bfef8f91-a79e-4583-b276-75893fd2ef00',
        'Equivalentes de niacina',
        'pt-PT',
        '1fc51083-0a8a-49bd-ad83-cccb5d5fbd57');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('2f6d1ccb-d90e-4051-80c7-af50abcbc591', 'Niacina', 'pt-PT', 'a6213601-8220-4f7b-bdb8-c649be358e85');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('ff461e5a-4d03-40de-bee2-d629c877782a', 'Triptofano/60', 'pt-PT', 'd00ef26a-3d6a-475f-852b-818801b98d36');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('06835a38-2bbb-4d62-a2e8-ea6da5ca46fc', 'Vitamina B6', 'pt-PT', 'c248629d-59b3-435b-a9ca-55c1af78fc7f');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('59298232-dd50-40fb-a216-7995d4932c49', 'Vitamina B12', 'pt-PT', '38fec505-e5fa-4a28-82cb-12c1ce9e5e2c');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('5148c6f1-deec-45ec-a58b-96d54b71cca5', 'Vitamina C', 'pt-PT', 'fda40d9e-0752-4ade-be13-f1145ec51e49');
INSERT INTO public.cook_vitamin_description (uuid, name, lang_code, vitamin_uid)
VALUES ('fa5e7da1-dcda-4048-8125-b94a0fa1db15', 'Folatos', 'pt-PT', '3840eea1-91d6-447a-b634-154eb60e4173');
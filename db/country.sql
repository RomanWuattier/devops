--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.1
-- Dumped by pg_dump version 9.6.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: country; Type: TABLE; Schema: public; Owner: Roman
--

CREATE TABLE country (
    id integer NOT NULL,
    country character varying(3),
    lat double precision,
    lng double precision,
    name character varying(128)
);


ALTER TABLE country OWNER TO "Roman";

--
-- Name: country_id_seq; Type: SEQUENCE; Schema: public; Owner: Roman
--

CREATE SEQUENCE country_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE country_id_seq OWNER TO "Roman";

--
-- Name: country_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: Roman
--

ALTER SEQUENCE country_id_seq OWNED BY country.id;


--
-- Name: country id; Type: DEFAULT; Schema: public; Owner: Roman
--

ALTER TABLE ONLY country ALTER COLUMN id SET DEFAULT nextval('country_id_seq'::regclass);


--
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: Roman
--

INSERT INTO country (id, country, lat, lng, name) VALUES (1, 'AD', 42.546244999999999, 1.60155399999999992, 'Andorra');
INSERT INTO country (id, country, lat, lng, name) VALUES (2, 'AE', 23.4240759999999995, 53.8478179999999966, 'United Arab Emirates');
INSERT INTO country (id, country, lat, lng, name) VALUES (3, 'AF', 33.9391099999999994, 67.7099529999999987, 'Afghanistan');
INSERT INTO country (id, country, lat, lng, name) VALUES (4, 'AG', 17.0608159999999991, -61.7964279999999988, 'Antigua and Barbuda');
INSERT INTO country (id, country, lat, lng, name) VALUES (5, 'AI', 18.2205539999999999, -63.0686150000000012, 'Anguilla');
INSERT INTO country (id, country, lat, lng, name) VALUES (6, 'AL', 41.1533319999999989, 20.1683309999999985, 'Albania');
INSERT INTO country (id, country, lat, lng, name) VALUES (7, 'AM', 40.0690990000000014, 45.0381890000000027, 'Armenia');
INSERT INTO country (id, country, lat, lng, name) VALUES (8, 'AN', 12.2260790000000004, -69.0600869999999958, 'Netherlands Antilles');
INSERT INTO country (id, country, lat, lng, name) VALUES (9, 'AO', -11.2026920000000008, 17.8738869999999999, 'Angola');
INSERT INTO country (id, country, lat, lng, name) VALUES (10, 'AQ', -75.2509730000000019, -0.0713889999999999941, 'Antarctica');
INSERT INTO country (id, country, lat, lng, name) VALUES (11, 'AR', -38.4160970000000006, -63.6166720000000012, 'Argentina');
INSERT INTO country (id, country, lat, lng, name) VALUES (12, 'AS', -14.2709720000000004, -170.132216999999997, 'American Samoa');
INSERT INTO country (id, country, lat, lng, name) VALUES (13, 'AT', 47.5162309999999977, 14.5500720000000001, 'Austria');
INSERT INTO country (id, country, lat, lng, name) VALUES (14, 'AU', -25.2743980000000015, 133.775136000000003, 'Australia');
INSERT INTO country (id, country, lat, lng, name) VALUES (15, 'AW', 12.5211100000000002, -69.9683380000000028, 'Aruba');
INSERT INTO country (id, country, lat, lng, name) VALUES (16, 'AZ', 40.1431049999999985, 47.5769269999999977, 'Azerbaijan');
INSERT INTO country (id, country, lat, lng, name) VALUES (17, 'BA', 43.9158860000000004, 17.6790759999999985, 'Bosnia and Herzegovina');
INSERT INTO country (id, country, lat, lng, name) VALUES (18, 'BB', 13.1938870000000001, -59.5431979999999967, 'Barbados');
INSERT INTO country (id, country, lat, lng, name) VALUES (19, 'BD', 23.6849939999999997, 90.3563309999999973, 'Bangladesh');
INSERT INTO country (id, country, lat, lng, name) VALUES (20, 'BE', 50.5038869999999989, 4.46993599999999969, 'Belgium');
INSERT INTO country (id, country, lat, lng, name) VALUES (21, 'BF', 12.2383330000000008, -1.56159300000000001, 'Burkina Faso');
INSERT INTO country (id, country, lat, lng, name) VALUES (22, 'BG', 42.7338829999999987, 25.48583, 'Bulgaria');
INSERT INTO country (id, country, lat, lng, name) VALUES (23, 'BH', 25.930413999999999, 50.6377719999999982, 'Bahrain');
INSERT INTO country (id, country, lat, lng, name) VALUES (24, 'BI', -3.37305600000000005, 29.9188860000000005, 'Burundi');
INSERT INTO country (id, country, lat, lng, name) VALUES (25, 'BJ', 9.30768999999999913, 2.31583400000000017, 'Benin');
INSERT INTO country (id, country, lat, lng, name) VALUES (26, 'BM', 32.3213840000000019, -64.7573699999999945, 'Bermuda');
INSERT INTO country (id, country, lat, lng, name) VALUES (27, 'BN', 4.53527699999999978, 114.727669000000006, 'Brunei');
INSERT INTO country (id, country, lat, lng, name) VALUES (28, 'BO', -16.2901540000000011, -63.5886530000000008, 'Bolivia');
INSERT INTO country (id, country, lat, lng, name) VALUES (29, 'BR', -14.235004, -51.9252800000000008, 'Brazil');
INSERT INTO country (id, country, lat, lng, name) VALUES (30, 'BS', 25.034279999999999, -77.3962800000000044, 'Bahamas');
INSERT INTO country (id, country, lat, lng, name) VALUES (31, 'BT', 27.5141619999999989, 90.4336009999999959, 'Bhutan');
INSERT INTO country (id, country, lat, lng, name) VALUES (32, 'BV', -54.4231989999999968, 3.41319399999999984, 'Bouvet Island');
INSERT INTO country (id, country, lat, lng, name) VALUES (33, 'BW', -22.3284739999999999, 24.6848659999999995, 'Botswana');
INSERT INTO country (id, country, lat, lng, name) VALUES (34, 'BY', 53.7098069999999979, 27.9533890000000014, 'Belarus');
INSERT INTO country (id, country, lat, lng, name) VALUES (35, 'BZ', 17.1898769999999992, -88.497649999999993, 'Belize');
INSERT INTO country (id, country, lat, lng, name) VALUES (36, 'CA', 56.1303660000000022, -106.346771000000004, 'Canada');
INSERT INTO country (id, country, lat, lng, name) VALUES (37, 'CC', -12.1641650000000006, 96.8709560000000067, 'Cocos [Keeling] Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (39, 'CF', 6.61111100000000018, 20.9394440000000017, 'Central African Republic');
INSERT INTO country (id, country, lat, lng, name) VALUES (41, 'CH', 46.8181879999999992, 8.22751200000000082, 'Switzerland');
INSERT INTO country (id, country, lat, lng, name) VALUES (43, 'CK', -21.2367360000000005, -159.777670999999998, 'Cook Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (44, 'CL', -35.6751470000000026, -71.5429689999999994, 'Chile');
INSERT INTO country (id, country, lat, lng, name) VALUES (45, 'CM', 7.36972200000000033, 12.3547220000000006, 'Cameroon');
INSERT INTO country (id, country, lat, lng, name) VALUES (46, 'CN', 35.8616600000000005, 104.195397, 'China');
INSERT INTO country (id, country, lat, lng, name) VALUES (47, 'CO', 4.57086799999999993, -74.2973329999999947, 'Colombia');
INSERT INTO country (id, country, lat, lng, name) VALUES (48, 'CR', 9.7489170000000005, -83.7534279999999995, 'Costa Rica');
INSERT INTO country (id, country, lat, lng, name) VALUES (49, 'CU', 21.5217570000000009, -77.7811669999999964, 'Cuba');
INSERT INTO country (id, country, lat, lng, name) VALUES (50, 'CV', 16.0020820000000015, -24.0131970000000017, 'Cape Verde');
INSERT INTO country (id, country, lat, lng, name) VALUES (51, 'CX', -10.4475250000000006, 105.690449000000001, 'Christmas Island');
INSERT INTO country (id, country, lat, lng, name) VALUES (52, 'CY', 35.1264129999999994, 33.4298590000000004, 'Cyprus');
INSERT INTO country (id, country, lat, lng, name) VALUES (53, 'CZ', 49.8174920000000014, 15.4729620000000008, 'Czech Republic');
INSERT INTO country (id, country, lat, lng, name) VALUES (54, 'DE', 51.1656910000000025, 10.4515259999999994, 'Germany');
INSERT INTO country (id, country, lat, lng, name) VALUES (55, 'DJ', 11.8251380000000008, 42.5902749999999983, 'Djibouti');
INSERT INTO country (id, country, lat, lng, name) VALUES (56, 'DK', 56.2639199999999988, 9.50178499999999993, 'Denmark');
INSERT INTO country (id, country, lat, lng, name) VALUES (57, 'DM', 15.4149989999999999, -61.3709759999999989, 'Dominica');
INSERT INTO country (id, country, lat, lng, name) VALUES (58, 'DO', 18.7356930000000013, -70.1626509999999968, 'Dominican Republic');
INSERT INTO country (id, country, lat, lng, name) VALUES (59, 'DZ', 28.033885999999999, 1.65962600000000005, 'Algeria');
INSERT INTO country (id, country, lat, lng, name) VALUES (60, 'EC', -1.83123900000000006, -78.1834060000000051, 'Ecuador');
INSERT INTO country (id, country, lat, lng, name) VALUES (61, 'EE', 58.5952720000000014, 25.0136070000000004, 'Estonia');
INSERT INTO country (id, country, lat, lng, name) VALUES (62, 'EG', 26.8205530000000003, 30.8024979999999999, 'Egypt');
INSERT INTO country (id, country, lat, lng, name) VALUES (63, 'EH', 24.2155270000000016, -12.8858339999999991, 'Western Sahara');
INSERT INTO country (id, country, lat, lng, name) VALUES (64, 'ER', 15.1793840000000007, 39.7823339999999988, 'Eritrea');
INSERT INTO country (id, country, lat, lng, name) VALUES (65, 'ES', 40.4636670000000009, -3.74922000000000022, 'Spain');
INSERT INTO country (id, country, lat, lng, name) VALUES (66, 'ET', 9.14499999999999957, 40.4896730000000034, 'Ethiopia');
INSERT INTO country (id, country, lat, lng, name) VALUES (67, 'FI', 61.9241099999999989, 25.748151, 'Finland');
INSERT INTO country (id, country, lat, lng, name) VALUES (68, 'FJ', -16.5781929999999988, 179.414412999999996, 'Fiji');
INSERT INTO country (id, country, lat, lng, name) VALUES (69, 'FK', -51.7962530000000001, -59.5236129999999974, 'Falkland Islands [Islas Malvinas]');
INSERT INTO country (id, country, lat, lng, name) VALUES (70, 'FM', 7.42555399999999999, 150.550812000000008, 'Micronesia');
INSERT INTO country (id, country, lat, lng, name) VALUES (71, 'FO', 61.8926349999999985, -6.91180600000000034, 'Faroe Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (72, 'FR', 46.2276379999999989, 2.21374899999999997, 'France');
INSERT INTO country (id, country, lat, lng, name) VALUES (73, 'GA', -0.803688999999999987, 11.6094439999999999, 'Gabon');
INSERT INTO country (id, country, lat, lng, name) VALUES (74, 'GB', 55.3780509999999992, -3.43597300000000017, 'United Kingdom');
INSERT INTO country (id, country, lat, lng, name) VALUES (75, 'GD', 12.2627760000000006, -61.6041710000000009, 'Grenada');
INSERT INTO country (id, country, lat, lng, name) VALUES (76, 'GE', 42.3154070000000004, 43.356892000000002, 'Georgia');
INSERT INTO country (id, country, lat, lng, name) VALUES (77, 'GF', 3.93388900000000019, -53.1257820000000009, 'French Guiana');
INSERT INTO country (id, country, lat, lng, name) VALUES (78, 'GG', 49.4656909999999996, -2.58527800000000019, 'Guernsey');
INSERT INTO country (id, country, lat, lng, name) VALUES (79, 'GH', 7.94652699999999967, -1.02319399999999994, 'Ghana');
INSERT INTO country (id, country, lat, lng, name) VALUES (80, 'GI', 36.1377409999999983, -5.34537399999999963, 'Gibraltar');
INSERT INTO country (id, country, lat, lng, name) VALUES (81, 'GL', 71.7069359999999989, -42.6043030000000016, 'Greenland');
INSERT INTO country (id, country, lat, lng, name) VALUES (82, 'GM', 13.4431820000000002, -15.3101389999999995, 'Gambia');
INSERT INTO country (id, country, lat, lng, name) VALUES (83, 'GN', 9.94558699999999973, -9.69664500000000018, 'Guinea');
INSERT INTO country (id, country, lat, lng, name) VALUES (84, 'GP', 16.9959710000000008, -62.0676410000000018, 'Guadeloupe');
INSERT INTO country (id, country, lat, lng, name) VALUES (85, 'GQ', 1.65080099999999996, 10.2678949999999993, 'Equatorial Guinea');
INSERT INTO country (id, country, lat, lng, name) VALUES (86, 'GR', 39.0742079999999987, 21.824311999999999, 'Greece');
INSERT INTO country (id, country, lat, lng, name) VALUES (87, 'GS', -54.4295789999999968, -36.5879090000000033, 'South Georgia and the South Sandwich Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (88, 'GT', 15.7834710000000005, -90.2307590000000062, 'Guatemala');
INSERT INTO country (id, country, lat, lng, name) VALUES (89, 'GU', 13.4443040000000007, 144.793731000000008, 'Guam');
INSERT INTO country (id, country, lat, lng, name) VALUES (90, 'GW', 11.8037489999999998, -15.1804129999999997, 'Guinea-Bissau');
INSERT INTO country (id, country, lat, lng, name) VALUES (91, 'GY', 4.86041599999999985, -58.93018, 'Guyana');
INSERT INTO country (id, country, lat, lng, name) VALUES (92, 'GZ', 31.3546760000000013, 34.3088249999999988, 'Gaza Strip');
INSERT INTO country (id, country, lat, lng, name) VALUES (93, 'HK', 22.3964280000000002, 114.109497000000005, 'Hong Kong');
INSERT INTO country (id, country, lat, lng, name) VALUES (94, 'HM', -53.0818099999999973, 73.5041580000000039, 'Heard Island and McDonald Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (95, 'HN', 15.199999, -86.2419050000000027, 'Honduras');
INSERT INTO country (id, country, lat, lng, name) VALUES (96, 'HR', 45.1000000000000014, 15.1999999999999993, 'Croatia');
INSERT INTO country (id, country, lat, lng, name) VALUES (97, 'HT', 18.9711870000000005, -72.2852149999999938, 'Haiti');
INSERT INTO country (id, country, lat, lng, name) VALUES (98, 'HU', 47.1624940000000024, 19.503304, 'Hungary');
INSERT INTO country (id, country, lat, lng, name) VALUES (99, 'ID', -0.789274999999999949, 113.921327000000005, 'Indonesia');
INSERT INTO country (id, country, lat, lng, name) VALUES (100, 'IE', 53.4129099999999966, -8.24389000000000038, 'Ireland');
INSERT INTO country (id, country, lat, lng, name) VALUES (101, 'IL', 31.0460509999999985, 34.8516120000000029, 'Israel');
INSERT INTO country (id, country, lat, lng, name) VALUES (102, 'IM', 54.236106999999997, -4.54805599999999988, 'Isle of Man');
INSERT INTO country (id, country, lat, lng, name) VALUES (103, 'IN', 20.5936839999999997, 78.9628799999999984, 'India');
INSERT INTO country (id, country, lat, lng, name) VALUES (104, 'IO', -6.34319400000000044, 71.8765190000000018, 'British Indian Ocean Territory');
INSERT INTO country (id, country, lat, lng, name) VALUES (105, 'IQ', 33.2231909999999999, 43.6792909999999992, 'Iraq');
INSERT INTO country (id, country, lat, lng, name) VALUES (106, 'IR', 32.4279080000000022, 53.6880459999999999, 'Iran');
INSERT INTO country (id, country, lat, lng, name) VALUES (107, 'IS', 64.963050999999993, -19.0208350000000017, 'Iceland');
INSERT INTO country (id, country, lat, lng, name) VALUES (108, 'IT', 41.8719400000000022, 12.56738, 'Italy');
INSERT INTO country (id, country, lat, lng, name) VALUES (109, 'JE', 49.2144389999999987, -2.13125000000000009, 'Jersey');
INSERT INTO country (id, country, lat, lng, name) VALUES (110, 'JM', 18.1095809999999986, -77.2975079999999934, 'Jamaica');
INSERT INTO country (id, country, lat, lng, name) VALUES (111, 'JO', 30.5851639999999989, 36.2384139999999988, 'Jordan');
INSERT INTO country (id, country, lat, lng, name) VALUES (112, 'JP', 36.2048240000000021, 138.252924000000007, 'Japan');
INSERT INTO country (id, country, lat, lng, name) VALUES (113, 'KE', -0.0235590000000000001, 37.9061930000000018, 'Kenya');
INSERT INTO country (id, country, lat, lng, name) VALUES (114, 'KG', 41.2043800000000005, 74.7660979999999995, 'Kyrgyzstan');
INSERT INTO country (id, country, lat, lng, name) VALUES (115, 'KH', 12.5656789999999994, 104.990962999999994, 'Cambodia');
INSERT INTO country (id, country, lat, lng, name) VALUES (116, 'KI', -3.37041700000000022, -168.734038999999996, 'Kiribati');
INSERT INTO country (id, country, lat, lng, name) VALUES (117, 'KM', -11.8750009999999993, 43.8722190000000012, 'Comoros');
INSERT INTO country (id, country, lat, lng, name) VALUES (118, 'KN', 17.3578219999999988, -62.7829979999999992, 'Saint Kitts and Nevis');
INSERT INTO country (id, country, lat, lng, name) VALUES (119, 'KP', 40.3398520000000005, 127.510092999999998, 'North Korea');
INSERT INTO country (id, country, lat, lng, name) VALUES (120, 'KR', 35.9077569999999966, 127.766921999999994, 'South Korea');
INSERT INTO country (id, country, lat, lng, name) VALUES (121, 'KW', 29.3116599999999998, 47.4817660000000004, 'Kuwait');
INSERT INTO country (id, country, lat, lng, name) VALUES (122, 'KY', 19.5134690000000006, -80.5669560000000047, 'Cayman Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (123, 'KZ', 48.0195730000000012, 66.9236839999999944, 'Kazakhstan');
INSERT INTO country (id, country, lat, lng, name) VALUES (124, 'LA', 19.8562699999999985, 102.495496000000003, 'Laos');
INSERT INTO country (id, country, lat, lng, name) VALUES (40, 'CG', -0.228021000000000001, 15.8276590000000006, 'Republic of Congo');
INSERT INTO country (id, country, lat, lng, name) VALUES (42, 'CI', 7.53998900000000027, -5.54708000000000023, 'Côte d''Ivoire');
INSERT INTO country (id, country, lat, lng, name) VALUES (125, 'LB', 33.8547209999999978, 35.862285, 'Lebanon');
INSERT INTO country (id, country, lat, lng, name) VALUES (126, 'LC', 13.9094440000000006, -60.9788929999999993, 'Saint Lucia');
INSERT INTO country (id, country, lat, lng, name) VALUES (127, 'LI', 47.1659999999999968, 9.55537299999999945, 'Liechtenstein');
INSERT INTO country (id, country, lat, lng, name) VALUES (128, 'LK', 7.87305399999999977, 80.7717970000000065, 'Sri Lanka');
INSERT INTO country (id, country, lat, lng, name) VALUES (129, 'LR', 6.42805499999999963, -9.42949899999999985, 'Liberia');
INSERT INTO country (id, country, lat, lng, name) VALUES (130, 'LS', -29.6099880000000013, 28.2336080000000003, 'Lesotho');
INSERT INTO country (id, country, lat, lng, name) VALUES (131, 'LT', 55.1694379999999995, 23.8812749999999987, 'Lithuania');
INSERT INTO country (id, country, lat, lng, name) VALUES (132, 'LU', 49.8152729999999977, 6.12958300000000023, 'Luxembourg');
INSERT INTO country (id, country, lat, lng, name) VALUES (133, 'LV', 56.8796350000000004, 24.6031890000000004, 'Latvia');
INSERT INTO country (id, country, lat, lng, name) VALUES (134, 'LY', 26.3351000000000006, 17.2283310000000007, 'Libya');
INSERT INTO country (id, country, lat, lng, name) VALUES (135, 'MA', 31.7917020000000008, -7.09262000000000015, 'Morocco');
INSERT INTO country (id, country, lat, lng, name) VALUES (136, 'MC', 43.7502980000000008, 7.41284100000000024, 'Monaco');
INSERT INTO country (id, country, lat, lng, name) VALUES (137, 'MD', 47.4116309999999999, 28.369885, 'Moldova');
INSERT INTO country (id, country, lat, lng, name) VALUES (138, 'ME', 42.708677999999999, 19.3743899999999982, 'Montenegro');
INSERT INTO country (id, country, lat, lng, name) VALUES (139, 'MG', -18.7669469999999983, 46.8691069999999996, 'Madagascar');
INSERT INTO country (id, country, lat, lng, name) VALUES (140, 'MH', 7.13147399999999987, 171.184478000000013, 'Marshall Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (142, 'ML', 17.5706920000000011, -3.99616600000000011, 'Mali');
INSERT INTO country (id, country, lat, lng, name) VALUES (144, 'MN', 46.8624960000000002, 103.846655999999996, 'Mongolia');
INSERT INTO country (id, country, lat, lng, name) VALUES (145, 'MO', 22.1987449999999988, 113.543873000000005, 'Macau');
INSERT INTO country (id, country, lat, lng, name) VALUES (146, 'MP', 17.3308299999999988, 145.384690000000006, 'Northern Mariana Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (147, 'MQ', 14.6415279999999992, -61.0241740000000021, 'Martinique');
INSERT INTO country (id, country, lat, lng, name) VALUES (148, 'MR', 21.0078899999999997, -10.9408349999999999, 'Mauritania');
INSERT INTO country (id, country, lat, lng, name) VALUES (149, 'MS', 16.7424980000000012, -62.1873659999999973, 'Montserrat');
INSERT INTO country (id, country, lat, lng, name) VALUES (150, 'MT', 35.937496000000003, 14.3754159999999995, 'Malta');
INSERT INTO country (id, country, lat, lng, name) VALUES (151, 'MU', -20.3484039999999986, 57.5521519999999995, 'Mauritius');
INSERT INTO country (id, country, lat, lng, name) VALUES (152, 'MV', 3.2027779999999999, 73.2206800000000015, 'Maldives');
INSERT INTO country (id, country, lat, lng, name) VALUES (153, 'MW', -13.254308, 34.301524999999998, 'Malawi');
INSERT INTO country (id, country, lat, lng, name) VALUES (154, 'MX', 23.6345010000000002, -102.552784000000003, 'Mexico');
INSERT INTO country (id, country, lat, lng, name) VALUES (155, 'MY', 4.21048400000000012, 101.975765999999993, 'Malaysia');
INSERT INTO country (id, country, lat, lng, name) VALUES (156, 'MZ', -18.6656949999999995, 35.5295619999999985, 'Mozambique');
INSERT INTO country (id, country, lat, lng, name) VALUES (157, 'NA', -22.9576400000000014, 18.4904100000000007, 'Namibia');
INSERT INTO country (id, country, lat, lng, name) VALUES (158, 'NC', -20.9043050000000008, 165.618042000000003, 'New Caledonia');
INSERT INTO country (id, country, lat, lng, name) VALUES (159, 'NE', 17.6077890000000004, 8.08166600000000024, 'Niger');
INSERT INTO country (id, country, lat, lng, name) VALUES (160, 'NF', -29.0408350000000013, 167.954712000000001, 'Norfolk Island');
INSERT INTO country (id, country, lat, lng, name) VALUES (161, 'NG', 9.08199899999999971, 8.67527699999999946, 'Nigeria');
INSERT INTO country (id, country, lat, lng, name) VALUES (162, 'NI', 12.8654159999999997, -85.2072289999999981, 'Nicaragua');
INSERT INTO country (id, country, lat, lng, name) VALUES (163, 'NL', 52.1326329999999984, 5.29126600000000025, 'Netherlands');
INSERT INTO country (id, country, lat, lng, name) VALUES (164, 'NO', 60.4720239999999976, 8.46894600000000075, 'Norway');
INSERT INTO country (id, country, lat, lng, name) VALUES (165, 'NP', 28.3948569999999982, 84.1240080000000034, 'Nepal');
INSERT INTO country (id, country, lat, lng, name) VALUES (166, 'NR', -0.522777999999999965, 166.931502999999992, 'Nauru');
INSERT INTO country (id, country, lat, lng, name) VALUES (167, 'NU', -19.0544450000000012, -169.867232999999999, 'Niue');
INSERT INTO country (id, country, lat, lng, name) VALUES (168, 'NZ', -40.9005569999999992, 174.885971000000012, 'New Zealand');
INSERT INTO country (id, country, lat, lng, name) VALUES (169, 'OM', 21.5125829999999993, 55.9232549999999975, 'Oman');
INSERT INTO country (id, country, lat, lng, name) VALUES (170, 'PA', 8.53798100000000026, -80.7821270000000027, 'Panama');
INSERT INTO country (id, country, lat, lng, name) VALUES (171, 'PE', -9.18996699999999933, -75.0151520000000005, 'Peru');
INSERT INTO country (id, country, lat, lng, name) VALUES (172, 'PF', -17.679742000000001, -149.406843000000009, 'French Polynesia');
INSERT INTO country (id, country, lat, lng, name) VALUES (173, 'PG', -6.3149930000000003, 143.955549999999988, 'Papua New Guinea');
INSERT INTO country (id, country, lat, lng, name) VALUES (174, 'PH', 12.879721, 121.774017000000001, 'Philippines');
INSERT INTO country (id, country, lat, lng, name) VALUES (175, 'PK', 30.3753209999999996, 69.3451160000000044, 'Pakistan');
INSERT INTO country (id, country, lat, lng, name) VALUES (176, 'PL', 51.9194379999999995, 19.1451360000000008, 'Poland');
INSERT INTO country (id, country, lat, lng, name) VALUES (177, 'PM', 46.9419359999999983, -56.2711100000000002, 'Saint Pierre and Miquelon');
INSERT INTO country (id, country, lat, lng, name) VALUES (178, 'PN', -24.7036149999999992, -127.439307999999997, 'Pitcairn Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (179, 'PR', 18.2208329999999989, -66.5901489999999967, 'Puerto Rico');
INSERT INTO country (id, country, lat, lng, name) VALUES (180, 'PS', 31.9521620000000013, 35.233153999999999, 'Palestinian Territories');
INSERT INTO country (id, country, lat, lng, name) VALUES (181, 'PT', 39.399872000000002, -8.22445399999999971, 'Portugal');
INSERT INTO country (id, country, lat, lng, name) VALUES (182, 'PW', 7.51498000000000044, 134.582519999999988, 'Palau');
INSERT INTO country (id, country, lat, lng, name) VALUES (183, 'PY', -23.4425029999999985, -58.4438320000000004, 'Paraguay');
INSERT INTO country (id, country, lat, lng, name) VALUES (184, 'QA', 25.3548259999999992, 51.183883999999999, 'Qatar');
INSERT INTO country (id, country, lat, lng, name) VALUES (185, 'RE', -21.1151410000000013, 55.5363839999999982, 'RÌ©union');
INSERT INTO country (id, country, lat, lng, name) VALUES (186, 'RO', 45.9431610000000035, 24.9667600000000007, 'Romania');
INSERT INTO country (id, country, lat, lng, name) VALUES (187, 'RS', 44.0165209999999973, 21.0058590000000009, 'Serbia');
INSERT INTO country (id, country, lat, lng, name) VALUES (188, 'RU', 61.524009999999997, 105.318755999999993, 'Russia');
INSERT INTO country (id, country, lat, lng, name) VALUES (189, 'RW', -1.94027799999999995, 29.8738880000000009, 'Rwanda');
INSERT INTO country (id, country, lat, lng, name) VALUES (190, 'SA', 23.885942, 45.0791619999999966, 'Saudi Arabia');
INSERT INTO country (id, country, lat, lng, name) VALUES (191, 'SB', -9.64570999999999934, 160.156193999999999, 'Solomon Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (192, 'SC', -4.67957399999999968, 55.4919769999999986, 'Seychelles');
INSERT INTO country (id, country, lat, lng, name) VALUES (193, 'SD', 12.8628070000000001, 30.2176359999999988, 'Sudan');
INSERT INTO country (id, country, lat, lng, name) VALUES (194, 'SE', 60.1281609999999986, 18.6435010000000005, 'Sweden');
INSERT INTO country (id, country, lat, lng, name) VALUES (195, 'SG', 1.35208299999999992, 103.819835999999995, 'Singapore');
INSERT INTO country (id, country, lat, lng, name) VALUES (196, 'SH', -24.1434740000000012, -10.0306960000000007, 'Saint Helena');
INSERT INTO country (id, country, lat, lng, name) VALUES (197, 'SI', 46.1512409999999988, 14.9954630000000009, 'Slovenia');
INSERT INTO country (id, country, lat, lng, name) VALUES (198, 'SJ', 77.5536040000000071, 23.6702720000000006, 'Svalbard and Jan Mayen');
INSERT INTO country (id, country, lat, lng, name) VALUES (199, 'SK', 48.6690260000000023, 19.6990240000000014, 'Slovakia');
INSERT INTO country (id, country, lat, lng, name) VALUES (200, 'SL', 8.46055499999999938, -11.7798890000000007, 'Sierra Leone');
INSERT INTO country (id, country, lat, lng, name) VALUES (201, 'SM', 43.9423600000000008, 12.4577770000000001, 'San Marino');
INSERT INTO country (id, country, lat, lng, name) VALUES (202, 'SN', 14.497401, -14.4523620000000008, 'Senegal');
INSERT INTO country (id, country, lat, lng, name) VALUES (203, 'SO', 5.15214899999999965, 46.1996159999999989, 'Somalia');
INSERT INTO country (id, country, lat, lng, name) VALUES (204, 'SR', 3.91930500000000004, -56.0277829999999994, 'Suriname');
INSERT INTO country (id, country, lat, lng, name) VALUES (205, 'ST', 0.186359999999999998, 6.61308100000000021, 'SÌ£o TomÌ© and PrÌ_ncipe');
INSERT INTO country (id, country, lat, lng, name) VALUES (206, 'SV', 13.7941850000000006, -88.8965299999999985, 'El Salvador');
INSERT INTO country (id, country, lat, lng, name) VALUES (207, 'SY', 34.8020750000000021, 38.996814999999998, 'Syria');
INSERT INTO country (id, country, lat, lng, name) VALUES (208, 'SZ', -26.5225030000000004, 31.4658659999999983, 'Swaziland');
INSERT INTO country (id, country, lat, lng, name) VALUES (209, 'TC', 21.6940249999999999, -71.7979279999999989, 'Turks and Caicos Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (210, 'TD', 15.4541660000000007, 18.7322069999999989, 'Chad');
INSERT INTO country (id, country, lat, lng, name) VALUES (211, 'TF', -49.2803660000000008, 69.3485569999999996, 'French Southern Territories');
INSERT INTO country (id, country, lat, lng, name) VALUES (212, 'TG', 8.61954300000000018, 0.824782000000000015, 'Togo');
INSERT INTO country (id, country, lat, lng, name) VALUES (213, 'TH', 15.8700320000000001, 100.992541000000003, 'Thailand');
INSERT INTO country (id, country, lat, lng, name) VALUES (214, 'TJ', 38.8610339999999965, 71.276093000000003, 'Tajikistan');
INSERT INTO country (id, country, lat, lng, name) VALUES (215, 'TK', -8.96736300000000064, -171.855881000000011, 'Tokelau');
INSERT INTO country (id, country, lat, lng, name) VALUES (216, 'TL', -8.8742169999999998, 125.727538999999993, 'Timor-Leste');
INSERT INTO country (id, country, lat, lng, name) VALUES (217, 'TM', 38.9697189999999978, 59.5562779999999989, 'Turkmenistan');
INSERT INTO country (id, country, lat, lng, name) VALUES (218, 'TN', 33.8869169999999968, 9.53749900000000039, 'Tunisia');
INSERT INTO country (id, country, lat, lng, name) VALUES (219, 'TO', -21.1789859999999983, -175.198241999999993, 'Tonga');
INSERT INTO country (id, country, lat, lng, name) VALUES (220, 'TR', 38.963745000000003, 35.2433219999999992, 'Turkey');
INSERT INTO country (id, country, lat, lng, name) VALUES (221, 'TT', 10.6918030000000002, -61.2225030000000032, 'Trinidad and Tobago');
INSERT INTO country (id, country, lat, lng, name) VALUES (222, 'TV', -7.10953500000000016, 177.649329999999992, 'Tuvalu');
INSERT INTO country (id, country, lat, lng, name) VALUES (223, 'TW', 23.6978100000000005, 120.960515000000001, 'Taiwan');
INSERT INTO country (id, country, lat, lng, name) VALUES (224, 'TZ', -6.36902800000000013, 34.8888219999999976, 'Tanzania');
INSERT INTO country (id, country, lat, lng, name) VALUES (225, 'UA', 48.3794329999999988, 31.1655799999999985, 'Ukraine');
INSERT INTO country (id, country, lat, lng, name) VALUES (226, 'UG', 1.37333299999999991, 32.2902750000000012, 'Uganda');
INSERT INTO country (id, country, lat, lng, name) VALUES (227, 'UM', NULL, NULL, 'U.S. Minor Outlying Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (228, 'US', 37.0902400000000014, -95.7128909999999991, 'United States');
INSERT INTO country (id, country, lat, lng, name) VALUES (229, 'UY', -32.5227789999999999, -55.7658350000000027, 'Uruguay');
INSERT INTO country (id, country, lat, lng, name) VALUES (230, 'UZ', 41.3774909999999991, 64.5852620000000002, 'Uzbekistan');
INSERT INTO country (id, country, lat, lng, name) VALUES (231, 'VA', 41.9029159999999976, 12.4533889999999996, 'Vatican City');
INSERT INTO country (id, country, lat, lng, name) VALUES (232, 'VC', 12.9843050000000009, -61.2872279999999989, 'Saint Vincent and the Grenadines');
INSERT INTO country (id, country, lat, lng, name) VALUES (233, 'VE', 6.42375000000000007, -66.589730000000003, 'Venezuela');
INSERT INTO country (id, country, lat, lng, name) VALUES (234, 'VG', 18.4206949999999985, -64.6399679999999961, 'British Virgin Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (235, 'VI', 18.3357649999999985, -64.8963349999999934, 'U.S. Virgin Islands');
INSERT INTO country (id, country, lat, lng, name) VALUES (236, 'VN', 14.0583240000000007, 108.277198999999996, 'Vietnam');
INSERT INTO country (id, country, lat, lng, name) VALUES (237, 'VU', -15.3767060000000004, 166.959158000000002, 'Vanuatu');
INSERT INTO country (id, country, lat, lng, name) VALUES (238, 'WF', -13.7687519999999992, -177.156096999999988, 'Wallis and Futuna');
INSERT INTO country (id, country, lat, lng, name) VALUES (239, 'WS', -13.759029, -172.104628999999989, 'Samoa');
INSERT INTO country (id, country, lat, lng, name) VALUES (240, 'XK', 42.6026359999999968, 20.9029769999999999, 'Kosovo');
INSERT INTO country (id, country, lat, lng, name) VALUES (241, 'YE', 15.5527270000000009, 48.5163879999999992, 'Yemen');
INSERT INTO country (id, country, lat, lng, name) VALUES (242, 'YT', -12.8275000000000006, 45.1662439999999989, 'Mayotte');
INSERT INTO country (id, country, lat, lng, name) VALUES (243, 'ZA', -30.5594819999999991, 22.9375059999999991, 'South Africa');
INSERT INTO country (id, country, lat, lng, name) VALUES (244, 'ZM', -13.1338969999999993, 27.8493320000000004, 'Zambia');
INSERT INTO country (id, country, lat, lng, name) VALUES (245, 'ZW', -19.0154379999999996, 29.1548569999999998, 'Zimbabwe');
INSERT INTO country (id, country, lat, lng, name) VALUES (143, 'MM', 21.913965000000001, 95.9562229999999943, 'Myanmar');
INSERT INTO country (id, country, lat, lng, name) VALUES (246, 'SSD', 6.87699200000000044, 31.3069789999999983, 'South Sudan');
INSERT INTO country (id, country, lat, lng, name) VALUES (141, 'MK', 41.6086349999999996, 21.7452749999999995, 'Macedonia');
INSERT INTO country (id, country, lat, lng, name) VALUES (38, 'CD', -4.03833299999999973, 21.7586639999999996, 'Democratic Republic of the Congo');
INSERT INTO country (id, country, lat, lng, name) VALUES (247, 'SOL', 9.69507499999999922, 47.4709810000000019, 'Somaliland');


--
-- Name: country_id_seq; Type: SEQUENCE SET; Schema: public; Owner: Roman
--

SELECT pg_catalog.setval('country_id_seq', 247, true);


--
-- PostgreSQL database dump complete
--


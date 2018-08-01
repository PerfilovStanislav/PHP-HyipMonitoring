/*
Navicat PGSQL Data Transfer

Source Server         : localhost
Source Server Version : 90602
Source Host           : localhost:5432
Source Database       : HyipMonitoring
Source Schema         : public

Target Server Type    : PGSQL
Target Server Version : 90602
File Encoding         : 65001

Date: 2018-08-01 23:40:16
*/


-- ----------------------------
-- Sequence structure for message_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."message_seq";
CREATE SEQUENCE "public"."message_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 310
 CACHE 1;
SELECT setval('"public"."message_seq"', 310, true);

-- ----------------------------
-- Sequence structure for project_langs_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."project_langs_seq";
CREATE SEQUENCE "public"."project_langs_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 28
 CACHE 1;
SELECT setval('"public"."project_langs_seq"', 28, true);

-- ----------------------------
-- Sequence structure for project_plans_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."project_plans_seq";
CREATE SEQUENCE "public"."project_plans_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 48
 CACHE 1;
SELECT setval('"public"."project_plans_seq"', 48, true);

-- ----------------------------
-- Sequence structure for project_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."project_seq";
CREATE SEQUENCE "public"."project_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 141
 CACHE 1;
SELECT setval('"public"."project_seq"', 141, true);

-- ----------------------------
-- Sequence structure for session_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."session_seq";
CREATE SEQUENCE "public"."session_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 25
 CACHE 1;
SELECT setval('"public"."session_seq"', 25, true);

-- ----------------------------
-- Sequence structure for users_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."users_seq";
CREATE SEQUENCE "public"."users_seq"
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 30
 CACHE 1;
SELECT setval('"public"."users_seq"', 30, true);

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS "public"."country";
CREATE TABLE "public"."country" (
"id" int2 NOT NULL,
"name" varchar(64) COLLATE "default" NOT NULL,
"shortname" varchar(2) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO "public"."country" VALUES ('1', 'Afghanistan', 'AF');
INSERT INTO "public"."country" VALUES ('2', 'Albania', 'AL');
INSERT INTO "public"."country" VALUES ('3', 'Algeria', 'DZ');
INSERT INTO "public"."country" VALUES ('4', 'American Samoa', 'AS');
INSERT INTO "public"."country" VALUES ('5', 'Andorra', 'AD');
INSERT INTO "public"."country" VALUES ('6', 'Angola', 'AO');
INSERT INTO "public"."country" VALUES ('7', 'Anguilla', 'AI');
INSERT INTO "public"."country" VALUES ('9', 'Antigua and Barbuda', 'AG');
INSERT INTO "public"."country" VALUES ('10', 'Argentina', 'AR');
INSERT INTO "public"."country" VALUES ('11', 'Armenia', 'AM');
INSERT INTO "public"."country" VALUES ('12', 'Aruba', 'AW');
INSERT INTO "public"."country" VALUES ('13', 'Australia', 'AU');
INSERT INTO "public"."country" VALUES ('14', 'Austria', 'AT');
INSERT INTO "public"."country" VALUES ('15', 'Azerbaijan', 'AZ');
INSERT INTO "public"."country" VALUES ('16', 'Bahamas', 'BS');
INSERT INTO "public"."country" VALUES ('17', 'Bahrain', 'BH');
INSERT INTO "public"."country" VALUES ('18', 'Bangladesh', 'BD');
INSERT INTO "public"."country" VALUES ('19', 'Barbados', 'BB');
INSERT INTO "public"."country" VALUES ('20', 'Belarus', 'BY');
INSERT INTO "public"."country" VALUES ('21', 'Belgium', 'BE');
INSERT INTO "public"."country" VALUES ('22', 'Belize', 'BZ');
INSERT INTO "public"."country" VALUES ('23', 'Benin', 'BJ');
INSERT INTO "public"."country" VALUES ('24', 'Bermuda', 'BM');
INSERT INTO "public"."country" VALUES ('25', 'Bhutan', 'BT');
INSERT INTO "public"."country" VALUES ('26', 'Bolivia', 'BO');
INSERT INTO "public"."country" VALUES ('27', 'Bosnia and Herzegovina', 'BA');
INSERT INTO "public"."country" VALUES ('28', 'Botswana', 'BW');
INSERT INTO "public"."country" VALUES ('30', 'Brazil', 'BR');
INSERT INTO "public"."country" VALUES ('33', 'British Virgin Islands', 'VG');
INSERT INTO "public"."country" VALUES ('34', 'Brunei', 'BN');
INSERT INTO "public"."country" VALUES ('35', 'Bulgaria', 'BG');
INSERT INTO "public"."country" VALUES ('36', 'Burkina Faso', 'BF');
INSERT INTO "public"."country" VALUES ('37', 'Burundi', 'BI');
INSERT INTO "public"."country" VALUES ('38', 'Cambodia', 'KH');
INSERT INTO "public"."country" VALUES ('39', 'Cameroon', 'CM');
INSERT INTO "public"."country" VALUES ('40', 'Canada', 'CA');
INSERT INTO "public"."country" VALUES ('42', 'Cape Verde', 'CV');
INSERT INTO "public"."country" VALUES ('43', 'Cayman Islands', 'KY');
INSERT INTO "public"."country" VALUES ('44', 'Central African Republic', 'CF');
INSERT INTO "public"."country" VALUES ('45', 'Chad', 'TD');
INSERT INTO "public"."country" VALUES ('46', 'Chile', 'CL');
INSERT INTO "public"."country" VALUES ('47', 'China', 'CN');
INSERT INTO "public"."country" VALUES ('50', 'Colombia', 'CO');
INSERT INTO "public"."country" VALUES ('51', 'Comoros', 'KM');
INSERT INTO "public"."country" VALUES ('52', 'Congo - Brazzaville', 'CG');
INSERT INTO "public"."country" VALUES ('53', 'Congo - Kinshasa', 'CD');
INSERT INTO "public"."country" VALUES ('54', 'Cook Islands', 'CK');
INSERT INTO "public"."country" VALUES ('55', 'Costa Rica', 'CR');
INSERT INTO "public"."country" VALUES ('56', 'Croatia', 'HR');
INSERT INTO "public"."country" VALUES ('57', 'Cuba', 'CU');
INSERT INTO "public"."country" VALUES ('58', 'Cyprus', 'CY');
INSERT INTO "public"."country" VALUES ('59', 'Czech Republic', 'CZ');
INSERT INTO "public"."country" VALUES ('60', 'Côte d’Ivoire', 'CI');
INSERT INTO "public"."country" VALUES ('61', 'Denmark', 'DK');
INSERT INTO "public"."country" VALUES ('62', 'Djibouti', 'DJ');
INSERT INTO "public"."country" VALUES ('63', 'Dominica', 'DM');
INSERT INTO "public"."country" VALUES ('64', 'Dominican Republic', 'DO');
INSERT INTO "public"."country" VALUES ('67', 'Ecuador', 'EC');
INSERT INTO "public"."country" VALUES ('68', 'Egypt', 'EG');
INSERT INTO "public"."country" VALUES ('69', 'El Salvador', 'SV');
INSERT INTO "public"."country" VALUES ('70', 'Equatorial Guinea', 'GQ');
INSERT INTO "public"."country" VALUES ('71', 'Eritrea', 'ER');
INSERT INTO "public"."country" VALUES ('72', 'Estonia', 'EE');
INSERT INTO "public"."country" VALUES ('73', 'Ethiopia', 'ET');
INSERT INTO "public"."country" VALUES ('75', 'Faroe Islands', 'FO');
INSERT INTO "public"."country" VALUES ('76', 'Fiji', 'FJ');
INSERT INTO "public"."country" VALUES ('77', 'Finland', 'FI');
INSERT INTO "public"."country" VALUES ('78', 'France', 'FR');
INSERT INTO "public"."country" VALUES ('80', 'French Polynesia', 'PF');
INSERT INTO "public"."country" VALUES ('83', 'Gabon', 'GA');
INSERT INTO "public"."country" VALUES ('84', 'Gambia', 'GM');
INSERT INTO "public"."country" VALUES ('85', 'Georgia', 'GE');
INSERT INTO "public"."country" VALUES ('86', 'Germany', 'DE');
INSERT INTO "public"."country" VALUES ('87', 'Ghana', 'GH');
INSERT INTO "public"."country" VALUES ('88', 'Gibraltar', 'GI');
INSERT INTO "public"."country" VALUES ('89', 'Greece', 'GR');
INSERT INTO "public"."country" VALUES ('90', 'Greenland', 'GL');
INSERT INTO "public"."country" VALUES ('91', 'Grenada', 'GD');
INSERT INTO "public"."country" VALUES ('92', 'Guadeloupe', 'GP');
INSERT INTO "public"."country" VALUES ('93', 'Guam', 'GU');
INSERT INTO "public"."country" VALUES ('94', 'Guatemala', 'GT');
INSERT INTO "public"."country" VALUES ('95', 'Guernsey', 'GG');
INSERT INTO "public"."country" VALUES ('96', 'Guinea', 'GN');
INSERT INTO "public"."country" VALUES ('97', 'Guinea-Bissau', 'GW');
INSERT INTO "public"."country" VALUES ('98', 'Guyana', 'GY');
INSERT INTO "public"."country" VALUES ('99', 'Haiti', 'HT');
INSERT INTO "public"."country" VALUES ('101', 'Honduras', 'HN');
INSERT INTO "public"."country" VALUES ('102', 'Hong Kong SAR China', 'HK');
INSERT INTO "public"."country" VALUES ('103', 'Hungary', 'HU');
INSERT INTO "public"."country" VALUES ('104', 'Iceland', 'IS');
INSERT INTO "public"."country" VALUES ('105', 'India', 'IN');
INSERT INTO "public"."country" VALUES ('106', 'Indonesia', 'ID');
INSERT INTO "public"."country" VALUES ('107', 'Iran', 'IR');
INSERT INTO "public"."country" VALUES ('108', 'Iraq', 'IQ');
INSERT INTO "public"."country" VALUES ('109', 'Ireland', 'IE');
INSERT INTO "public"."country" VALUES ('110', 'Isle of Man', 'IM');
INSERT INTO "public"."country" VALUES ('111', 'Israel', 'IL');
INSERT INTO "public"."country" VALUES ('112', 'Italy', 'IT');
INSERT INTO "public"."country" VALUES ('113', 'Jamaica', 'JM');
INSERT INTO "public"."country" VALUES ('114', 'Japan', 'JP');
INSERT INTO "public"."country" VALUES ('115', 'Jersey', 'JE');
INSERT INTO "public"."country" VALUES ('117', 'Jordan', 'JO');
INSERT INTO "public"."country" VALUES ('118', 'Kazakhstan', 'KZ');
INSERT INTO "public"."country" VALUES ('119', 'Kenya', 'KE');
INSERT INTO "public"."country" VALUES ('120', 'Kiribati', 'KI');
INSERT INTO "public"."country" VALUES ('121', 'Kuwait', 'KW');
INSERT INTO "public"."country" VALUES ('122', 'Kyrgyzstan', 'KG');
INSERT INTO "public"."country" VALUES ('123', 'Laos', 'LA');
INSERT INTO "public"."country" VALUES ('124', 'Latvia', 'LV');
INSERT INTO "public"."country" VALUES ('125', 'Lebanon', 'LB');
INSERT INTO "public"."country" VALUES ('126', 'Lesotho', 'LS');
INSERT INTO "public"."country" VALUES ('127', 'Liberia', 'LR');
INSERT INTO "public"."country" VALUES ('128', 'Libya', 'LY');
INSERT INTO "public"."country" VALUES ('129', 'Liechtenstein', 'LI');
INSERT INTO "public"."country" VALUES ('130', 'Lithuania', 'LT');
INSERT INTO "public"."country" VALUES ('131', 'Luxembourg', 'LU');
INSERT INTO "public"."country" VALUES ('132', 'Macau SAR China', 'MO');
INSERT INTO "public"."country" VALUES ('133', 'Macedonia', 'MK');
INSERT INTO "public"."country" VALUES ('134', 'Madagascar', 'MG');
INSERT INTO "public"."country" VALUES ('135', 'Malawi', 'MW');
INSERT INTO "public"."country" VALUES ('136', 'Malaysia', 'MY');
INSERT INTO "public"."country" VALUES ('137', 'Maldives', 'MV');
INSERT INTO "public"."country" VALUES ('138', 'Mali', 'ML');
INSERT INTO "public"."country" VALUES ('139', 'Malta', 'MT');
INSERT INTO "public"."country" VALUES ('140', 'Marshall Islands', 'MH');
INSERT INTO "public"."country" VALUES ('141', 'Martinique', 'MQ');
INSERT INTO "public"."country" VALUES ('142', 'Mauritania', 'MR');
INSERT INTO "public"."country" VALUES ('143', 'Mauritius', 'MU');
INSERT INTO "public"."country" VALUES ('146', 'Mexico', 'MX');
INSERT INTO "public"."country" VALUES ('147', 'Micronesia', 'FM');
INSERT INTO "public"."country" VALUES ('149', 'Moldova', 'MD');
INSERT INTO "public"."country" VALUES ('150', 'Monaco', 'MC');
INSERT INTO "public"."country" VALUES ('151', 'Mongolia', 'MN');
INSERT INTO "public"."country" VALUES ('153', 'Montserrat', 'MS');
INSERT INTO "public"."country" VALUES ('154', 'Morocco', 'MA');
INSERT INTO "public"."country" VALUES ('155', 'Mozambique', 'MZ');
INSERT INTO "public"."country" VALUES ('156', 'Myanmar [Burma]', 'MM');
INSERT INTO "public"."country" VALUES ('157', 'Namibia', 'NA');
INSERT INTO "public"."country" VALUES ('158', 'Nauru', 'NR');
INSERT INTO "public"."country" VALUES ('159', 'Nepal', 'NP');
INSERT INTO "public"."country" VALUES ('160', 'Netherlands', 'NL');
INSERT INTO "public"."country" VALUES ('161', 'Netherlands Antilles', 'AN');
INSERT INTO "public"."country" VALUES ('163', 'New Caledonia', 'NC');
INSERT INTO "public"."country" VALUES ('164', 'New Zealand', 'NZ');
INSERT INTO "public"."country" VALUES ('165', 'Nicaragua', 'NI');
INSERT INTO "public"."country" VALUES ('166', 'Niger', 'NE');
INSERT INTO "public"."country" VALUES ('167', 'Nigeria', 'NG');
INSERT INTO "public"."country" VALUES ('170', 'North Korea', 'KP');
INSERT INTO "public"."country" VALUES ('173', 'Norway', 'NO');
INSERT INTO "public"."country" VALUES ('174', 'Oman', 'OM');
INSERT INTO "public"."country" VALUES ('176', 'Pakistan', 'PK');
INSERT INTO "public"."country" VALUES ('177', 'Palau', 'PW');
INSERT INTO "public"."country" VALUES ('178', 'Palestinian Territories', 'PS');
INSERT INTO "public"."country" VALUES ('179', 'Panama', 'PA');
INSERT INTO "public"."country" VALUES ('181', 'Papua New Guinea', 'PG');
INSERT INTO "public"."country" VALUES ('182', 'Paraguay', 'PY');
INSERT INTO "public"."country" VALUES ('184', 'Peru', 'PE');
INSERT INTO "public"."country" VALUES ('185', 'Philippines', 'PH');
INSERT INTO "public"."country" VALUES ('187', 'Poland', 'PL');
INSERT INTO "public"."country" VALUES ('188', 'Portugal', 'PT');
INSERT INTO "public"."country" VALUES ('189', 'Puerto Rico', 'PR');
INSERT INTO "public"."country" VALUES ('190', 'Qatar', 'QA');
INSERT INTO "public"."country" VALUES ('191', 'Romania', 'RO');
INSERT INTO "public"."country" VALUES ('192', 'Russia', 'RU');
INSERT INTO "public"."country" VALUES ('193', 'Rwanda', 'RW');
INSERT INTO "public"."country" VALUES ('194', 'Réunion', 'RE');
INSERT INTO "public"."country" VALUES ('197', 'Saint Kitts and Nevis', 'KN');
INSERT INTO "public"."country" VALUES ('198', 'Saint Lucia', 'LC');
INSERT INTO "public"."country" VALUES ('201', 'Saint Vincent and the Grenadines', 'VC');
INSERT INTO "public"."country" VALUES ('202', 'Samoa', 'WS');
INSERT INTO "public"."country" VALUES ('203', 'San Marino', 'SM');
INSERT INTO "public"."country" VALUES ('204', 'Saudi Arabia', 'SA');
INSERT INTO "public"."country" VALUES ('205', 'Senegal', 'SN');
INSERT INTO "public"."country" VALUES ('206', 'Serbia', 'RS');
INSERT INTO "public"."country" VALUES ('207', 'Montenegro', 'CS');
INSERT INTO "public"."country" VALUES ('208', 'Seychelles', 'SC');
INSERT INTO "public"."country" VALUES ('209', 'Sierra Leone', 'SL');
INSERT INTO "public"."country" VALUES ('210', 'Singapore', 'SG');
INSERT INTO "public"."country" VALUES ('211', 'Slovakia', 'SK');
INSERT INTO "public"."country" VALUES ('212', 'Slovenia', 'SI');
INSERT INTO "public"."country" VALUES ('213', 'Solomon Islands', 'SB');
INSERT INTO "public"."country" VALUES ('214', 'Somalia', 'SO');
INSERT INTO "public"."country" VALUES ('215', 'South Africa', 'ZA');
INSERT INTO "public"."country" VALUES ('217', 'South Korea', 'KR');
INSERT INTO "public"."country" VALUES ('218', 'Spain', 'ES');
INSERT INTO "public"."country" VALUES ('219', 'Sri Lanka', 'LK');
INSERT INTO "public"."country" VALUES ('220', 'Sudan', 'SD');
INSERT INTO "public"."country" VALUES ('221', 'Suriname', 'SR');
INSERT INTO "public"."country" VALUES ('223', 'Swaziland', 'SZ');
INSERT INTO "public"."country" VALUES ('224', 'Sweden', 'SE');
INSERT INTO "public"."country" VALUES ('225', 'Switzerland', 'CH');
INSERT INTO "public"."country" VALUES ('226', 'Syria', 'SY');
INSERT INTO "public"."country" VALUES ('227', 'São Tomé and Príncipe', 'ST');
INSERT INTO "public"."country" VALUES ('228', 'Taiwan', 'TW');
INSERT INTO "public"."country" VALUES ('229', 'Tajikistan', 'TJ');
INSERT INTO "public"."country" VALUES ('230', 'Tanzania', 'TZ');
INSERT INTO "public"."country" VALUES ('231', 'Thailand', 'TH');
INSERT INTO "public"."country" VALUES ('232', 'Timor-Leste', 'TL');
INSERT INTO "public"."country" VALUES ('233', 'Togo', 'TG');
INSERT INTO "public"."country" VALUES ('235', 'Tonga', 'TO');
INSERT INTO "public"."country" VALUES ('236', 'Trinidad and Tobago', 'TT');
INSERT INTO "public"."country" VALUES ('237', 'Tunisia', 'TN');
INSERT INTO "public"."country" VALUES ('238', 'Turkey', 'TR');
INSERT INTO "public"."country" VALUES ('239', 'Turkmenistan', 'TM');
INSERT INTO "public"."country" VALUES ('240', 'Turks and Caicos Islands', 'TC');
INSERT INTO "public"."country" VALUES ('241', 'Tuvalu', 'TV');
INSERT INTO "public"."country" VALUES ('244', 'U.S. Virgin Islands', 'VI');
INSERT INTO "public"."country" VALUES ('245', 'Uganda', 'UG');
INSERT INTO "public"."country" VALUES ('246', 'Ukraine', 'UA');
INSERT INTO "public"."country" VALUES ('248', 'United Arab Emirates', 'AE');
INSERT INTO "public"."country" VALUES ('249', 'United Kingdom', 'GB');
INSERT INTO "public"."country" VALUES ('250', 'United States', 'US');
INSERT INTO "public"."country" VALUES ('252', 'Uruguay', 'UY');
INSERT INTO "public"."country" VALUES ('253', 'Uzbekistan', 'UZ');
INSERT INTO "public"."country" VALUES ('254', 'Vanuatu', 'VU');
INSERT INTO "public"."country" VALUES ('255', 'Vatican City', 'VA');
INSERT INTO "public"."country" VALUES ('256', 'Venezuela', 'VE');
INSERT INTO "public"."country" VALUES ('257', 'Vietnam', 'VN');
INSERT INTO "public"."country" VALUES ('260', 'Western Sahara', 'EH');
INSERT INTO "public"."country" VALUES ('261', 'Yemen', 'YE');
INSERT INTO "public"."country" VALUES ('262', 'Zambia', 'ZM');
INSERT INTO "public"."country" VALUES ('263', 'Zimbabwe', 'ZW');

-- ----------------------------
-- Table structure for currency_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."currency_type";
CREATE TABLE "public"."currency_type" (
"id" int2 NOT NULL,
"name" varchar(3) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of currency_type
-- ----------------------------
INSERT INTO "public"."currency_type" VALUES ('1', 'usd');
INSERT INTO "public"."currency_type" VALUES ('2', 'eur');
INSERT INTO "public"."currency_type" VALUES ('3', 'btc');
INSERT INTO "public"."currency_type" VALUES ('4', 'rub');
INSERT INTO "public"."currency_type" VALUES ('5', 'gbp');
INSERT INTO "public"."currency_type" VALUES ('6', 'jpy');
INSERT INTO "public"."currency_type" VALUES ('7', 'won');
INSERT INTO "public"."currency_type" VALUES ('8', 'inr');

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS "public"."languages";
CREATE TABLE "public"."languages" (
"id" int2 NOT NULL,
"name" varchar(255) COLLATE "default" NOT NULL,
"shortname" char(2) COLLATE "default" NOT NULL,
"own_name" varchar(255) COLLATE "default" NOT NULL,
"flag" varchar(2) COLLATE "default",
"pos" int2,
"available" bool DEFAULT false
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of languages
-- ----------------------------
INSERT INTO "public"."languages" VALUES ('183', 'Afar', 'aa', 'Afaraf', 'dj', null, 'f');
INSERT INTO "public"."languages" VALUES ('184', 'Abkhaz', 'ab', 'аҧсуа', 'ge', null, 'f');
INSERT INTO "public"."languages" VALUES ('186', 'Afrikaans', 'af', 'Afrikaans', 'za', null, 'f');
INSERT INTO "public"."languages" VALUES ('187', 'Akan', 'ak', 'Akan', 'gh', null, 'f');
INSERT INTO "public"."languages" VALUES ('188', 'Amharic', 'am', 'አማርኛ', 'et', '33', 'f');
INSERT INTO "public"."languages" VALUES ('190', 'Arabic', 'ar', 'العربية', 'ae', '6', 'f');
INSERT INTO "public"."languages" VALUES ('191', 'Assamese', 'as', 'অসমীয়া', 'in', null, 'f');
INSERT INTO "public"."languages" VALUES ('192', 'Avaric', 'av', 'авар мац', 'ru', null, 'f');
INSERT INTO "public"."languages" VALUES ('193', 'Aymara', 'ay', 'aymar aru', 'pe', null, 'f');
INSERT INTO "public"."languages" VALUES ('194', 'Azerbaijani', 'az', 'azərbaycan', 'az', '23', 'f');
INSERT INTO "public"."languages" VALUES ('195', 'Bashkir', 'ba', 'башҡорт теле', 'ru', null, 'f');
INSERT INTO "public"."languages" VALUES ('196', 'Belarusian', 'be', 'Беларуская', 'by', '31', 'f');
INSERT INTO "public"."languages" VALUES ('197', 'Bulgarian', 'bg', 'български език', 'bg', null, 'f');
INSERT INTO "public"."languages" VALUES ('199', 'Bislama', 'bi', 'Bislama', 'vu', null, 'f');
INSERT INTO "public"."languages" VALUES ('200', 'Bambara', 'bm', 'bamanankan', 'ml', null, 'f');
INSERT INTO "public"."languages" VALUES ('201', 'Bengali', 'bn', 'বাংলা', 'bd', '8', 'f');
INSERT INTO "public"."languages" VALUES ('202', 'Tibetan, Central', 'bo', 'བོད་ཡིག', 'cn', null, 'f');
INSERT INTO "public"."languages" VALUES ('205', 'Catalan; Valencian', 'ca', 'Català', 'es', null, 'f');
INSERT INTO "public"."languages" VALUES ('206', 'Chechen', 'ce', 'нохчийн мотт', 'ru', null, 'f');
INSERT INTO "public"."languages" VALUES ('207', 'Chamorro', 'ch', 'Chamoru', 'gu', null, 'f');
INSERT INTO "public"."languages" VALUES ('210', 'Czech', 'cs', 'česky, čeština', 'cz', '30', 'f');
INSERT INTO "public"."languages" VALUES ('212', 'Chuvash', 'cv', 'чӑваш чӗлхи', 'ru', null, 'f');
INSERT INTO "public"."languages" VALUES ('214', 'Danish', 'da', 'dansk', 'dk', null, 'f');
INSERT INTO "public"."languages" VALUES ('215', 'German', 'de', 'Deutsch', 'de', '11', 'f');
INSERT INTO "public"."languages" VALUES ('216', 'Dhivehi, Maldivian', 'dv', 'ދިވެހި', 'mv', null, 'f');
INSERT INTO "public"."languages" VALUES ('217', 'Ewe', 'ee', 'Eʋegbe', 'gh', null, 'f');
INSERT INTO "public"."languages" VALUES ('218', 'Greek, Modern', 'el', 'Ελληνικά', 'gr', '29', 'f');
INSERT INTO "public"."languages" VALUES ('219', 'English', 'en', 'English', 'us', '1', 't');
INSERT INTO "public"."languages" VALUES ('220', 'Esperanto', 'eo', 'Esperanto', null, null, 'f');
INSERT INTO "public"."languages" VALUES ('221', 'Spanish', 'es', 'español', 'es', '4', 'f');
INSERT INTO "public"."languages" VALUES ('222', 'Estonian', 'et', 'eesti', 'ee', null, 'f');
INSERT INTO "public"."languages" VALUES ('223', 'Basque', 'eu', 'euskara, euskera', 'es', null, 'f');
INSERT INTO "public"."languages" VALUES ('224', 'Persian', 'fa', 'فارسی', 'ir', '24', 'f');
INSERT INTO "public"."languages" VALUES ('225', 'Fulah, Pulaar', 'ff', 'Fulfulde, Pulaar', 'ng', null, 'f');
INSERT INTO "public"."languages" VALUES ('226', 'Finnish', 'fi', 'suomi', 'fi', null, 'f');
INSERT INTO "public"."languages" VALUES ('227', 'Fijian', 'fj', 'vosa Vakaviti', 'fj', null, 'f');
INSERT INTO "public"."languages" VALUES ('228', 'Faroese', 'fo', 'føroyskt', 'fo', null, 'f');
INSERT INTO "public"."languages" VALUES ('229', 'French', 'fr', 'français', 'fr', '15', 'f');
INSERT INTO "public"."languages" VALUES ('231', 'Irish', 'ga', 'Gaeilge', 'ie', null, 'f');
INSERT INTO "public"."languages" VALUES ('233', 'Galician', 'gl', 'Galego', 'es', null, 'f');
INSERT INTO "public"."languages" VALUES ('234', 'Guaraní', 'gn', 'Avañeẽ', 'py', null, 'f');
INSERT INTO "public"."languages" VALUES ('235', 'Gujarati', 'gu', 'ગુજરાતી', 'in', null, 'f');
INSERT INTO "public"."languages" VALUES ('237', 'Hausa', 'ha', 'Hausa, هَوُسَ', 'ng', null, 'f');
INSERT INTO "public"."languages" VALUES ('238', 'Hebrew (modern)', 'he', 'עברית', 'il', null, 'f');
INSERT INTO "public"."languages" VALUES ('239', 'Hindi', 'hi', 'हिन्दी, हिंदी', 'in', '5', 'f');
INSERT INTO "public"."languages" VALUES ('241', 'Croatian', 'hr', 'hrvatski', 'hr', null, 'f');
INSERT INTO "public"."languages" VALUES ('242', 'Haitian Creole', 'ht', 'Kreyòl ayisyen', 'ht', null, 'f');
INSERT INTO "public"."languages" VALUES ('243', 'Hungarian', 'hu', 'Magyar', 'hu', null, 'f');
INSERT INTO "public"."languages" VALUES ('244', 'Armenian', 'hy', 'Հայերեն', 'am', null, 'f');
INSERT INTO "public"."languages" VALUES ('245', 'Herero', 'hz', 'Otjiherero', 'na', null, 'f');
INSERT INTO "public"."languages" VALUES ('247', 'Indonesian', 'id', 'Bahasa Indonesia', 'id', null, 'f');
INSERT INTO "public"."languages" VALUES ('249', 'Igbo', 'ig', 'Asụsụ Igbo', 'ng', null, 'f');
INSERT INTO "public"."languages" VALUES ('252', 'Ido', 'io', 'Ido', 'ng', null, 'f');
INSERT INTO "public"."languages" VALUES ('253', 'Icelandic', 'is', 'Íslenska', 'is', null, 'f');
INSERT INTO "public"."languages" VALUES ('254', 'Italian', 'it', 'Italiano', 'it', '19', 'f');
INSERT INTO "public"."languages" VALUES ('256', 'Japanese', 'ja', '日本語', 'jp', '9', 'f');
INSERT INTO "public"."languages" VALUES ('257', 'Javanese', 'jv', 'basa Jawa', 'id', '12', 'f');
INSERT INTO "public"."languages" VALUES ('258', 'Georgian', 'ka', 'ქართული', 'ge', null, 'f');
INSERT INTO "public"."languages" VALUES ('259', 'Kongo', 'kg', 'KiKongo', 'cd', null, 'f');
INSERT INTO "public"."languages" VALUES ('260', 'Kikuyu, Gikuyu', 'ki', 'Gĩkũyũ', 'ke', null, 'f');
INSERT INTO "public"."languages" VALUES ('262', 'Kazakh', 'kk', 'Қазақ тілі', 'kz', null, 'f');
INSERT INTO "public"."languages" VALUES ('264', 'Khmer', 'km', 'ភាសាខ្មែរ', 'kh', null, 'f');
INSERT INTO "public"."languages" VALUES ('265', 'Kannada', 'kn', 'ಕನ್ನಡ', 'in', null, 'f');
INSERT INTO "public"."languages" VALUES ('266', 'Korean', 'ko', '한국어 , 조선말', 'kr', '14', 'f');
INSERT INTO "public"."languages" VALUES ('267', 'Kanuri', 'kr', 'Kanuri', 'ng', null, 'f');
INSERT INTO "public"."languages" VALUES ('269', 'Kurdish', 'ku', 'Kurdî, كوردی‎', 'tr', null, 'f');
INSERT INTO "public"."languages" VALUES ('272', 'Kirghiz, Kyrgyz', 'ky', 'кыргыз тили', 'kg', null, 'f');
INSERT INTO "public"."languages" VALUES ('274', 'Luxembourgish', 'lb', 'Lëtzebuergesch', 'lu', null, 'f');
INSERT INTO "public"."languages" VALUES ('276', 'Limburgish', 'li', 'Limburgs', 'sl', null, 'f');
INSERT INTO "public"."languages" VALUES ('278', 'Lao', 'lo', 'ພາສາລາວ', 'th', null, 'f');
INSERT INTO "public"."languages" VALUES ('279', 'Lithuanian', 'lt', 'lietuvių kalba', 'lt', null, 'f');
INSERT INTO "public"."languages" VALUES ('280', 'Luba-Katanga', 'lu', 'Kiluba', 'cd', null, 'f');
INSERT INTO "public"."languages" VALUES ('281', 'Latvian', 'lv', 'latviešu valoda', 'lv', null, 'f');
INSERT INTO "public"."languages" VALUES ('282', 'Malagasy', 'mg', 'Malagasy', 'mg', null, 'f');
INSERT INTO "public"."languages" VALUES ('283', 'Marshallese', 'mh', 'Kajin M̧ajeļ', 'mh', null, 'f');
INSERT INTO "public"."languages" VALUES ('284', 'Māori', 'mi', 'te reo Māori', 'nz', null, 'f');
INSERT INTO "public"."languages" VALUES ('285', 'Macedonian', 'mk', 'македонски', 'mk', null, 'f');
INSERT INTO "public"."languages" VALUES ('286', 'Malayalam', 'ml', 'മലയാളം', 'id', null, 'f');
INSERT INTO "public"."languages" VALUES ('287', 'Mongolian', 'mn', 'монгол', 'mn', null, 'f');
INSERT INTO "public"."languages" VALUES ('288', 'Marathi (Marāṭhī)', 'mr', 'मराठी', 'in', null, 'f');
INSERT INTO "public"."languages" VALUES ('289', 'Malay', 'ms', 'بهاس ملايو‎', 'my', '18', 'f');
INSERT INTO "public"."languages" VALUES ('290', 'Maltese', 'mt', 'Malti', 'mt', null, 'f');
INSERT INTO "public"."languages" VALUES ('291', 'Burmese', 'my', 'ဗမာစာ', 'mm', '22', 'f');
INSERT INTO "public"."languages" VALUES ('292', 'Nauru', 'na', 'Ekakairũ Naoero', 'nr', null, 'f');
INSERT INTO "public"."languages" VALUES ('294', 'North Ndebele', 'nd', 'Northern Ndebele', 'zw', null, 'f');
INSERT INTO "public"."languages" VALUES ('295', 'Nepali', 'ne', 'नेपाली', 'np', null, 'f');
INSERT INTO "public"."languages" VALUES ('297', 'Dutch', 'nl', 'Nederlands, Vlaams', 'nl', '28', 'f');
INSERT INTO "public"."languages" VALUES ('299', 'Norwegian', 'no', 'Norsk', 'no', null, 'f');
INSERT INTO "public"."languages" VALUES ('300', 'South Ndebele', 'nr', 'Southern Ndebele', 'zw', null, 'f');
INSERT INTO "public"."languages" VALUES ('302', 'Chichewa, Nyanja', 'ny', 'chiCheŵa', 'zm', null, 'f');
INSERT INTO "public"."languages" VALUES ('305', 'Oromo', 'om', 'Afaan Oromoo', 'et', null, 'f');
INSERT INTO "public"."languages" VALUES ('307', 'Ossetian', 'os', 'ирон æвзаг', 'ge', null, 'f');
INSERT INTO "public"."languages" VALUES ('308', 'Panjabi, Punjabi', 'pa', 'ਪੰਜਾਬੀ, پنجابی‎', 'pk', '10', 'f');
INSERT INTO "public"."languages" VALUES ('310', 'Polish', 'pl', 'polski', 'pl', '21', 'f');
INSERT INTO "public"."languages" VALUES ('311', 'Pashto, Pushto', 'ps', 'پښتو', 'af', '25', 'f');
INSERT INTO "public"."languages" VALUES ('312', 'Portuguese', 'pt', 'Português', 'pt', '7', 'f');
INSERT INTO "public"."languages" VALUES ('313', 'Quechua', 'qu', 'Runa Simi, Kichwa', 'gt', null, 'f');
INSERT INTO "public"."languages" VALUES ('314', 'Romansh', 'rm', 'rumantsch grischun', 'ch', null, 'f');
INSERT INTO "public"."languages" VALUES ('315', 'Kirundi', 'rn', 'kiRundi', 'bi', null, 'f');
INSERT INTO "public"."languages" VALUES ('316', 'Romanian, Moldavian', 'ro', 'română', 'ro', null, 'f');
INSERT INTO "public"."languages" VALUES ('317', 'Russian', 'ru', 'русский', 'ru', '2', 't');
INSERT INTO "public"."languages" VALUES ('320', 'Sardinian', 'sc', 'sardu', 'it', null, 'f');
INSERT INTO "public"."languages" VALUES ('321', 'Sindhi', 'sd', 'सिन्धी, سنڌي، سندھی‎', 'pk', null, 'f');
INSERT INTO "public"."languages" VALUES ('323', 'Sango', 'sg', 'yângâ tî sängö', 'cg', null, 'f');
INSERT INTO "public"."languages" VALUES ('324', 'Sinhalese', 'si', 'සිංහල', 'lk', null, 'f');
INSERT INTO "public"."languages" VALUES ('325', 'Slovak', 'sk', 'slovenčina', 'sk', null, 'f');
INSERT INTO "public"."languages" VALUES ('326', 'Slovene', 'sl', 'slovenščina', 'si', null, 'f');
INSERT INTO "public"."languages" VALUES ('327', 'Samoan', 'sm', 'gagana faa Samoa', 'ws', null, 'f');
INSERT INTO "public"."languages" VALUES ('328', 'Shona', 'sn', 'chiShona', 'zw', null, 'f');
INSERT INTO "public"."languages" VALUES ('329', 'Somali', 'so', 'Soomaaliga', 'so', null, 'f');
INSERT INTO "public"."languages" VALUES ('330', 'Albanian', 'sq', 'Shqip', 'al', null, 'f');
INSERT INTO "public"."languages" VALUES ('331', 'Serbian', 'sr', 'српски', 'hr', null, 'f');
INSERT INTO "public"."languages" VALUES ('332', 'Swati', 'ss', 'SiSwati', 'za', null, 'f');
INSERT INTO "public"."languages" VALUES ('333', 'Southern Sotho', 'st', 'Sesotho', 'ls', null, 'f');
INSERT INTO "public"."languages" VALUES ('334', 'Sundanese', 'su', 'Basa Sunda', 'id', null, 'f');
INSERT INTO "public"."languages" VALUES ('335', 'Swedish', 'sv', 'svenska', 'se', null, 'f');
INSERT INTO "public"."languages" VALUES ('336', 'Swahili', 'sw', 'Kiswahili', 'tz', null, 'f');
INSERT INTO "public"."languages" VALUES ('337', 'Tamil', 'ta', 'தமிழ்', 'sg', '16', 'f');
INSERT INTO "public"."languages" VALUES ('338', 'Telugu', 'te', 'తెలుగు', 'in', null, 'f');
INSERT INTO "public"."languages" VALUES ('339', 'Tajik', 'tg', 'тоҷикӣ', 'tj', null, 'f');
INSERT INTO "public"."languages" VALUES ('340', 'Thai', 'th', 'ไทย', 'th', '20', 'f');
INSERT INTO "public"."languages" VALUES ('341', 'Tigrinya', 'ti', 'ትግርኛ', 'et', null, 'f');
INSERT INTO "public"."languages" VALUES ('342', 'Turkmen', 'tk', 'Türkmen', 'tm', null, 'f');
INSERT INTO "public"."languages" VALUES ('343', 'Tagalog', 'tl', 'Wikang Tagalog', 'us', null, 'f');
INSERT INTO "public"."languages" VALUES ('344', 'Tswana', 'tn', 'Setswana', 'za', null, 'f');
INSERT INTO "public"."languages" VALUES ('345', 'Tonga', 'to', 'faka Tonga', 'zm', null, 'f');
INSERT INTO "public"."languages" VALUES ('346', 'Turkish', 'tr', 'Türkçe', 'tr', '17', 'f');
INSERT INTO "public"."languages" VALUES ('347', 'Tsonga', 'ts', 'Xitsonga', 'mz', null, 'f');
INSERT INTO "public"."languages" VALUES ('348', 'Tatar', 'tt', 'татарча', 'ru', null, 'f');
INSERT INTO "public"."languages" VALUES ('350', 'Tahitian', 'ty', 'Reo Tahiti', 'pf', null, 'f');
INSERT INTO "public"."languages" VALUES ('351', 'Uighur, Uyghur', 'ug', 'Uyƣurqə, ئۇيغۇرچە‎', 'ch', null, 'f');
INSERT INTO "public"."languages" VALUES ('352', 'Ukrainian', 'uk', 'українська', 'ua', '32', 'f');
INSERT INTO "public"."languages" VALUES ('353', 'Urdu', 'ur', 'اردو', 'in', null, 'f');
INSERT INTO "public"."languages" VALUES ('354', 'Uzbek', 'uz', 'zbek', 'uz', '26', 'f');
INSERT INTO "public"."languages" VALUES ('355', 'Venda', 've', 'Tshivenḓa', 'za', null, 'f');
INSERT INTO "public"."languages" VALUES ('356', 'Vietnamese', 'vi', 'Tiếng Việt', 'vn', '13', 'f');
INSERT INTO "public"."languages" VALUES ('359', 'Wolof', 'wo', 'Wollof', 'sn', null, 'f');
INSERT INTO "public"."languages" VALUES ('360', 'Xhosa', 'xh', 'isiXhosa', 'za', null, 'f');
INSERT INTO "public"."languages" VALUES ('362', 'Yoruba', 'yo', 'Yorùbá', 'ng', '27', 'f');
INSERT INTO "public"."languages" VALUES ('363', 'Zhuang, Chuang', 'za', 'Saɯ cueŋƅ', 'cn', null, 'f');
INSERT INTO "public"."languages" VALUES ('364', 'Chinese', 'zh', '中文, 汉语, 漢語', 'cn', '3', 'f');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS "public"."message";
CREATE TABLE "public"."message" (
"id" int4 DEFAULT nextval('message_seq'::regclass) NOT NULL,
"date_create" timestamp(1) DEFAULT (now())::timestamp(0) without time zone NOT NULL,
"user_id" int4,
"project_id" int4 NOT NULL,
"lang_id" int2 NOT NULL,
"message" varchar(2047) COLLATE "default" NOT NULL,
"session_id" int4 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO "public"."message" VALUES ('1', '2018-06-14 00:19:53.9', '1', '141', '217', '8', '22');
INSERT INTO "public"."message" VALUES ('6', '2018-06-22 23:07:25', '30', '139', '217', '1', '22');
INSERT INTO "public"."message" VALUES ('10', '2018-06-20 23:50:16.6', null, '141', '217', '2', '22');
INSERT INTO "public"."message" VALUES ('25', '2018-07-20 23:22:30', null, '141', '217', 'Проверка', '24');
INSERT INTO "public"."message" VALUES ('26', '2018-07-20 23:28:38', null, '141', '217', 'Проверка 2', '24');
INSERT INTO "public"."message" VALUES ('27', '2018-07-20 23:29:10', null, '141', '217', 'Проверка 3', '24');
INSERT INTO "public"."message" VALUES ('28', '2018-07-20 23:30:53', null, '141', '217', 'Проверка 4', '24');
INSERT INTO "public"."message" VALUES ('29', '2018-07-21 14:48:11', null, '141', '217', 'Првоерка', '24');
INSERT INTO "public"."message" VALUES ('35', '2018-07-23 23:34:27', null, '141', '217', 'Hello!', '25');
INSERT INTO "public"."message" VALUES ('36', '2018-07-23 23:34:41', null, '141', '217', '22 ', '25');
INSERT INTO "public"."message" VALUES ('37', '2018-07-23 23:35:18', null, '141', '217', 'Hello!', '25');
INSERT INTO "public"."message" VALUES ('38', '2018-07-23 23:35:31', null, '141', '217', 'Hello11', '25');
INSERT INTO "public"."message" VALUES ('39', '2018-07-23 23:35:33', null, '141', '217', 'Hello11fd', '25');
INSERT INTO "public"."message" VALUES ('40', '2018-07-23 23:35:34', null, '141', '217', 'Hello11fd', '25');
INSERT INTO "public"."message" VALUES ('41', '2018-07-23 23:35:34', null, '141', '217', 'Hello11fd', '25');
INSERT INTO "public"."message" VALUES ('42', '2018-07-23 23:35:34', null, '141', '217', 'Hello11fd', '25');
INSERT INTO "public"."message" VALUES ('43', '2018-07-23 23:35:38', null, '141', '217', 'Hello11fd1', '25');
INSERT INTO "public"."message" VALUES ('44', '2018-07-23 23:35:38', null, '141', '217', 'Hello11fd12', '25');
INSERT INTO "public"."message" VALUES ('45', '2018-07-23 23:35:39', null, '141', '217', 'Hello11fd123', '25');
INSERT INTO "public"."message" VALUES ('46', '2018-07-23 23:35:39', null, '141', '217', 'Hello11fd1234', '25');
INSERT INTO "public"."message" VALUES ('47', '2018-07-23 23:35:39', null, '141', '217', 'Hello11fd12345', '25');
INSERT INTO "public"."message" VALUES ('48', '2018-07-23 23:35:39', null, '141', '217', 'Hello11fd123456', '25');
INSERT INTO "public"."message" VALUES ('49', '2018-07-23 23:35:40', null, '141', '217', 'Hello11fd1234564', '25');
INSERT INTO "public"."message" VALUES ('50', '2018-07-23 23:35:40', null, '141', '217', 'Hello11fd123456464', '25');
INSERT INTO "public"."message" VALUES ('51', '2018-07-23 23:35:40', null, '141', '217', 'Hello11fd12345646464', '25');
INSERT INTO "public"."message" VALUES ('52', '2018-07-23 23:35:40', null, '141', '217', 'Hello11fd1234564646464', '25');
INSERT INTO "public"."message" VALUES ('53', '2018-07-23 23:35:40', null, '141', '217', 'Hello11fd123456464646464', '25');
INSERT INTO "public"."message" VALUES ('54', '2018-07-23 23:35:46', null, '141', '217', 'Hello11fd123456464646464105', '25');
INSERT INTO "public"."message" VALUES ('55', '2018-07-23 23:35:46', null, '141', '217', 'Hello11fd123456464646464105105', '25');
INSERT INTO "public"."message" VALUES ('56', '2018-07-23 23:35:46', null, '141', '217', 'Hello11fd1234564646464641051051', '25');
INSERT INTO "public"."message" VALUES ('57', '2018-07-23 23:35:46', null, '141', '217', 'Hello11fd123456464646464105105110', '25');
INSERT INTO "public"."message" VALUES ('58', '2018-07-23 23:35:47', null, '141', '217', 'Hello11fd1234564646464641051051101', '25');
INSERT INTO "public"."message" VALUES ('59', '2018-07-23 23:35:47', null, '141', '217', 'Hello11fd1234564646464641051051101210', '25');
INSERT INTO "public"."message" VALUES ('60', '2018-07-23 23:35:47', null, '141', '217', 'Hello11fd123456464646464105105110121021', '25');
INSERT INTO "public"."message" VALUES ('61', '2018-07-23 23:35:47', null, '141', '217', 'Hello11fd12345646464646410510511012102102', '25');
INSERT INTO "public"."message" VALUES ('62', '2018-07-23 23:35:47', null, '141', '217', 'Hello11fd123456464646464105105110121021021', '25');
INSERT INTO "public"."message" VALUES ('63', '2018-07-23 23:35:48', null, '141', '217', 'Hello11fd123456464646464105105110121021021021', '25');
INSERT INTO "public"."message" VALUES ('64', '2018-07-23 23:35:48', null, '141', '217', 'Hello11fd123456464646464105105110121021021021012', '25');
INSERT INTO "public"."message" VALUES ('65', '2018-07-23 23:35:49', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 ds', '25');
INSERT INTO "public"."message" VALUES ('66', '2018-07-23 23:35:49', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgf', '25');
INSERT INTO "public"."message" VALUES ('67', '2018-07-23 23:35:49', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdg', '25');
INSERT INTO "public"."message" VALUES ('68', '2018-07-23 23:35:49', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfd', '25');
INSERT INTO "public"."message" VALUES ('69', '2018-07-23 23:35:50', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfd', '25');
INSERT INTO "public"."message" VALUES ('70', '2018-07-23 23:35:50', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfd', '25');
INSERT INTO "public"."message" VALUES ('71', '2018-07-23 23:35:50', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfdh', '25');
INSERT INTO "public"."message" VALUES ('72', '2018-07-23 23:35:50', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfdhfd', '25');
INSERT INTO "public"."message" VALUES ('73', '2018-07-23 23:35:50', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfdhfdh', '25');
INSERT INTO "public"."message" VALUES ('74', '2018-07-23 23:35:50', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfdhfdhfdh', '25');
INSERT INTO "public"."message" VALUES ('75', '2018-07-23 23:35:51', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfdhfdhfdhd', '25');
INSERT INTO "public"."message" VALUES ('76', '2018-07-23 23:35:51', null, '141', '217', 'Hello11fd1234564646464641051051101210210210210120 dsgfdgfdgfdhfdhfdhdfh', '25');
INSERT INTO "public"."message" VALUES ('77', '2018-07-23 23:50:11', null, '138', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('78', '2018-07-23 23:50:11', null, '138', '217', '11', '25');
INSERT INTO "public"."message" VALUES ('79', '2018-07-23 23:50:11', null, '138', '217', '111', '25');
INSERT INTO "public"."message" VALUES ('80', '2018-07-23 23:50:18', null, '138', '217', '11112', '25');
INSERT INTO "public"."message" VALUES ('81', '2018-07-23 23:50:21', null, '138', '217', '111123', '25');
INSERT INTO "public"."message" VALUES ('82', '2018-07-26 00:38:04', null, '141', '217', 'проверка', '25');
INSERT INTO "public"."message" VALUES ('83', '2018-07-26 00:38:11', null, '141', '217', 'проверка 2', '25');
INSERT INTO "public"."message" VALUES ('84', '2018-07-26 00:38:17', null, '141', '217', 'проверка 23', '25');
INSERT INTO "public"."message" VALUES ('85', '2018-07-26 00:39:53', null, '141', '217', 'g', '25');
INSERT INTO "public"."message" VALUES ('86', '2018-07-26 00:39:54', null, '141', '217', 'g', '25');
INSERT INTO "public"."message" VALUES ('87', '2018-07-26 00:39:55', null, '141', '217', 'gf', '25');
INSERT INTO "public"."message" VALUES ('88', '2018-07-26 00:39:58', null, '141', '217', 'dffsd', '25');
INSERT INTO "public"."message" VALUES ('89', '2018-07-26 00:40:01', null, '141', '217', 'dffsdreherh', '25');
INSERT INTO "public"."message" VALUES ('90', '2018-07-26 00:40:26', null, '141', '217', 'dffsdreherh', '25');
INSERT INTO "public"."message" VALUES ('91', '2018-07-26 22:56:10', null, '141', '217', 'Проверка', '25');
INSERT INTO "public"."message" VALUES ('92', '2018-07-26 23:07:22', null, '141', '217', 'fg', '25');
INSERT INTO "public"."message" VALUES ('93', '2018-07-26 23:07:22', null, '141', '217', 'fgfg', '25');
INSERT INTO "public"."message" VALUES ('94', '2018-07-26 23:07:22', null, '141', '217', 'fgfg', '25');
INSERT INTO "public"."message" VALUES ('95', '2018-07-26 23:07:23', null, '141', '217', 'fgfgg', '25');
INSERT INTO "public"."message" VALUES ('96', '2018-07-26 23:07:25', null, '141', '217', 'fgfggfh', '25');
INSERT INTO "public"."message" VALUES ('97', '2018-07-26 23:07:25', null, '141', '217', 'fgfggfhfg', '25');
INSERT INTO "public"."message" VALUES ('98', '2018-07-26 23:07:26', null, '141', '217', 'fgfggfhfggf', '25');
INSERT INTO "public"."message" VALUES ('99', '2018-07-26 23:07:29', null, '141', '217', 'fgfggfhfggffdbdfb', '25');
INSERT INTO "public"."message" VALUES ('100', '2018-07-26 23:07:29', null, '141', '217', 'fgfggfhfggffdbdfbdfb', '25');
INSERT INTO "public"."message" VALUES ('101', '2018-07-26 23:07:33', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('102', '2018-07-26 23:07:34', null, '141', '217', '12', '25');
INSERT INTO "public"."message" VALUES ('103', '2018-07-26 23:07:34', null, '141', '217', '123', '25');
INSERT INTO "public"."message" VALUES ('104', '2018-07-26 23:07:38', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('105', '2018-07-26 23:07:40', null, '141', '217', '12', '25');
INSERT INTO "public"."message" VALUES ('106', '2018-07-26 23:07:53', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('107', '2018-07-26 23:09:30', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('108', '2018-07-26 23:09:41', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('109', '2018-07-26 23:09:43', null, '141', '217', '23', '25');
INSERT INTO "public"."message" VALUES ('110', '2018-07-26 23:10:05', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('111', '2018-07-26 23:10:09', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('112', '2018-07-26 23:10:09', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('113', '2018-07-26 23:10:11', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('114', '2018-07-26 23:10:12', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('115', '2018-07-26 23:10:13', null, '141', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('116', '2018-07-26 23:32:24', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('117', '2018-07-26 23:35:04', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('118', '2018-07-26 23:35:05', null, '141', '217', '13', '25');
INSERT INTO "public"."message" VALUES ('119', '2018-07-26 23:35:28', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('120', '2018-07-26 23:35:42', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('121', '2018-07-26 23:35:45', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('122', '2018-07-26 23:35:45', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('123', '2018-07-26 23:35:48', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('124', '2018-07-26 23:35:48', null, '141', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('125', '2018-07-26 23:35:49', null, '141', '217', '6', '25');
INSERT INTO "public"."message" VALUES ('126', '2018-07-26 23:35:49', null, '141', '217', '7', '25');
INSERT INTO "public"."message" VALUES ('127', '2018-07-26 23:35:49', null, '141', '217', '8', '25');
INSERT INTO "public"."message" VALUES ('128', '2018-07-26 23:35:50', null, '141', '217', '9', '25');
INSERT INTO "public"."message" VALUES ('129', '2018-07-26 23:35:50', null, '141', '217', '10', '25');
INSERT INTO "public"."message" VALUES ('130', '2018-07-26 23:35:51', null, '141', '217', '11', '25');
INSERT INTO "public"."message" VALUES ('131', '2018-07-26 23:35:51', null, '141', '217', '12', '25');
INSERT INTO "public"."message" VALUES ('132', '2018-07-26 23:35:52', null, '141', '217', '13', '25');
INSERT INTO "public"."message" VALUES ('133', '2018-07-27 00:01:23', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('134', '2018-07-27 00:01:29', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('135', '2018-07-27 00:01:36', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('136', '2018-07-27 00:01:41', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('137', '2018-07-27 00:01:48', null, '141', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('138', '2018-07-27 00:02:04', null, '141', '217', '6', '25');
INSERT INTO "public"."message" VALUES ('139', '2018-07-27 00:02:13', null, '141', '217', '7', '25');
INSERT INTO "public"."message" VALUES ('140', '2018-07-27 00:02:23', null, '141', '217', '8', '25');
INSERT INTO "public"."message" VALUES ('141', '2018-07-27 00:02:31', null, '141', '217', '9', '25');
INSERT INTO "public"."message" VALUES ('142', '2018-07-27 00:04:27', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('143', '2018-07-27 00:04:37', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('144', '2018-07-27 00:09:49', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('145', '2018-07-27 00:09:53', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('146', '2018-07-27 00:10:02', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('147', '2018-07-27 00:10:11', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('148', '2018-07-27 00:10:15', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('149', '2018-07-27 00:10:25', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('150', '2018-07-27 00:10:29', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('151', '2018-07-27 00:10:56', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('152', '2018-07-27 00:11:00', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('153', '2018-07-27 00:11:09', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('154', '2018-07-27 00:11:14', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('155', '2018-07-27 00:11:18', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('156', '2018-07-27 00:11:33', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('157', '2018-07-27 00:11:41', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('158', '2018-07-27 00:13:47', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('159', '2018-07-27 00:13:54', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('160', '2018-07-27 00:14:10', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('161', '2018-07-27 00:14:14', null, '141', '217', '11', '25');
INSERT INTO "public"."message" VALUES ('162', '2018-07-27 00:14:15', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('163', '2018-07-27 00:14:15', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('164', '2018-07-27 00:14:16', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('165', '2018-07-27 00:14:19', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('166', '2018-07-27 00:14:20', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('167', '2018-07-27 00:14:20', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('168', '2018-07-27 00:14:20', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('169', '2018-07-27 00:14:20', null, '141', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('170', '2018-07-27 00:14:21', null, '141', '217', '6', '25');
INSERT INTO "public"."message" VALUES ('171', '2018-07-27 00:14:22', null, '141', '217', '7', '25');
INSERT INTO "public"."message" VALUES ('172', '2018-07-27 00:14:22', null, '141', '217', '8', '25');
INSERT INTO "public"."message" VALUES ('173', '2018-07-27 00:14:22', null, '141', '217', '9', '25');
INSERT INTO "public"."message" VALUES ('174', '2018-07-27 00:14:23', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('175', '2018-07-27 00:16:10', null, '141', '217', '55', '25');
INSERT INTO "public"."message" VALUES ('176', '2018-07-27 00:16:25', null, '141', '217', '65', '25');
INSERT INTO "public"."message" VALUES ('177', '2018-07-27 00:19:21', null, '141', '217', '9', '25');
INSERT INTO "public"."message" VALUES ('178', '2018-07-28 00:08:24', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('179', '2018-07-28 00:08:25', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('180', '2018-07-28 00:08:25', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('181', '2018-07-28 00:08:52', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('182', '2018-07-28 00:08:59', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('183', '2018-07-28 00:08:59', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('184', '2018-07-28 00:08:59', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('185', '2018-07-28 00:09:00', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('186', '2018-07-28 00:29:39', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('187', '2018-07-31 00:14:13', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('188', '2018-07-31 00:14:22', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('189', '2018-07-31 00:16:25', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('190', '2018-07-31 00:16:27', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('191', '2018-07-31 00:16:28', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('192', '2018-07-31 00:18:30', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('193', '2018-07-31 00:18:56', null, '141', '217', '23', '25');
INSERT INTO "public"."message" VALUES ('194', '2018-07-31 00:19:02', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('195', '2018-07-31 00:19:08', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('196', '2018-07-31 00:20:58', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('197', '2018-07-31 00:20:59', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('198', '2018-07-31 00:21:00', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('199', '2018-07-31 00:21:05', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('200', '2018-07-31 00:21:09', null, '141', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('201', '2018-07-31 00:21:10', null, '141', '217', '6', '25');
INSERT INTO "public"."message" VALUES ('202', '2018-07-31 00:21:10', null, '141', '217', '7', '25');
INSERT INTO "public"."message" VALUES ('203', '2018-07-31 00:21:11', null, '141', '217', '8', '25');
INSERT INTO "public"."message" VALUES ('204', '2018-07-31 00:21:11', null, '141', '217', '9', '25');
INSERT INTO "public"."message" VALUES ('205', '2018-07-31 00:21:12', null, '141', '217', '10', '25');
INSERT INTO "public"."message" VALUES ('206', '2018-07-31 00:21:13', null, '141', '217', '11', '25');
INSERT INTO "public"."message" VALUES ('207', '2018-07-31 00:21:13', null, '141', '217', '12', '25');
INSERT INTO "public"."message" VALUES ('208', '2018-07-31 00:21:14', null, '141', '217', '13', '25');
INSERT INTO "public"."message" VALUES ('209', '2018-07-31 00:21:14', null, '141', '217', '14', '25');
INSERT INTO "public"."message" VALUES ('210', '2018-07-31 00:21:15', null, '141', '217', '15', '25');
INSERT INTO "public"."message" VALUES ('211', '2018-07-31 00:21:15', null, '141', '217', '16', '25');
INSERT INTO "public"."message" VALUES ('212', '2018-07-31 00:21:16', null, '141', '217', '17', '25');
INSERT INTO "public"."message" VALUES ('213', '2018-07-31 00:21:16', null, '141', '217', '18', '25');
INSERT INTO "public"."message" VALUES ('214', '2018-07-31 00:21:16', null, '141', '217', '19', '25');
INSERT INTO "public"."message" VALUES ('215', '2018-07-31 00:21:17', null, '141', '217', '20', '25');
INSERT INTO "public"."message" VALUES ('216', '2018-07-31 00:21:18', null, '141', '217', '21', '25');
INSERT INTO "public"."message" VALUES ('217', '2018-07-31 00:21:20', null, '141', '217', '22', '25');
INSERT INTO "public"."message" VALUES ('218', '2018-07-31 00:21:20', null, '141', '217', '23', '25');
INSERT INTO "public"."message" VALUES ('219', '2018-07-31 00:21:21', null, '141', '217', '24', '25');
INSERT INTO "public"."message" VALUES ('220', '2018-07-31 00:21:21', null, '141', '217', '25', '25');
INSERT INTO "public"."message" VALUES ('221', '2018-07-31 00:21:22', null, '141', '217', '26', '25');
INSERT INTO "public"."message" VALUES ('222', '2018-07-31 00:21:23', null, '141', '217', '27', '25');
INSERT INTO "public"."message" VALUES ('223', '2018-07-31 00:21:24', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('224', '2018-07-31 00:21:25', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('225', '2018-07-31 00:21:25', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('226', '2018-07-31 00:21:25', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('227', '2018-07-31 00:21:26', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('228', '2018-07-31 00:21:26', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('229', '2018-07-31 00:21:26', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('230', '2018-07-31 00:21:27', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('231', '2018-07-31 00:21:27', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('232', '2018-07-31 00:21:27', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('233', '2018-07-31 00:21:27', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('234', '2018-07-31 00:21:28', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('235', '2018-07-31 00:21:28', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('236', '2018-07-31 00:21:28', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('237', '2018-07-31 00:21:29', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('238', '2018-07-31 00:21:29', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('239', '2018-07-31 00:21:29', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('240', '2018-07-31 00:21:30', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('241', '2018-07-31 00:21:30', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('242', '2018-07-31 00:21:30', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('243', '2018-07-31 00:21:31', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('244', '2018-07-31 00:21:31', null, '141', '217', '21', '25');
INSERT INTO "public"."message" VALUES ('245', '2018-07-31 00:21:32', null, '141', '217', '21', '25');
INSERT INTO "public"."message" VALUES ('246', '2018-07-31 00:21:32', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('247', '2018-07-31 00:21:32', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('248', '2018-07-31 00:21:33', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('249', '2018-07-31 00:21:33', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('250', '2018-07-31 00:21:33', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('251', '2018-07-31 00:21:34', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('252', '2018-07-31 00:21:34', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('253', '2018-07-31 00:21:34', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('254', '2018-07-31 00:21:35', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('255', '2018-07-31 00:21:35', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('256', '2018-07-31 00:21:35', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('257', '2018-07-31 00:21:36', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('258', '2018-07-31 00:21:36', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('259', '2018-07-31 00:21:36', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('260', '2018-07-31 00:21:37', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('261', '2018-07-31 00:21:37', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('262', '2018-07-31 00:21:37', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('263', '2018-07-31 00:21:38', null, '141', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('264', '2018-07-31 00:21:48', null, '138', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('265', '2018-07-31 00:21:48', null, '138', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('266', '2018-07-31 00:21:48', null, '138', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('267', '2018-07-31 00:21:49', null, '138', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('268', '2018-07-31 00:21:49', null, '138', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('269', '2018-07-31 00:21:49', null, '138', '217', '6', '25');
INSERT INTO "public"."message" VALUES ('270', '2018-07-31 00:21:55', null, '141', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('271', '2018-07-31 00:21:55', null, '141', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('272', '2018-07-31 00:21:55', null, '141', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('273', '2018-07-31 00:23:41', null, '139', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('274', '2018-07-31 00:23:42', null, '139', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('275', '2018-07-31 00:23:42', null, '139', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('276', '2018-07-31 00:23:42', null, '139', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('277', '2018-07-31 00:23:42', null, '139', '217', '6', '25');
INSERT INTO "public"."message" VALUES ('278', '2018-07-31 00:23:43', null, '139', '217', '7', '25');
INSERT INTO "public"."message" VALUES ('279', '2018-07-31 00:23:43', null, '139', '217', '8', '25');
INSERT INTO "public"."message" VALUES ('280', '2018-07-31 00:23:43', null, '139', '217', '9', '25');
INSERT INTO "public"."message" VALUES ('281', '2018-07-31 00:23:44', null, '139', '217', '10', '25');
INSERT INTO "public"."message" VALUES ('282', '2018-07-31 00:23:45', null, '139', '217', '11', '25');
INSERT INTO "public"."message" VALUES ('283', '2018-07-31 00:23:45', null, '139', '217', '12', '25');
INSERT INTO "public"."message" VALUES ('284', '2018-07-31 00:23:46', null, '139', '217', '13', '25');
INSERT INTO "public"."message" VALUES ('285', '2018-07-31 00:23:46', null, '139', '217', '14', '25');
INSERT INTO "public"."message" VALUES ('286', '2018-07-31 00:23:47', null, '139', '217', '15', '25');
INSERT INTO "public"."message" VALUES ('287', '2018-07-31 00:23:47', null, '139', '217', '16', '25');
INSERT INTO "public"."message" VALUES ('288', '2018-07-31 00:23:48', null, '139', '217', '17', '25');
INSERT INTO "public"."message" VALUES ('289', '2018-07-31 00:23:49', null, '139', '217', '18', '25');
INSERT INTO "public"."message" VALUES ('290', '2018-07-31 00:23:49', null, '139', '217', '19', '25');
INSERT INTO "public"."message" VALUES ('291', '2018-07-31 00:23:50', null, '139', '217', '20', '25');
INSERT INTO "public"."message" VALUES ('292', '2018-07-31 00:23:50', null, '139', '217', '21', '25');
INSERT INTO "public"."message" VALUES ('293', '2018-07-31 00:23:51', null, '139', '217', '22', '25');
INSERT INTO "public"."message" VALUES ('294', '2018-07-31 00:23:51', null, '139', '217', '23', '25');
INSERT INTO "public"."message" VALUES ('295', '2018-07-31 00:23:52', null, '139', '217', '24', '25');
INSERT INTO "public"."message" VALUES ('296', '2018-07-31 00:23:53', null, '139', '217', '25', '25');
INSERT INTO "public"."message" VALUES ('297', '2018-07-31 00:23:53', null, '139', '217', '26', '25');
INSERT INTO "public"."message" VALUES ('298', '2018-07-31 00:23:54', null, '139', '217', '27', '25');
INSERT INTO "public"."message" VALUES ('299', '2018-07-31 00:23:54', null, '139', '217', '28', '25');
INSERT INTO "public"."message" VALUES ('300', '2018-07-31 00:23:55', null, '139', '217', '29', '25');
INSERT INTO "public"."message" VALUES ('301', '2018-07-31 00:23:56', null, '139', '217', '30', '25');
INSERT INTO "public"."message" VALUES ('302', '2018-07-31 00:28:16', null, '138', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('303', '2018-07-31 00:28:20', null, '138', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('304', '2018-07-31 00:28:22', null, '138', '217', '3', '25');
INSERT INTO "public"."message" VALUES ('305', '2018-07-31 00:28:24', null, '138', '217', '4', '25');
INSERT INTO "public"."message" VALUES ('306', '2018-07-31 00:28:25', null, '138', '217', '5', '25');
INSERT INTO "public"."message" VALUES ('307', '2018-07-31 00:29:34', null, '138', '217', '123', '25');
INSERT INTO "public"."message" VALUES ('308', '2018-07-31 00:51:25', null, '138', '217', '1', '25');
INSERT INTO "public"."message" VALUES ('309', '2018-07-31 00:51:26', null, '138', '217', '2', '25');
INSERT INTO "public"."message" VALUES ('310', '2018-07-31 00:51:26', null, '138', '217', '3', '25');

-- ----------------------------
-- Table structure for payments
-- ----------------------------
DROP TABLE IF EXISTS "public"."payments";
CREATE TABLE "public"."payments" (
"id" int2 NOT NULL,
"name" varchar(32) COLLATE "default" NOT NULL,
"pos" int2 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of payments
-- ----------------------------
INSERT INTO "public"."payments" VALUES ('1', 'VISA', '1');
INSERT INTO "public"."payments" VALUES ('2', '2co', '16');
INSERT INTO "public"."payments" VALUES ('3', 'Advcash', '25');
INSERT INTO "public"."payments" VALUES ('4', 'AmericanExpress', '3');
INSERT INTO "public"."payments" VALUES ('5', 'Bitcoin', '7');
INSERT INTO "public"."payments" VALUES ('6', 'Cirrus', '17');
INSERT INTO "public"."payments" VALUES ('7', 'Delta', '18');
INSERT INTO "public"."payments" VALUES ('8', 'Discover', '4');
INSERT INTO "public"."payments" VALUES ('9', 'MasterCard', '2');
INSERT INTO "public"."payments" VALUES ('10', 'MoneyBookers', '19');
INSERT INTO "public"."payments" VALUES ('11', 'PayPal', '20');
INSERT INTO "public"."payments" VALUES ('12', 'Payeer', '5');
INSERT INTO "public"."payments" VALUES ('13', 'Payza', '21');
INSERT INTO "public"."payments" VALUES ('14', 'PerfectMoney', '6');
INSERT INTO "public"."payments" VALUES ('15', 'Qiwi', '8');
INSERT INTO "public"."payments" VALUES ('16', 'Solo', '22');
INSERT INTO "public"."payments" VALUES ('17', 'Switch', '23');
INSERT INTO "public"."payments" VALUES ('18', 'WesternUnion', '24');
INSERT INTO "public"."payments" VALUES ('19', 'Liqpay', '11');
INSERT INTO "public"."payments" VALUES ('20', 'Neteller', '15');
INSERT INTO "public"."payments" VALUES ('21', 'NixMoney', '14');
INSERT INTO "public"."payments" VALUES ('22', 'OKpay', '13');
INSERT INTO "public"."payments" VALUES ('23', 'SolidTrustPay', '12');
INSERT INTO "public"."payments" VALUES ('24', 'WebMoney', '10');
INSERT INTO "public"."payments" VALUES ('25', 'Yandex', '9');

-- ----------------------------
-- Table structure for period_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."period_type";
CREATE TABLE "public"."period_type" (
"id" int2 NOT NULL,
"name" varchar(6) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of period_type
-- ----------------------------
INSERT INTO "public"."period_type" VALUES ('1', 'Минута');
INSERT INTO "public"."period_type" VALUES ('2', 'Час');
INSERT INTO "public"."period_type" VALUES ('3', 'День');
INSERT INTO "public"."period_type" VALUES ('4', 'Неделя');
INSERT INTO "public"."period_type" VALUES ('5', 'Месяц');
INSERT INTO "public"."period_type" VALUES ('6', 'Год');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS "public"."project";
CREATE TABLE "public"."project" (
"id" int4 DEFAULT nextval('project_seq'::regclass) NOT NULL,
"name" varchar(50) COLLATE "default" NOT NULL,
"admin" int4 NOT NULL,
"url" varchar(64) COLLATE "default" NOT NULL,
"start_date" date NOT NULL,
"add_date" timestamp(6) DEFAULT now() NOT NULL,
"paymenttype" int2 NOT NULL,
"ref_percent" float4[],
"plan_percents" float4[] NOT NULL,
"plan_period" int4[] NOT NULL,
"plan_period_type" float4[] NOT NULL,
"plan_start_deposit" int2[] NOT NULL,
"plan_currency_type" int2[] NOT NULL,
"id_payments" int4[] NOT NULL,
"ref_url" varchar(128) COLLATE "default" DEFAULT ''::character varying NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO "public"."project" VALUES ('138', 'asdfg', '1', 'asdas3d.asd', '2018-02-16', '2018-02-21 23:57:53.10151', '2', '{15}', '{10}', '{1}', '{3}', '{10}', '{1}', '{1,2,3,4,8}', 'asdas3d.asd');
INSERT INTO "public"."project" VALUES ('139', 'asdfg', '1', 'asda3s3d.asd', '2018-02-16', '2018-02-21 23:59:19.065431', '2', '{15}', '{10}', '{2}', '{3}', '{10}', '{1}', '{5,6,7}', 'asda3s3d.asd');
INSERT INTO "public"."project" VALUES ('140', 'asdfg34', '1', 'arsda3s3d.asd', '2018-02-16', '2018-02-21 23:59:26.576861', '2', '{15}', '{10}', '{10}', '{3}', '{10}', '{1}', '{9,10,11,12,13,14,15,16,17,18}', 'arsda3s3d.asd');
INSERT INTO "public"."project" VALUES ('141', 'TEst 1', '1', 'ffff.ru', '2018-05-17', '2018-05-09 22:44:45.098615', '1', '{8,10,12,15}', '{2,3,4}', '{5,6,7}', '{3,3,3}', '{10,20,30}', '{1,2,3}', '{1}', 'ffff.ru');

-- ----------------------------
-- Table structure for project_lang
-- ----------------------------
DROP TABLE IF EXISTS "public"."project_lang";
CREATE TABLE "public"."project_lang" (
"id" int4 DEFAULT nextval('project_langs_seq'::regclass) NOT NULL,
"project_id" int4 NOT NULL,
"lang_id" int2 NOT NULL,
"description" varchar(5000) COLLATE "default"
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of project_lang
-- ----------------------------
INSERT INTO "public"."project_lang" VALUES ('23', '138', '239', 'asf');
INSERT INTO "public"."project_lang" VALUES ('24', '139', '317', 'asf');
INSERT INTO "public"."project_lang" VALUES ('25', '140', '239', 'asf');
INSERT INTO "public"."project_lang" VALUES ('26', '141', '219', 'ffff');
INSERT INTO "public"."project_lang" VALUES ('27', '141', '317', 'проверка');
INSERT INTO "public"."project_lang" VALUES ('28', '141', '221', 'fdfdfdf');

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS "public"."session";
CREATE TABLE "public"."session" (
"id" int4 DEFAULT nextval('session_seq'::regclass) NOT NULL,
"uid" char(26) COLLATE "default" NOT NULL,
"date_create" timestamp(6) DEFAULT now() NOT NULL,
"ip" inet NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO "public"."session" VALUES ('22', 'up0hn8voe53jdof3k8o2i20je7', '2018-06-14 00:11:10.017099', '127.0.0.1');
INSERT INTO "public"."session" VALUES ('23', 'dafsdfsdgsdbsdfbfdbdfb    ', '2018-06-29 23:35:16', '128.0.0.1');
INSERT INTO "public"."session" VALUES ('24', 'hcmglf33v1nq8gjr75fl4rjdh4', '2018-07-03 23:11:23.291909', '127.0.0.1');
INSERT INTO "public"."session" VALUES ('25', 'oldvlf57de3ur1n4tqlht9b3k6', '2018-07-23 23:11:23.955323', '127.0.0.1');

-- ----------------------------
-- Table structure for user_params
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_params";
CREATE TABLE "public"."user_params" (
"user_id" int4 NOT NULL,
"lang_id" int2 NOT NULL,
"photo" int2 DEFAULT 0 NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_params
-- ----------------------------
INSERT INTO "public"."user_params" VALUES ('1', '219', '0');

-- ----------------------------
-- Table structure for user_remember
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_remember";
CREATE TABLE "public"."user_remember" (
"user_id" int8 NOT NULL,
"hash" varchar(53) COLLATE "default" NOT NULL,
"ip" varchar(39) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_remember
-- ----------------------------

-- ----------------------------
-- Table structure for user_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."user_status";
CREATE TABLE "public"."user_status" (
"id" int2 NOT NULL,
"name" varchar(50) COLLATE "default" NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of user_status
-- ----------------------------
INSERT INTO "public"."user_status" VALUES ('1', 'need confirm');
INSERT INTO "public"."user_status" VALUES ('2', 'registered');
INSERT INTO "public"."user_status" VALUES ('3', 'super admin');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "public"."users";
CREATE TABLE "public"."users" (
"id" int4 DEFAULT nextval('users_seq'::regclass) NOT NULL,
"login" varchar(32) COLLATE "default" NOT NULL,
"name" varchar(64) COLLATE "default" NOT NULL,
"email" varchar(64) COLLATE "default" NOT NULL,
"password" varchar(53) COLLATE "default" NOT NULL,
"status_id" int2 DEFAULT 1 NOT NULL,
"date_create" timestamp(6) DEFAULT now() NOT NULL
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "public"."users" VALUES ('1', 'beautynight', 'Станислав', 'beautynights@gmail.com', '6c16d9f394351a2c2996aea1uPdmytpCR0bY2G07CzJOq2lZXbnJa', '3', '2016-07-03 17:07:37');
INSERT INTO "public"."users" VALUES ('4', 'beautynight2', 'beautynight2', 'beautynight2', '0cdd88e4a16f2f4c48386uT1f29wHPV3Dp2iUPjn4LD34yQ0EtVea', '1', '2016-07-03 17:07:37');
INSERT INTO "public"."users" VALUES ('10', 'beautynights3', 'beautynight3', 'beautynight3', '63e55ddfbba40b4bc03f4eRsxzWF0GOmJPYx9mElsiOfwRUaOFnui', '1', '2016-07-03 17:08:19');
INSERT INTO "public"."users" VALUES ('30', 'admin', 'itsall4you', 'stanislav.perfilov@gmail.com', '8e01a17e86df65ce73784efHS1jD7S3PINNeozuqpMw38zlkIysY6', '1', '2017-08-09 21:58:18.33806');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Indexes structure for table country
-- ----------------------------
CREATE UNIQUE INDEX "shortname" ON "public"."country" USING btree ("shortname");

-- ----------------------------
-- Primary Key structure for table country
-- ----------------------------
ALTER TABLE "public"."country" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table currency_type
-- ----------------------------
ALTER TABLE "public"."currency_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table languages
-- ----------------------------
CREATE UNIQUE INDEX "english_language_name" ON "public"."languages" USING btree ("name");
CREATE INDEX "flag" ON "public"."languages" USING btree ("flag");
CREATE UNIQUE INDEX "native_language_name" ON "public"."languages" USING btree ("own_name");

-- ----------------------------
-- Primary Key structure for table languages
-- ----------------------------
ALTER TABLE "public"."languages" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table message
-- ----------------------------
CREATE INDEX "IX_message_date_create" ON "public"."message" USING btree ("date_create" DESC NULLS LAST);
CREATE INDEX "IX_message_date_create_project_id_lang_id" ON "public"."message" USING btree ("date_create" DESC NULLS LAST, "project_id" DESC NULLS LAST, "lang_id");
CREATE INDEX "IX_message_lang_id" ON "public"."message" USING btree ("lang_id");
CREATE INDEX "IX_message_project_id" ON "public"."message" USING btree ("project_id" DESC NULLS LAST);
CREATE INDEX "IX_message_session_id" ON "public"."message" USING btree ("session_id");
CREATE INDEX "IX_message_user_id" ON "public"."message" USING btree ("user_id" DESC NULLS LAST);

-- ----------------------------
-- Primary Key structure for table message
-- ----------------------------
ALTER TABLE "public"."message" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payments
-- ----------------------------
CREATE UNIQUE INDEX "name" ON "public"."payments" USING btree ("name");
CREATE UNIQUE INDEX "pos" ON "public"."payments" USING btree ("pos");

-- ----------------------------
-- Primary Key structure for table payments
-- ----------------------------
ALTER TABLE "public"."payments" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table period_type
-- ----------------------------
ALTER TABLE "public"."period_type" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table project
-- ----------------------------
CREATE INDEX "FK_project_admin" ON "public"."project" USING btree ("admin");
CREATE INDEX "project_url_ix" ON "public"."project" USING btree (lower(url::text));

-- ----------------------------
-- Triggers structure for table project
-- ----------------------------
CREATE TRIGGER "delete_project" BEFORE DELETE ON "public"."project"
FOR EACH ROW
EXECUTE PROCEDURE "deleteproject"();

-- ----------------------------
-- Primary Key structure for table project
-- ----------------------------
ALTER TABLE "public"."project" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table project_lang
-- ----------------------------
CREATE INDEX "IX_project_lang_lang" ON "public"."project_lang" USING btree ("lang_id");
CREATE INDEX "IX_project_lang_project" ON "public"."project_lang" USING btree ("project_id");

-- ----------------------------
-- Primary Key structure for table project_lang
-- ----------------------------
ALTER TABLE "public"."project_lang" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table session
-- ----------------------------
CREATE UNIQUE INDEX "UN_session_uid" ON "public"."session" USING btree ("uid");

-- ----------------------------
-- Primary Key structure for table session
-- ----------------------------
ALTER TABLE "public"."session" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table user_params
-- ----------------------------
CREATE INDEX "FK_user_params_user_id" ON "public"."user_params" USING btree ("user_id");
ALTER TABLE "public"."user_params" CLUSTER ON "FK_user_params_user_id";

-- ----------------------------
-- Primary Key structure for table user_params
-- ----------------------------
ALTER TABLE "public"."user_params" ADD PRIMARY KEY ("user_id");

-- ----------------------------
-- Indexes structure for table user_remember
-- ----------------------------
CREATE UNIQUE INDEX "ix_user_remember" ON "public"."user_remember" USING btree ("user_id", "ip");

-- ----------------------------
-- Uniques structure for table user_remember
-- ----------------------------
ALTER TABLE "public"."user_remember" ADD UNIQUE ("user_id", "ip");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE INDEX "FK_user_status_id" ON "public"."users" USING btree ("status_id");
CREATE UNIQUE INDEX "UN_user_email" ON "public"."users" USING btree ("email");
CREATE UNIQUE INDEX "UN_user_login" ON "public"."users" USING btree ("login");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "public"."users" ADD PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Key structure for table "public"."message"
-- ----------------------------
ALTER TABLE "public"."message" ADD FOREIGN KEY ("project_id") REFERENCES "public"."project" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."message" ADD FOREIGN KEY ("lang_id") REFERENCES "public"."languages" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."message" ADD FOREIGN KEY ("session_id") REFERENCES "public"."session" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."message" ADD FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."project"
-- ----------------------------
ALTER TABLE "public"."project" ADD FOREIGN KEY ("admin") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."project_lang"
-- ----------------------------
ALTER TABLE "public"."project_lang" ADD FOREIGN KEY ("project_id") REFERENCES "public"."project" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."project_lang" ADD FOREIGN KEY ("lang_id") REFERENCES "public"."languages" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."user_params"
-- ----------------------------
ALTER TABLE "public"."user_params" ADD FOREIGN KEY ("lang_id") REFERENCES "public"."languages" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Key structure for table "public"."user_remember"
-- ----------------------------
ALTER TABLE "public"."user_remember" ADD FOREIGN KEY ("user_id") REFERENCES "public"."users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

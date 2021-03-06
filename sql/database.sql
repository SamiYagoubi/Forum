Drop database if exists forum;
Create database forum;
use forum;

-- 
-- Table `forum_categorie`
-- 
 
CREATE TABLE `forum_categorie` (
  `cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nom` varchar(30) collate latin1_general_ci NOT NULL,
  `cat_ordre` int(11) NOT NULL,
  PRIMARY KEY  (`cat_id`),
  UNIQUE KEY `cat_ordre` (`cat_ordre`)
);
 
INSERT INTO forum_categorie (cat_id, cat_nom, cat_ordre) VALUES (1, 'Autre', 30);
INSERT INTO forum_categorie (cat_id, cat_nom, cat_ordre) VALUES (2, 'Voiture', 20);
INSERT INTO forum_categorie (cat_id, cat_nom, cat_ordre) VALUES (3, 'Général', 10);
-- 
-- Table `forum_forum`
-- 
 
CREATE TABLE `forum_forum` (
  `forum_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_cat_id` mediumint(8) NOT NULL,
  `forum_name` varchar(30) collate latin1_general_ci NOT NULL,
  `forum_desc` text collate latin1_general_ci NOT NULL,
  `forum_ordre` mediumint(8) NOT NULL,
  `forum_last_post_id` int(11) NOT NULL,
  `forum_topic` mediumint(8) NOT NULL,
  `forum_post` mediumint(8) NOT NULL,
  `auth_view` tinyint(4) NOT NULL,
  `auth_post` tinyint(4) NOT NULL,
  `auth_topic` tinyint(4) NOT NULL,
  `auth_annonce` tinyint(4) NOT NULL,
  `auth_modo` tinyint(4) NOT NULL,
  PRIMARY KEY  (`forum_id`)
); 

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (6, 3, 'Présentation', 'Nouveau sur le forum? Venez vous présenter ici !', 60, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (7, 3, 'Les News', 'Les news du site sont ici', 50, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (5, 3, 'Discussions générales', 'Ici on peut parler de tout sur sur les voitures', 40, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (4, 2, 'Supersportives', 'Parlez ici des SUPERSPORTIVES', 60, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (8, 2, 'Sportives', 'Parlez ici des SPORTIVES', 50, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (3, 2, 'Luxes', 'Parlez ici des VOITURES LUXUEUSES', 40, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (1, 1, 'Circuit', 'Vos meilleurs CIRCUITS', 60, 0, 0, 0, 0, 0, 0, 0, 0);

INSERT INTO `forum_forum` (`forum_id`, `forum_cat_id`, `forum_name`, `forum_desc`, `forum_ordre`, `forum_last_post_id`, `forum_topic`, `forum_post`, `auth_view`, `auth_post`, `auth_topic`, auth_annonce, auth_modo)
VALUES (2, 1, 'Spots', 'Décrivez ici vos meilleurs SPOTS', 50, 0, 0, 0, 0, 0, 0, 0, 0);

UPDATE forum_forum 
SET auth_view = 1, auth_post = 2, auth_topic = 2, auth_annonce = 3, auth_modo = 4 
WHERE forum_id = 2;



-- 
-- Table `forum_membres`
-- 
 
CREATE TABLE `forum_membres` (
  `membre_id` int(11) NOT NULL AUTO_INCREMENT,
  `membre_pseudo` varchar(30) collate latin1_general_ci NOT NULL,
  `membre_mdp` varchar(32) collate latin1_general_ci NOT NULL,
  `membre_email` varchar(250) collate latin1_general_ci NOT NULL,
  `membre_msn` varchar(250) collate latin1_general_ci NOT NULL,
  `membre_siteweb` varchar(100) collate latin1_general_ci NOT NULL,
  `membre_avatar` varchar(100) collate latin1_general_ci NOT NULL,
  `membre_signature` varchar(200) collate latin1_general_ci NOT NULL,
  `membre_localisation` varchar(100) collate latin1_general_ci NOT NULL,
  `membre_inscrit` int(11) NOT NULL,
  `membre_derniere_visite` int(11)NULL,
  `membre_rang` tinyint (4) DEFAULT 2,
  `membre_post` int(11) NULL,
  PRIMARY KEY  (`membre_id`)
); 
 
-- Table `forum_post`
-- 
 
CREATE TABLE `forum_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `post_createur` int(11) NOT NULL,
  `post_texte` text collate latin1_general_ci NOT NULL,
  `post_time` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `post_forum_id` int(11) NOT NULL,
  PRIMARY KEY  (`post_id`)
);
 
 
 
-- 
-- Table  `forum_topic`
-- 
 
CREATE TABLE `forum_topic` (
  `topic_id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_id` int(11) NOT NULL,
  `topic_titre` char(60) collate latin1_general_ci NOT NULL,
  `topic_createur` int(11) NOT NULL,
  `topic_vu` mediumint(8) NOT NULL,
  `topic_time` int(11) NOT NULL,
  `topic_genre` varchar(30) collate latin1_general_ci NOT NULL,
  `topic_last_post` int(11) NOT NULL,
  `topic_first_post` int(11) NOT NULL,
  `topic_post` mediumint(8) NOT NULL,
  PRIMARY KEY  (`topic_id`),
  UNIQUE KEY `topic_last_post` (`topic_last_post`)
);
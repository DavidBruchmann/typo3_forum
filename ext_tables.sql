# TYPO3 Extension Manager dump 1.1
#
# Host: localhost    Database: typo3_forum
#--------------------------------------------------------


#
# Table structure for table "tx_typo3forum_domain_model_format_textparser"
#
CREATE TABLE tx_typo3forum_domain_model_format_textparser (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  type varchar(64) NOT NULL DEFAULT 'Mittwald\Typo3Forum\Domain\Model\Format\BBCode',
  name tinytext,
  icon_class tinytext,
  bbcode_wrap varchar(64) DEFAULT '',
  regular_expression tinytext,
  regular_expression_replacement tinytext,
  smiley_shortcut varchar(16) DEFAULT '',
  language varchar(16) DEFAULT '',
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_typo3forum_domain_model_forum_access"
#
CREATE TABLE tx_typo3forum_domain_model_forum_access (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  login_level tinyint(4) unsigned DEFAULT '0',
  forum int(11) unsigned DEFAULT '0',
  operation tinytext,
  negate tinyint(1) unsigned DEFAULT '0' NOT NULL,
  affected_group int(11) unsigned DEFAULT '0',
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY forum (forum)
);


#
# Table structure for table "tx_typo3forum_domain_model_forum_attachment"
#
CREATE TABLE tx_typo3forum_domain_model_forum_attachment (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  post int(11) unsigned DEFAULT '0',
  filename tinytext,
  real_filename tinytext,
  mime_type tinytext,
  download_count int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_typo3forum_domain_model_forum_forum"
#
CREATE TABLE tx_typo3forum_domain_model_forum_forum (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  displayed_pid int(11) unsigned DEFAULT '0' NOT NULL,
  forum int(11) unsigned DEFAULT '0' NOT NULL,
  title tinytext,
  description tinytext,
  children int(11) unsigned DEFAULT '0' NOT NULL,
  topics int(11) unsigned DEFAULT '0' NOT NULL,
  criteria int(11) unsigned DEFAULT '0' NOT NULL,
  topic_count int(11) unsigned DEFAULT '0' NOT NULL,
  post_count int(11) unsigned DEFAULT '0' NOT NULL,
  readers int(11) unsigned DEFAULT '0' NOT NULL,
  acls int(11) unsigned DEFAULT '0' NOT NULL,
  last_topic int(11) unsigned DEFAULT '0',
  last_post int(11) unsigned DEFAULT '0',
  subscribers int(11) unsigned DEFAULT '0',
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY forum (forum)
);


#
# Table structure for table "tx_typo3forum_domain_model_forum_post"
#
CREATE TABLE tx_typo3forum_domain_model_forum_post (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  topic int(11) unsigned DEFAULT '0' NOT NULL,
  text mediumtext,
  rendered_text blob,
  author int(11) unsigned DEFAULT '0',
  author_name tinytext,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  attachments int(11) unsigned DEFAULT '0' NOT NULL,
  supporters int(11) unsigned DEFAULT '0',
  helpful_count int(11) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY topic (topic),
  KEY author (author)
);


#
# Table structure for table "tx_typo3forum_domain_model_forum_topic"
#
CREATE TABLE tx_typo3forum_domain_model_forum_topic (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  type tinyint(1) DEFAULT '0' NOT NULL,
  forum int(11) unsigned DEFAULT '0' NOT NULL,
  subject tinytext,
  posts int(11) unsigned DEFAULT '0' NOT NULL,
  post_count int(11) unsigned DEFAULT '0' NOT NULL,
  author int(11) unsigned DEFAULT '0',
  subscribers int(11) unsigned DEFAULT '0',
  fav_subscribers int(11) unsigned DEFAULT '0' NOT NULL,
  last_post int(11) unsigned DEFAULT '0',
  last_post_crdate int(11) unsigned DEFAULT '0',
  solution int(11) unsigned DEFAULT '0',
  is_solved tinyint(3) unsigned DEFAULT '0' NOT NULL,
  closed tinyint(1) unsigned DEFAULT '0',
  sticky tinyint(1) unsigned DEFAULT '0',
  question tinyint(1) unsigned DEFAULT '0' NOT NULL,
  target int(11) unsigned DEFAULT '0',
  readers int(11) unsigned DEFAULT '0' NOT NULL,
  criteria_options int(11) unsigned DEFAULT '0' NOT NULL,
  tags int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY forum (forum),
  KEY author (author)
);


#
# Table structure for table "tx_typo3forum_domain_model_moderation_report"
#
CREATE TABLE tx_typo3forum_domain_model_moderation_report (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  post int(11) unsigned DEFAULT '0' NOT NULL,
  feuser int(11) unsigned DEFAULT '0' NOT NULL,
  type varchar(64) NOT NULL DEFAULT 'Mittwald\Typo3Forum\Domain\Model\Moderation\UserReport',
  reporter int(11) unsigned DEFAULT '0' NOT NULL,
  moderator int(11) unsigned DEFAULT '0',
  workflow_status int(11) unsigned DEFAULT '0',
  comments int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_typo3forum_domain_model_moderation_reportcomment"
#
CREATE TABLE tx_typo3forum_domain_model_moderation_reportcomment (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  report int(11) unsigned DEFAULT '0' NOT NULL,
  author int(11) unsigned DEFAULT '0' NOT NULL,
  text text,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_typo3forum_domain_model_moderation_reportworkflowstatus"
#
CREATE TABLE tx_typo3forum_domain_model_moderation_reportworkflowstatus (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  name tinytext,
  icon tinytext,
  followup_status int(11) unsigned DEFAULT '0' NOT NULL,
  initial tinyint(1) DEFAULT '0' NOT NULL,
  final tinyint(1) DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_typo3forum_domain_model_moderation_reportworkflowstatus_mm"
#
CREATE TABLE tx_typo3forum_domain_model_moderation_reportworkflowstatus_mm (
  uid int(10) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  uid_local int(11) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(10) unsigned DEFAULT '0' NOT NULL,
  crdate int(10) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(3) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);


#
# Table structure for table "tx_typo3forum_domain_model_user_forumsubscription"
#
CREATE TABLE tx_typo3forum_domain_model_user_forumsubscription (
  uid int(10) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  uid_local int(11) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tablenames varchar(255) NOT NULL DEFAULT '',
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(10) unsigned DEFAULT '0' NOT NULL,
  crdate int(10) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(3) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);


#
# Table structure for table "tx_typo3forum_domain_model_user_readtopic"
#
CREATE TABLE tx_typo3forum_domain_model_user_readtopic (
  uid int(10) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  uid_local int(11) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(10) unsigned DEFAULT '0' NOT NULL,
  crdate int(10) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(3) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);

#
# Table structure for table "tx_typo3forum_domain_model_user_supportpost"
#
CREATE TABLE tx_typo3forum_domain_model_user_supportpost (
  uid int(10) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  uid_local int(11) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(10) unsigned DEFAULT '0' NOT NULL,
  crdate int(10) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(3) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);

#
# Table structure for table "tx_typo3forum_domain_model_user_topicsubscription"
#
CREATE TABLE tx_typo3forum_domain_model_user_topicsubscription (
  uid int(10) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  uid_local int(11) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tablenames varchar(255) NOT NULL DEFAULT '',
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(10) unsigned DEFAULT '0' NOT NULL,
  crdate int(10) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(3) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);


#
# Table structure for table "tx_typo3forum_domain_model_user_topicfavsubscription"
#
CREATE TABLE tx_typo3forum_domain_model_user_topicfavsubscription (
  uid int(10) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  uid_local int(11) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tablenames varchar(255) NOT NULL DEFAULT '',
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(10) unsigned DEFAULT '0' NOT NULL,
  crdate int(10) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(3) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);

#
# Table structure for table "tx_typo3forum_domain_model_user_userfield_userfield"
#
CREATE TABLE tx_typo3forum_domain_model_user_userfield_userfield (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  type tinytext,
  name tinytext,
  typoscript_path tinytext,
  map_to_user_object varchar(64) DEFAULT '',
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table "tx_typo3forum_domain_model_user_userfield_value"
#
CREATE TABLE tx_typo3forum_domain_model_user_userfield_value (
  uid int(11) NOT NULL auto_increment,
  pid int(11) DEFAULT '0' NOT NULL,
  user int(11) unsigned DEFAULT '0' NOT NULL,
  userfield int(11) unsigned DEFAULT '0' NOT NULL,
  value text,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(4) unsigned DEFAULT '0' NOT NULL,
  hidden tinyint(4) unsigned DEFAULT '0' NOT NULL,
  t3ver_oid int(11) DEFAULT '0' NOT NULL,
  t3ver_id int(11) DEFAULT '0' NOT NULL,
  t3ver_wsid int(11) DEFAULT '0' NOT NULL,
  t3ver_label varchar(30) NOT NULL DEFAULT '',
  t3ver_state tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_stage tinyint(4) DEFAULT '0' NOT NULL,
  t3ver_count int(11) DEFAULT '0' NOT NULL,
  t3ver_tstamp int(11) DEFAULT '0' NOT NULL,
  t3ver_move_id int(11) DEFAULT '0' NOT NULL,
  t3_origuid int(11) DEFAULT '0' NOT NULL,
  sys_language_uid int(11) DEFAULT '0' NOT NULL,
  l18n_parent int(11) DEFAULT '0' NOT NULL,
  l18n_diffsource mediumblob NOT NULL,
  PRIMARY KEY (uid),
  KEY parent (pid)
);


#
# Table structure for table 'tx_typo3forum_domain_model_forum_criteria'
#
CREATE TABLE tx_typo3forum_domain_model_forum_criteria (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) unsigned DEFAULT '0' NOT NULL,
  name varchar(64) DEFAULT '',
  options int(11) unsigned DEFAULT '0' NOT NULL,
  DEFAULT_option int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (uid)
);


#
# Table structure for table 'tx_typo3forum_domain_model_forum_criteria_forum'
#
CREATE TABLE tx_typo3forum_domain_model_forum_criteria_forum (
  uid int(10) unsigned NOT NULL auto_increment,
  uid_local int(10) unsigned DEFAULT '0',
  uid_foreign int(10) unsigned DEFAULT '0',
  sorting int(10) unsigned DEFAULT '0',
  sorting_foreign int(10) unsigned DEFAULT '0',
  PRIMARY KEY (uid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);


#
# Table structure for table 'tx_typo3forum_domain_model_forum_criteria_options'
#
CREATE TABLE tx_typo3forum_domain_model_forum_criteria_options (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) DEFAULT '0' NOT NULL,
  criteria int(11) unsigned DEFAULT '0' NOT NULL,
  name varchar(64)  DEFAULT '',
  sorting int(11) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid)
);


#
# Table structure for table 'tx_typo3forum_domain_model_forum_criteria_topic_options'
#
CREATE TABLE tx_typo3forum_domain_model_forum_criteria_topic_options (
  uid int(10) unsigned NOT NULL auto_increment,
  uid_local int(10) unsigned DEFAULT '0',
  uid_foreign int(10) unsigned DEFAULT '0',
  sorting int(10) unsigned DEFAULT '0',
  sorting_foreign int(10) unsigned DEFAULT '0',
  PRIMARY KEY (uid),
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);

#
# Table structure for table 'tx_typo3forum_domain_model_forum_ad'
#
CREATE TABLE tx_typo3forum_domain_model_forum_ad (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) DEFAULT '0' NOT NULL,
  active tinyint(3) unsigned DEFAULT '0' NOT NULL,
  category tinyint(3) unsigned DEFAULT '0',
  name varchar(64) DEFAULT NULL,
  url varchar(255) DEFAULT NULL,
  alt_text tinytext,
  path varchar(128) DEFAULT NULL,
  PRIMARY KEY (uid)
);


#
# Table structure for table 'tx_typo3forum_domain_model_user_privatemessage'
#
CREATE TABLE tx_typo3forum_domain_model_user_privatemessage (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  feuser int(11) unsigned DEFAULT '0',
  opponent int(11) unsigned DEFAULT '0',
  type tinyint(3) DEFAULT '0',
  message int(11) unsigned DEFAULT '0',
  deleted tinyint(4) DEFAULT '0' NOT NULL,
  user_read tinyint(3) DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid),
  KEY message (message),
  KEY opponent (opponent)
);

#
# Table structure for table 'tx_typo3forum_domain_model_user_privatemessage_text'
#
CREATE TABLE tx_typo3forum_domain_model_user_privatemessage_text (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT NULL,
  message_text text NOT NULL,
  PRIMARY KEY (uid)
);


#
# Table structure for table 'tx_typo3forum_domain_model_user_rank'
#
CREATE TABLE tx_typo3forum_domain_model_user_rank (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) unsigned DEFAULT '0' NOT NULL,
  name varchar(32) DEFAULT '',
  point_limit int(11) unsigned DEFAULT '0' NOT NULL,
  user_count int(11) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid)
);

#
# Table structure for table 'tx_typo3forum_domain_model_user_notification'
#
CREATE TABLE tx_typo3forum_domain_model_user_notification (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0',
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) DEFAULT '0' NOT NULL,
  feuser int(11) unsigned DEFAULT NULL,
  post int(11) unsigned DEFAULT '0' NOT NULL,
  user_read tinyint(3) DEFAULT '0',
  type varchar(64) NOT NULL DEFAULT 'Mittwald\Typo3Forum\Domain\Model\Forum\Post',
  tag int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (uid),
  KEY user (feuser,post),
  KEY feuser (feuser),
  KEY post (post),
  KEY tag (tag)
);

#
# Table structure for table 'tx_typo3forum_domain_model_stats_summary'
#
CREATE TABLE tx_typo3forum_domain_model_stats_summary (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) unsigned DEFAULT '0' NOT NULL,
  type int(11) unsigned DEFAULT '0' NOT NULL,
  amount int(11) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid)
);

#
# Table structure for table 'tx_typo3forum_domain_model_forum_tag'
#
CREATE TABLE tx_typo3forum_domain_model_forum_tag (
  uid int(11) unsigned NOT NULL auto_increment,
  pid int(11) unsigned NOT NULL  DEFAULT '0',
  crdate int(11) unsigned DEFAULT '0' NOT NULL,
  tstamp int(11) unsigned DEFAULT '0' NOT NULL,
  deleted tinyint(3) unsigned DEFAULT '0' NOT NULL,
  name varchar(64) NOT NULL DEFAULT '',
  topic_count int(11) unsigned DEFAULT '0' NOT NULL,
  feuser int(11) unsigned DEFAULT '0' NOT NULL,
  PRIMARY KEY (uid)
);

#
# Table structure for table 'tx_typo3forum_domain_model_forum_tag_topic'
#
CREATE TABLE tx_typo3forum_domain_model_forum_tag_topic (
  uid_local int(10) unsigned DEFAULT '0',
  uid_foreign int(10) unsigned DEFAULT '0',
  sorting int(10) unsigned DEFAULT '0',
  sorting_foreign int(10) unsigned DEFAULT '0',
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);

#
# Table structure for table 'tx_typo3forum_domain_model_forum_tag_user'
#
CREATE TABLE tx_typo3forum_domain_model_forum_tag_user (
  uid_local int(10) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(10) unsigned DEFAULT '0' NOT NULL,
  sorting int(10) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(10) unsigned DEFAULT '0' NOT NULL,
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);


#
# Table structure for table 'tx_typo3forum_domain_model_user_readforum'
#
CREATE TABLE tx_typo3forum_domain_model_user_readforum (
  uid_local int(10) unsigned DEFAULT '0' NOT NULL,
  uid_foreign int(10) unsigned DEFAULT '0' NOT NULL,
  sorting int(10) unsigned DEFAULT '0' NOT NULL,
  sorting_foreign int(10) unsigned DEFAULT '0' NOT NULL,
  KEY uid_local (uid_local),
  KEY uid_foreign (uid_foreign)
);


#
# Table structure for table "fe_users"
#
CREATE TABLE fe_users (
  tx_typo3forum_rank int(11) unsigned DEFAULT '1',
  tx_typo3forum_points int(11) unsigned DEFAULT '0',
  tx_typo3forum_post_count int(11) DEFAULT '0',
  tx_typo3forum_topic_count int(11) DEFAULT '0',
  tx_typo3forum_question_count int(11) DEFAULT '0',
  tx_typo3forum_topic_favsubscriptions int(11) unsigned DEFAULT '0',
  tx_typo3forum_topic_subscriptions int(11) unsigned DEFAULT '0',
  tx_typo3forum_forum_subscriptions int(11) unsigned DEFAULT '0',
  tx_typo3forum_helpful_count int(11) DEFAULT '0',
  tx_typo3forum_private_messages int(11) unsigned DEFAULT '0',
  tx_typo3forum_helpful_count_session int(11) DEFAULT '0',
  tx_typo3forum_post_count_session int(11) DEFAULT '0',
  tx_typo3forum_signature text,
  tx_typo3forum_interests text,
  tx_typo3forum_userfield_values int(11) unsigned DEFAULT '0',
  tx_typo3forum_read_forum int(11) unsigned DEFAULT '0',
  tx_typo3forum_read_topics int(11) unsigned DEFAULT '0',
  tx_typo3forum_support_posts int(11) unsigned DEFAULT '0',
  tx_typo3forum_use_gravatar tinyint(1) unsigned DEFAULT '0',
  tx_typo3forum_facebook varchar(255) DEFAULT NULL,
  tx_typo3forum_twitter varchar(255) DEFAULT NULL ,
  tx_typo3forum_google varchar(255) DEFAULT NULL,
  tx_typo3forum_skype varchar(255) DEFAULT NULL,
  tx_typo3forum_job varchar(255) DEFAULT NULL,
  tx_typo3forum_working_environment int(11) unsigned DEFAULT '0',
  tx_typo3forum_contact text,
  KEY `tx_typo3forum_rank` (`tx_typo3forum_rank`)
);

#
# Table structure for table "fe_groups"
#
CREATE TABLE fe_groups (
  tx_typo3forum_user_mod tinyint(3) unsigned DEFAULT '0'
);


#
# Table structure for table 'tx_typo3forum_cache'
#
CREATE TABLE tx_typo3forum_cache (
  id int(11) unsigned NOT NULL auto_increment,
  identifier varchar(250) NOT NULL DEFAULT '',
  crdate int(11) unsigned DEFAULT '0',
  content mediumblob,
  lifetime int(11) unsigned DEFAULT '0',
  PRIMARY KEY (id),
  KEY cache_id (identifier)
);


#
# Table structure for table 'tx_typo3forum_cache_tags'
#
CREATE TABLE tx_typo3forum_cache_tags (
  id int(11) unsigned NOT NULL auto_increment,
  identifier varchar(250) NOT NULL DEFAULT '',
  tag varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (id),
  KEY cache_id (identifier),
  KEY cache_tag (tag)
);

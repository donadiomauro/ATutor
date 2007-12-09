﻿###############################################################
# Database UTF-8 database conversion for ATutor < 1.6
# This script only applies to those databases that have UTF-8
# data in non-UTF-8 tables.
# ref: http://dev.mysql.com/doc/refman/5.0/en/alter-table.html
# @author harris
###############################################################

# 1.6 UTF 8 Conversion to Binary
ALTER TABLE `admins` MODIFY COLUMN `real_name` BLOB;
ALTER TABLE `assignments` MODIFY COLUMN `title` BLOB;
ALTER TABLE `backups` MODIFY COLUMN `description` BLOB, MODIFY COLUMN `file_name` BLOB;
ALTER TABLE `blog_posts` MODIFY COLUMN `title` BLOB;
ALTER TABLE `content` MODIFY COLUMN `keywords` BLOB, MODIFY COLUMN `content_path` BLOB,
 MODIFY COLUMN `title` BLOB;
ALTER TABLE `courses` MODIFY COLUMN `title` BLOB;
ALTER TABLE `course_cats` MODIFY COLUMN `cat_name` BLOB;
ALTER TABLE `external_resources` MODIFY COLUMN `title` BLOB, MODIFY COLUMN `author` BLOB,
 MODIFY COLUMN `publisher` BLOB, MODIFY COLUMN `comments` BLOB;
ALTER TABLE `faq_entries` MODIFY COLUMN `question` BLOB;
ALTER TABLE `faq_topics` MODIFY COLUMN `name` BLOB;
ALTER TABLE `folders` MODIFY COLUMN `title` BLOB;
ALTER TABLE `forums` MODIFY COLUMN `title` BLOB;
ALTER TABLE `forums_threads` MODIFY COLUMN `subject` BLOB;
ALTER TABLE `glossary` MODIFY COLUMN `word` BLOB;
ALTER TABLE `groups` MODIFY COLUMN `title` BLOB;
ALTER TABLE `groups_types` MODIFY COLUMN `title` BLOB;
ALTER TABLE `links` MODIFY COLUMN `Description` BLOB,
 MODIFY COLUMN `SubmitName` BLOB, MODIFY COLUMN `SubmitEmail` BLOB;
ALTER TABLE `links_categories` MODIFY COLUMN `name` BLOB;
ALTER TABLE `mail_queue` MODIFY COLUMN `subject` BLOB;
ALTER TABLE `members` MODIFY COLUMN `first_name` BLOB, MODIFY COLUMN `second_name` BLOB,
 MODIFY COLUMN `last_name` BLOB, MODIFY COLUMN `address` BLOB, MODIFY COLUMN `city` BLOB,
 MODIFY COLUMN `province` BLOB, MODIFY COLUMN `country` BLOB;
ALTER TABLE `messages` MODIFY COLUMN `subject` BLOB;
ALTER TABLE `messages_sent` MODIFY COLUMN `subject` BLOB;
ALTER TABLE `news` MODIFY COLUMN `title` BLOB;
ALTER TABLE `polls` MODIFY COLUMN `question` BLOB, MODIFY COLUMN `choice1` BLOB,
 MODIFY COLUMN `choice2` BLOB, MODIFY COLUMN `choice3` BLOB, MODIFY COLUMN `choice4` BLOB,
 MODIFY COLUMN `choice5` BLOB, MODIFY COLUMN `choice6` BLOB, MODIFY COLUMN `choice7` BLOB;
ALTER TABLE `tests` MODIFY COLUMN `title` BLOB;
ALTER TABLE `tests_questions` MODIFY COLUMN `choice_0` BLOB,
 MODIFY COLUMN `choice_1` BLOB,
 MODIFY COLUMN `choice_2` BLOB,
 MODIFY COLUMN `choice_3` BLOB,
 MODIFY COLUMN `choice_4` BLOB,
 MODIFY COLUMN `choice_5` BLOB,
 MODIFY COLUMN `choice_6` BLOB,
 MODIFY COLUMN `choice_7` BLOB,
 MODIFY COLUMN `choice_8` BLOB,
 MODIFY COLUMN `choice_9` BLOB,
 MODIFY COLUMN `option_0` BLOB,
 MODIFY COLUMN `option_1` BLOB,
 MODIFY COLUMN `option_2` BLOB,
 MODIFY COLUMN `option_3` BLOB,
 MODIFY COLUMN `option_4` BLOB,
 MODIFY COLUMN `option_5` BLOB,
 MODIFY COLUMN `option_6` BLOB,
 MODIFY COLUMN `option_7` BLOB,
 MODIFY COLUMN `option_8` BLOB,
 MODIFY COLUMN `option_9` BLOB;


# 1.6 UTF 8 table VARCHAR * 4 changes
ALTER TABLE `admins` MODIFY COLUMN `real_name` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `assignments` MODIFY COLUMN `title` VARCHAR(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `backups` MODIFY COLUMN `description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `file_name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
 ALTER TABLE `blog_posts` MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `content` MODIFY COLUMN `keywords` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `content_path` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `courses` MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `course_cats` MODIFY COLUMN `cat_name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `external_resources` MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `author` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `publisher` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `comments` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `faq_entries` MODIFY COLUMN `question` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `faq_topics` MODIFY COLUMN `name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `folders` MODIFY COLUMN `title` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `forums` MODIFY COLUMN `title` VARCHAR(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `forums_threads` MODIFY COLUMN `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `glossary` MODIFY COLUMN `word` VARCHAR(240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `groups` MODIFY COLUMN `title` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `groups_types` MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `links` MODIFY COLUMN `Description` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `SubmitName` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `SubmitEmail` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `links_categories` MODIFY COLUMN `name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `mail_queue` MODIFY COLUMN `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `members` MODIFY COLUMN `first_name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `second_name` VARCHAR(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `last_name` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `address` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `city` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `province` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `country` VARCHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `messages` MODIFY COLUMN `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `messages_sent` MODIFY COLUMN `subject` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `news` MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `polls` MODIFY COLUMN `question` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice1` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice2` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice3` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice4` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice5` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice6` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice7` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `tests` MODIFY COLUMN `title` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `tests_questions` MODIFY COLUMN `choice_0` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_1` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_2` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_3` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_4` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_5` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_6` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_7` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_8` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `choice_9` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_0` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_1` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_2` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_3` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_4` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_5` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_6` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_7` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_8` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `option_9` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `tests_questions_categories` MODIFY COLUMN `title` CHAR(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;
ALTER TABLE `themes` MODIFY COLUMN `title` VARCHAR(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
 MODIFY COLUMN `extra_info` MEDIUMTEXT CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


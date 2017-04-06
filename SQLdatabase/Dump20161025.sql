-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: 52.72.17.21    Database: 673project
-- ------------------------------------------------------
-- Server version	5.5.47-0ubuntu0.14.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ChatNowChannel`
--

DROP TABLE IF EXISTS `ChatNowChannel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChatNowChannel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_name` varchar(95) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `archived` tinyint(2) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChatNowChannel`
--

LOCK TABLES `ChatNowChannel` WRITE;
/*!40000 ALTER TABLE `ChatNowChannel` DISABLE KEYS */;
INSERT INTO `ChatNowChannel` VALUES (1,'general',0),(15,'Testing',0),(16,'off topic',1),(17,'Production Testing',1);
/*!40000 ALTER TABLE `ChatNowChannel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChatNowPrivateMessage`
--

DROP TABLE IF EXISTS `ChatNowPrivateMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChatNowPrivateMessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `message_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sender_id` int(11) NOT NULL,
  `recipient_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ChatNowPrivateMessage_users` (`sender_id`),
  KEY `ChatNowPrivateMessage_users2` (`recipient_id`),
  CONSTRAINT `ChatNowPrivateMessage_users` FOREIGN KEY (`sender_id`) REFERENCES `users` (`idusers`),
  CONSTRAINT `ChatNowPrivateMessage_users2` FOREIGN KEY (`recipient_id`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChatNowPrivateMessage`
--

LOCK TABLES `ChatNowPrivateMessage` WRITE;
/*!40000 ALTER TABLE `ChatNowPrivateMessage` DISABLE KEYS */;
INSERT INTO `ChatNowPrivateMessage` VALUES (71,'Database has been cleared - μProject is ready for use.','2016-07-08 23:06:29',12,13),(72,'Database has been cleared - μProject is ready for use.','2016-07-08 23:06:35',12,14),(73,'Database has been cleared - μProject is ready for use.','2016-07-08 23:06:39',12,15),(74,'Database has been cleared - μProject is ready for use.','2016-07-08 23:06:43',12,16),(75,'Database has been cleared - μProject is ready for use.','2016-07-08 23:06:48',12,18),(76,'Database has been cleared - μProject is ready for use.','2016-07-08 23:09:31',12,17),(77,'Thanks Chris!','2016-07-09 08:54:01',15,12),(78,'I loaded all of the Bugs info from Trello into the system for us.','2016-07-09 21:10:35',18,13),(79,'I loaded all of the Trello stories into Queued for you. Enjoy the break :) ','2016-07-09 21:20:25',18,12),(80,'I loaded all of the Trello stories into queued for you','2016-07-09 21:39:23',18,15),(81,'Wow thanks','2016-07-09 23:16:40',12,18),(82,'Hi David, Thanks doing the transfer for me!  I really appreciate it!  SJ','2016-07-10 18:50:12',15,18),(83,'Hi Sang. Just saw a new bug opened on Gitgub - these need to be entered only in our Bugs app.','2016-07-11 11:35:10',12,15),(84,'Got it! I added it to our bugs app. =)','2016-07-11 11:45:14',15,12),(85,'By the way, since Jackie takes notes for us every time I always made a point of sending her the agenda right before we started so it made it super easy to follow along. Here\'s an example from a couple weeks ago','2016-07-11 14:10:38',18,15),(86,'Agenda 2016-06-30 @ 19:00\n\nWhat have you gotten done? What do you have planned to finish by next Monday? Is anything holding you up?\n\nUnit testing\n\nKill settings/help\n\nPresentation\n\nSelecting 3rd iteration leader','2016-07-11 14:10:43',18,15),(87,'That\'s great. Thanks!','2016-07-11 14:53:47',15,18),(88,'Hi Jackie,  Here is agenda for the meeting today:  Agenda 2016-07-11\n\nWhat have you gotten done? - bug fixing\nWhat do you have planned to finish by next Monday? \nIs anything holding you up?\n\nUnit testing - focus for the week\n\nDocumentation - get started \n','2016-07-11 17:13:37',15,13),(89,'Hi Jackie,  \nHere is topics for today:  \n\nDiscuss progress on testing - Updates, any blocking items?\nDiscuss upcoming task plans.\nDecision on when to release to production\n\nThanks!\n\nSJ','2016-07-14 17:33:11',15,13),(90,'Here is link to today\'s meeting:\n\nhttps://docs.google.com/spreadsheets/d/1IqwypnUCrZT34FTjzUIE9j9hM-hwyrZDfI17gSXvfUk/edit?usp=sharing\n\nPlease feel free to add other topics you want to discuss. \n','2016-07-14 18:03:12',15,12),(91,'Here is link to today\'s meeting:\n\nhttps://docs.google.com/spreadsheets/d/1IqwypnUCrZT34FTjzUIE9j9hM-hwyrZDfI17gSXvfUk/edit?usp=sharing\n\nPlease feel free to add other topics you want to discuss. \n','2016-07-14 18:03:23',15,14),(92,'Here is link to today\'s meeting:\n\nhttps://docs.google.com/spreadsheets/d/1IqwypnUCrZT34FTjzUIE9j9hM-hwyrZDfI17gSXvfUk/edit?usp=sharing\n\nPlease feel free to add other topics you want to discuss. \n','2016-07-14 18:03:27',15,16),(93,'Here is link to today\'s meeting:\n\nhttps://docs.google.com/spreadsheets/d/1IqwypnUCrZT34FTjzUIE9j9hM-hwyrZDfI17gSXvfUk/edit?usp=sharing\n\nPlease feel free to add other topics you want to discuss. \n','2016-07-14 18:03:34',15,18),(94,'https://docs.google.com/spreadsheets/d/1IqwypnUCrZT34FTjzUIE9j9hM-hwyrZDfI17gSXvfUk/edit?usp=sharing\n','2016-07-14 18:04:07',15,13),(95,'Here is the link','2016-07-14 18:04:10',15,13),(96,'I like your idea of having the socket connection on every page (using the main_layout), with a hidden channel. Did some preliminary testing and I think I can make it work. Might even be able to have notifications on the header now when you receive a new message and you\'re in Queued or Bugs. More to come.','2016-07-16 11:14:35',12,18),(97,'That\'s awesome. If I can do something to help let me know.','2016-07-16 11:50:22',18,12),(98,'All set with the socket.io changes and the online user tracking. User count is live now (i.e. no longer just on page refresh). Also, I added a global online user tracker on the header, next to  μProject. It\'s not styled so feel free to change its look.','2016-07-16 15:25:06',12,18),(99,'It\'s only on the develop branch for now, will deploy to the server on Tuesday as discussed.','2016-07-16 15:26:03',12,18),(100,'Hi Jackie, do you have meeting minutes from July 11th?','2016-07-18 17:11:46',15,13),(101,'I tried the link and its leads to July 8th. ','2016-07-18 17:11:58',15,13),(102,'Thanks','2016-07-18 17:12:00',15,13),(103,'Here is topics for today:  It will be a short meeting. \n\nDiscuss progress on testing - Updates, any blocking items?\nDiscuss upcoming task plans.','2016-07-18 17:24:23',15,13),(104,'sorry about that - here\'s 7/11 meeting minutes ','2016-07-18 19:01:27',13,15),(105,'https://docs.google.com/document/d/1jl-FbXgR0iw2nbC6qOm4d6dfKbLpNKO6KpDW2MgVPF8/edit?usp=sharing','2016-07-18 19:01:28',13,15),(106,'Hey..','2016-07-18 20:53:16',16,15),(107,'Hi Srivathsa, I assigned you to the issue item #75 for Queued: Create Project leads to login page upon save. Now that you are more familiar with the code base, I think it will be a good experience for you to get hands on deeper on development.  Let me know if you run into any issues while working on it. \n','2016-07-19 17:14:28',15,16),(108,'Hi Sang, cool. I will work on it.','2016-07-20 13:37:11',16,15),(109,'Hi Jackie, ','2016-07-21 16:29:19',15,13),(110,'Here is Today\'s Meeting Agenda:\n\n1. Round table updates:\n- What have you got gone? and what are your plans for next few days?\n\n2. Discussion on mobile drag-and-drop \n- what is your user experience?\n\n3. Plan for any UI updates?','2016-07-21 16:29:27',15,13),(111,'old screenshots have been restored','2016-07-22 06:52:18',12,13),(112,'Hi Jackie, here are today\'s meeting agenda for your reference.    Today\'s Meeting Agenda:\n\n1. Round table updates:\n- How\'s testing going? \n- Any outstanding development that you are working on?\n\n2. Production date:\n- Today or tomorrow? for final testing?\n\n3. Final Production date:\n- This Thursday. Is everyone okay with that?\n\n4. Final Presentation preparation. \n- Started from last presentation. Any suggestion on format?\nhttps://docs.google.com/presentation/d/16YzApMn5q91soxC-xdeQwMEK7guIEaZAZMJBPv9cbGo/edit?usp=sharing','2016-07-25 16:56:06',15,13),(113,'FYI: All meeting notes and quad report has been submitted for July 25, 2016 (Today).','2016-07-25 16:57:02',15,13),(114,'Hi Sri, how are you doing? I hope you are feeling better.  We have another push to production code today. I was wondering where you are with the bug fixes and if you need any help. Let me know. Thanks!','2016-07-26 13:55:41',15,16),(115,'Hi Sang,','2016-07-26 13:58:14',16,15),(116,'Thanks. Yes feeling better. I am working on it. Hopefully i will be done before we push the code to production.','2016-07-26 13:58:53',16,15),(117,'I am a bit stuck in the project creation bug. I will try again in an hour. Will let you know at 4.30ish if I need help.','2016-07-26 14:00:19',16,15),(118,'Sure! No problem at all.  We are in good shape, so no pressure to complete it right away. Let me know if you need help. ','2016-07-26 14:07:44',15,16),(119,'Here is Presentation outline (Available on blackboard)\nPlease review for Friday\'s meeting. \n\n################################################\n\nEach team will do a final presentation of their project on Monday, August 1. \n\nEach presentation will be 20 - 30 minutes and will include:\n\n- A presentation answering the questions listed below. Order is not important\n- A demo of final software\n- Q&A by the class\n\nThe presentation will answer the following:\n\n- What where the original goals of the project?\n- Describe the team, organization, and skills\n- What was achieved? What was the delta? Why?\n- Describe the development and software engineering process\n- What attributes from other processes (Bohm, Waterfall) did you use?\n- Did the process change during the semester? How? When? Why\n- For a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\n- What patterns were used in the development?\n- What is your data model?\n- What are the top 3 lessons learned? Explain\n\n','2016-07-27 11:14:37',15,12),(120,'Here is Presentation outline (Available on blackboard)\nPlease review for Friday\'s meeting. \n\n################################################\n\nEach team will do a final presentation of their project on Monday, August 1. \n\nEach presentation will be 20 - 30 minutes and will include:\n\n- A presentation answering the questions listed below. Order is not important\n- A demo of final software\n- Q&A by the class\n\nThe presentation will answer the following:\n\n- What where the original goals of the project?\n- Describe the team, organization, and skills\n- What was achieved? What was the delta? Why?\n- Describe the development and software engineering process\n- What attributes from other processes (Bohm, Waterfall) did you use?\n- Did the process change during the semester? How? When? Why\n- For a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\n- What patterns were used in the development?\n- What is your data model?\n- What are the top 3 lessons learned? Explain\n\n','2016-07-27 11:14:46',15,13),(121,'Here is Presentation outline (Available on blackboard)\nPlease review for Friday\'s meeting. \n\n################################################\n\nEach team will do a final presentation of their project on Monday, August 1. \n\nEach presentation will be 20 - 30 minutes and will include:\n\n- A presentation answering the questions listed below. Order is not important\n- A demo of final software\n- Q&A by the class\n\nThe presentation will answer the following:\n\n- What where the original goals of the project?\n- Describe the team, organization, and skills\n- What was achieved? What was the delta? Why?\n- Describe the development and software engineering process\n- What attributes from other processes (Bohm, Waterfall) did you use?\n- Did the process change during the semester? How? When? Why\n- For a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\n- What patterns were used in the development?\n- What is your data model?\n- What are the top 3 lessons learned? Explain\n\n','2016-07-27 11:14:56',15,14),(122,'Here is Presentation outline (Available on blackboard)\nPlease review for Friday\'s meeting. \n\n################################################\n\nEach team will do a final presentation of their project on Monday, August 1. \n\nEach presentation will be 20 - 30 minutes and will include:\n\n- A presentation answering the questions listed below. Order is not important\n- A demo of final software\n- Q&A by the class\n\nThe presentation will answer the following:\n\n- What where the original goals of the project?\n- Describe the team, organization, and skills\n- What was achieved? What was the delta? Why?\n- Describe the development and software engineering process\n- What attributes from other processes (Bohm, Waterfall) did you use?\n- Did the process change during the semester? How? When? Why\n- For a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\n- What patterns were used in the development?\n- What is your data model?\n- What are the top 3 lessons learned? Explain\n\n','2016-07-27 11:15:04',15,16),(123,'Here is Presentation outline (Available on blackboard)\nPlease review for Friday\'s meeting. \n\n################################################\n\nEach team will do a final presentation of their project on Monday, August 1. \n\nEach presentation will be 20 - 30 minutes and will include:\n\n- A presentation answering the questions listed below. Order is not important\n- A demo of final software\n- Q&A by the class\n\nThe presentation will answer the following:\n\n- What where the original goals of the project?\n- Describe the team, organization, and skills\n- What was achieved? What was the delta? Why?\n- Describe the development and software engineering process\n- What attributes from other processes (Bohm, Waterfall) did you use?\n- Did the process change during the semester? How? When? Why\n- For a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\n- What patterns were used in the development?\n- What is your data model?\n- What are the top 3 lessons learned? Explain\n\n','2016-07-27 11:15:12',15,18),(124,'Hey Srivathsa, How\'s the implementation going? do you need some help? I can take over one of the bugs if you like.  - SJ','2016-07-27 12:09:00',15,16),(125,'I am looking into issue regarding project with one member  - going go login page. ','2016-07-27 14:00:15',15,16),(126,'I fixed the bug for project with one member.  ','2016-07-27 15:56:47',15,16),(127,'Could you work on the other bug with Cancel button? Thanks.','2016-07-27 15:56:59',15,16),(128,'Hi Sang, My fix broke a something else.\nI am trying something else tonight.','2016-07-27 18:54:51',16,15),(129,'Oh you already fixed. I will fix the cancel button tonight.','2016-07-27 18:55:47',16,15),(130,'hey~ how\'s the bug fix looking?','2016-07-29 14:41:06',15,16),(131,'do you need some help?','2016-07-29 14:41:09',15,16),(132,'Hi Sang,\nLet me know when free','2016-07-29 15:53:15',16,15),(133,'Hey. I have some time now but i can\'t talk on the phone. I left my phone at home','2016-07-29 16:11:40',15,16),(134,'how are things? did you make some progress on it?','2016-07-29 16:12:06',15,16),(135,'Hi Juan, I tried \"Add member\" functionality, but couldn\'t get it to work properly. ','2016-07-29 17:07:11',15,14),(136,'how does it work? could you help? I want to test it before releasing it.  Thanks.','2016-07-29 17:07:33',15,14),(137,'\nMeeting Agenda for 7pm:\n 1. Status on Bug Fix\n\n 2. Status on Testing\n\n 3. Prep for Presentation\n     - presentation material  - ownership of who will take on which slides\n     - who will do presentation slide? who will do demo? \n     - Q & A - architects? or everyone answering?\n\n 4. Documentation\n     - SDD material\n','2016-07-29 17:12:00',15,13),(138,'Hey,\nI pushed in the cancel button for Edit Project? It works as expected.\n\nBut, I didn\'t complete implementing the cancel button for the Create Project.','2016-07-29 19:15:49',16,15),(139,'what do u think I should do?\n\nReply at your leisure','2016-07-29 19:16:15',16,15),(140,'hi','2016-07-29 19:46:58',12,18),(141,'hi david','2016-07-29 19:47:47',12,18),(142,'hi','2016-07-29 19:48:04',12,16),(143,'Hi Sang - I forgot, I was going to ask: do I need to update the SDD? I remember you sent out a link about a month ago but I haven\'t look at it in a while.','2016-07-29 23:59:31',12,15),(144,'I think SDD is good for now. I\'ll insert some content for that but mostly it should be fine. ','2016-07-30 01:41:53',15,12),(145,'ok thanks','2016-07-30 01:42:06',12,15),(146,'Hi Juan - all set with coding?','2016-07-31 21:01:56',12,14),(147,'hi','2016-07-31 23:42:48',12,19),(148,'Test','2016-08-01 05:20:43',16,19),(149,'Hey, I found a few bugs. Fixed a few of them. Have analysed a couple but wasn\'t confident to checkin without review.\n\nIt would be good if we can fix a couple of others and deploy again!\n\nCheck the list here: https://docs.google.com/document/d/16NfOSYFrrTI51HvrwiAmEosFiu_b1ngkLw7l9Yc3w_s/edit?usp=sharing\nHave added comments as well','2016-08-01 12:20:21',16,15),(150,'Thanks for letting know. It\'s a bit late hopefully I can get those fixed for production. I\'ll keep you updated. Thanks. ','2016-08-01 13:18:11',15,16),(151,'did you fix and push the code for first two bugs in the list (from the doc you sent me)?','2016-08-01 15:40:03',15,16),(152,'Hi Ron, This is Sang-Joon from OneTeam.  For final submission, what do you require us to submit?   Is it final presentation PPT only? or QuadReport + Meeting Minutes + Individual Report?   Thanks. ','2016-08-01 17:41:56',15,17),(153,'Also what do you mean by Data Model?','2016-08-01 18:17:43',15,17),(154,'Hi.. yes. I fixed the first 3 bugs on the list..','2016-08-01 18:47:36',16,15),(155,'hi','2016-08-01 21:04:06',12,16),(156,'test','2016-08-01 21:14:23',16,12),(157,'test\'','2016-08-01 21:25:33',16,12),(158,'Test email','2016-08-01 21:30:16',16,12),(159,'Hey, could you send me a msg on private chat.\nTesting something','2016-08-01 23:15:43',16,12),(160,'hi','2016-08-01 23:16:26',12,16),(161,'cool thanks!','2016-08-01 23:16:39',16,12),(162,'np','2016-08-01 23:16:44',12,16),(163,'Don\'t bother to create a new account, just use an existing one. No one needs to see us create yet another account.','2016-08-02 00:32:53',18,16),(164,'Test, now','2016-08-02 01:08:34',17,12),(165,'Hi','2016-08-02 01:08:53',16,12),(166,'New message','2016-08-02 01:10:05',17,12),(167,'Hi.. test msg..','2016-08-02 01:10:06',16,12),(168,'Test','2016-08-02 01:10:15',16,12),(169,'Hi, this is a test msg to demonstrate email notification feature of ChatNow.','2016-08-02 01:11:08',16,17);
/*!40000 ALTER TABLE `ChatNowPrivateMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ChatNowPublicMessage`
--

DROP TABLE IF EXISTS `ChatNowPublicMessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ChatNowPublicMessage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message_content` text CHARACTER SET utf8mb4 NOT NULL,
  `message_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sender_id` int(11) NOT NULL,
  `channel_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ChatNowMessage_ChatNowChannel` (`channel_id`),
  KEY `ChatNowMessage_users` (`sender_id`),
  CONSTRAINT `ChatNowMessage_ChatNowChannel` FOREIGN KEY (`channel_id`) REFERENCES `ChatNowChannel` (`id`),
  CONSTRAINT `ChatNowMessage_users` FOREIGN KEY (`sender_id`) REFERENCES `users` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=332 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ChatNowPublicMessage`
--

LOCK TABLES `ChatNowPublicMessage` WRITE;
/*!40000 ALTER TABLE `ChatNowPublicMessage` DISABLE KEYS */;
INSERT INTO `ChatNowPublicMessage` VALUES (180,'Project -> Stories truncate their title but do not store the longer title in the database. How about just using an unlimited title length and use the truncate function on the project view page when it wraps longer than 3 lines?','2016-07-09 10:11:06',18,1),(181,'sounds good','2016-07-09 10:29:06',12,1),(182,'Updated the database structure to allow for a length of 2000 characters in the title for project titles and descriptions.','2016-07-09 17:59:38',18,1),(183,'Stories are loaded into Queued from Trello','2016-07-09 21:39:52',18,1),(184,'I replaced the Dev database with the production database so that we have nice data to work with from here on out. I have a backup of the tables if they are needed for some reason.','2016-07-09 21:44:21',18,1),(185,'Nice job','2016-07-09 23:19:14',12,1),(186,'Great. Thanks David!','2016-07-10 18:50:34',15,1),(187,'Meeting minutes from Friday after class - https://docs.google.com/document/d/10VB7RXGyHK592y9fbqbY-fMMwgeh8AaE2fro4SQI_t8/edit?usp=sharing','2016-07-11 14:58:26',13,1),(188,'','2016-07-11 17:50:54',16,1),(189,'','2016-07-11 17:50:57',16,1),(190,'','2016-07-11 17:51:19',16,1),(191,'','2016-07-11 17:51:52',16,15),(192,'','2016-07-11 17:51:53',16,15),(193,'Empty message ^^','2016-07-11 17:51:59',16,15),(194,'','2016-07-11 17:55:34',12,15),(195,'','2016-07-11 18:36:24',15,1),(196,'Editing a Channel name','2016-07-11 19:33:28',16,15),(197,'Hi Everyone,\n\nHere is link to today\'s meeting:\n\nhttps://docs.google.com/spreadsheets/d/1IqwypnUCrZT34FTjzUIE9j9hM-hwyrZDfI17gSXvfUk/edit?usp=sharing\n\nPlease feel free to add other topics you want to discuss. \n\nI will send out a google hangout link prior to meeting start time. \nThanks!\n\nSJ','2016-07-14 17:32:01',15,1),(198,'Meeting minutes from Monday - 7/11 - https://docs.google.com/document/d/10VB7RXGyHK592y9fbqbY-fMMwgeh8AaE2fro4SQI_t8/edit?usp=sharing','2016-07-14 18:56:54',13,1),(199,'I am on the way back. I ll join on the go.','2016-07-14 19:00:28',16,1),(200,'https://hangouts.google.com/call/fkcbnvxtqjdcvp3jmif6ztentqe','2016-07-14 19:00:28',15,1),(201,'Meeting minutes from tonight - 7/14 - https://docs.google.com/document/d/1Y3SAGuE5nB8PzCmY9lDzcfWWZp3c2RwiYzxSH9G9UqQ/edit?usp=sharing','2016-07-14 19:11:53',13,1),(202,'Thanks Jackie!','2016-07-14 20:59:26',15,1),(203,'Are we marking bugs Closed when we fix it in develop/localhost, or when we deploy it to the server?','2016-07-16 16:34:54',12,1),(204,'My thoughts are to mark it Closed when we fix it in develop/localhost.  Assumption is that we have completed adequate testing, if not all testing on the feature we have fixed or developed. ','2016-07-17 15:36:12',15,1),(205,'Just a reminder that we will be pushing the code to production on Tuesday evening. Please plan to fix and bugs you are working on and push to develop. Thanks.','2016-07-17 15:37:03',15,1),(206,'Does the #of online users displayed at the top count the person logged in as well?','2016-07-18 17:54:59',16,1),(207,'It would be ideal if we had a separate test environment running that Srivathsa could QA that instead of using our production environment and retest the issues that have been reported and mark them as \"verified\" before we move items to prod, but given that we only have our local and prod environment, it should be fine to mark most issues as closed if you feel its sufficiently tested. For one of my issues (the email notification), I\'m going to wait until it goes to prod to mark it as closed because there is a script that will be executed at 3:30pm daily. I have tested it locally but I want that to be able to run somewhere other than my local workspace, then I will verify and mark it as closed. ','2016-07-18 19:22:14',13,1),(208,'What does everyone think of how queued stories scroll now? While it\'s nice not to have a forever long page i\'m not actually sure it makes things better since you have to know to scroll.','2016-07-18 19:35:05',18,1),(209,'Jackie, that\'s good point. Thanks for sharing.   ','2016-07-18 20:52:17',15,1),(210,'David, I get what mean. User may not see that there are more items since scroll is not visible by default. ','2016-07-18 20:53:04',15,1),(211,'hi','2016-07-18 21:31:29',12,1),(212,'deploying soon','2016-07-19 19:39:46',12,1),(213,'deployment complete','2016-07-19 19:54:50',12,1),(214,'Thanks Chris! looking great!','2016-07-19 23:50:17',15,1),(215,'Thanks Chris, seems like the drag and drop did not work on mobile. This is what I used: http://touchpunch.furf.com','2016-07-19 23:53:30',14,1),(216,'I\'ll try some more later on this week, I\'m determined to get this working! ','2016-07-19 23:53:52',14,1),(217,'Hi Juan, I tried the drag and drop on mobile and it does work. The problem is that it does not work well when combining that with scroll functionality for each list.  The user may want to just scroll but it may (with high possibility) grab a story and start dragging them down. ','2016-07-20 10:54:08',15,1),(218,'Perhaps, we can disable scroll when it is open in mobile.?','2016-07-20 10:54:31',15,1),(219,'Fixed the online user count issue - Now the number in the comment bubble (next to ChatNow) reflects who\'s in ChatNow (just like the dashboard), and additionally there is a global online user count in the top left that tracks who is in any component.','2016-07-20 20:15:57',12,1),(220,'we can discuss the mobile drag and drop tomorrow and we can decide. maybe disabling the scroll would be an option','2016-07-20 20:31:47',14,1),(221,'nice job Chris!','2016-07-20 20:33:03',14,1),(222,'meeting minutes from 7/18 Monday Night\'s class - https://docs.google.com/document/d/1gpMuJaY-tBc5HS-2wIARoVEbtEXXmqDoP61V0Z_qZ0Q/edit?usp=sharing  sorry for the delay, google sharing wasn\'t working','2016-07-20 22:24:09',13,1),(223,'No problem! Thanks Jackie. ','2016-07-21 08:27:45',15,1),(224,'Juan, that sounds good. Let\'s discuss tonight. ','2016-07-21 08:28:02',15,1),(225,'Hello Everyone, hope you are having a great week so far.  ','2016-07-21 16:28:28',15,1),(226,'Here are agenda for today\'s meeting at 7pm. ','2016-07-21 16:28:37',15,1),(227,'Today\'s Meeting Agenda:\n\n1. Round table updates:\n   - What have you got gone? and what are your plans for next few days?\n\n2. Discussion on mobile drag-and-drop \n   - what is your user experience?\n\n3. Plan for any UI updates?','2016-07-21 16:28:38',15,1),(228,'Please feel free to add other agenda items here','2016-07-21 16:28:56',15,1),(229,'https://hangouts.google.com/group/8bQLwz1k8RSIQYJB2','2016-07-21 18:59:31',15,1),(230,'here is link to today\'s meeting','2016-07-21 19:00:16',15,1),(231,'Meeting minutes from tonight, thanks everyone! https://docs.google.com/document/d/1y7DsDnaPfeCFvw3b4ITG4SG7JbxRmpmIrmW9MwpbOIs/edit?usp=sharing','2016-07-21 19:16:35',13,1),(232,'p.s. if you want to test out the email functionality by setting a requirement due + 2 days out, you can do that now since Chris deployed that code. ex: if something is due 7/28, you\'ll get an email at 3:30pm on 7/27','2016-07-21 19:17:32',13,1),(233,'great! thanks Jackie! again. ','2016-07-21 19:24:26',15,1),(234,'Jackie - I got the email for the upcoming due date :)','2016-07-23 17:31:00',12,1),(235,'That\'s great! ','2016-07-25 16:51:00',15,1),(236,'Today\'s Meeting Agenda:\n\n1. Round table updates:\n- How\'s testing going? \n- Any outstanding development that you are working on?\n\n2. Production date:\n- Today or tomorrow? for final testing?\n\n3. Final Production date:\n- This Thursday. Is everyone okay with that?\n\n4. Final Presentation preparation. \n- Started from last presentation. Any suggestion on format?\nhttps://docs.google.com/presentation/d/16YzApMn5q91soxC-xdeQwMEK7guIEaZAZMJBPv9cbGo/edit?usp=sharing','2016-07-25 16:55:34',15,1),(237,' FYI: All meeting notes and quad report has been submitted for July 25, 2016 (Today).','2016-07-25 16:57:15',15,1),(238,'Meeting Minutes from Tonight 7/25 - https://docs.google.com/document/d/1AP-1ENGMSwIYmdwBZcNuKeQNjV1tWg7kH6Y7pXOCxXc/edit?usp=sharing','2016-07-25 21:07:42',13,1),(239,'Thanks Jakie for the meeting minutes. ','2016-07-26 09:17:59',15,1),(240,'Reminder:  Chris will be pushing to code to production tonight at 7:30pm.  ','2016-07-26 09:19:02',15,1),(241,'Please complete any bug fixes and push code to develop branch by tonight. Thank you!','2016-07-26 09:19:34',15,1),(242,'Reminder II:  Weekly Team Meeting has been moved to Friday 7-8pm. ','2016-07-26 09:25:36',15,1),(243,'Does anyone need help with something UI related? Everything seems to be looking okay on my end.','2016-07-26 19:02:24',18,1),(244,'Deploying soon','2016-07-26 19:30:26',12,1),(245,'Deployment complete','2016-07-26 19:45:20',12,1),(246,'Looks good to me.','2016-07-27 09:50:32',18,1),(247,'looking great! Thanks Chris!','2016-07-27 10:56:11',15,1),(248,'Hi Team, Below is presentation outline from Ron:','2016-07-27 11:06:29',15,1),(249,'Each team will do a final presentation of their project on Monday, August 1. Each presentation will be 20 - 30 minutes and will include:\nA presentation answering the questions listed below. Order is not important\nA demo of final software\nQ&A by the class\nThe presentation will answer the following:\nWhat where the original goals of the project?\nDescribe the team, organization, and skills\nWhat was achieved? What was the delta? Why?\nDescribe the development and software engineering process\nWhat attributes from other processes (Bohm, Waterfall) did you use?\nDid the process change during the semester? How? When? Why\nFor a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\nWhat patterns were used in the development?\nWhat is your data model?\nWhat are the top 3 lessons learned? Explain','2016-07-27 11:06:31',15,1),(250,'Here is Better Formated Outline:\n\nEach team will do a final presentation of their project on Monday, August 1. \n\nEach presentation will be 20 - 30 minutes and will include:\n\n- A presentation answering the questions listed below. Order is not important\n- A demo of final software\n- Q&A by the class\n\nThe presentation will answer the following:\n\n- What where the original goals of the project?\n- Describe the team, organization, and skills\n- What was achieved? What was the delta? Why?\n- Describe the development and software engineering process\n- What attributes from other processes (Bohm, Waterfall) did you use?\n- Did the process change during the semester? How? When? Why\n- For a software engineering perspective, what went well? What could have gone better? What improved over the semester? Why?\n- What patterns were used in the development?\n- What is your data model?\n- What are the top 3 lessons learned? Explain','2016-07-27 11:09:02',15,1),(251,'****REMINDER****: There is no meeting today! Meeting is tomorrow @7pm. ','2016-07-28 09:45:55',15,1),(252,'hey David, for the \'data model\' bullet for the presentation, did you say that you can provide vertabelo a schema and it can generate a diagram? thinking of the best/easiest way to get information for that slide. since we all had created separate diagrams for the separate components. ','2016-07-28 17:58:28',13,1),(253,'Sang, i requested access to the doc when you get a chance. not sure if others have access to it yet either, thanks!','2016-07-28 18:18:46',13,1),(254,'I too need edit access - just requested.','2016-07-28 19:40:49',12,1),(255,'https://docs.google.com/presentation/d/16YzApMn5q91soxC-xdeQwMEK7guIEaZAZMJBPv9cbGo/edit?usp=sharing','2016-07-28 20:41:25',15,1),(256,'I just provided access to the file. sorry about that. ','2016-07-28 20:41:39',15,1),(257,'let me know if you have any trouble accessing it. ','2016-07-28 20:41:49',15,1),(258,'thx','2016-07-28 20:41:51',12,1),(259,'able to edit now','2016-07-28 20:43:09',12,1),(260,'great! see you all tonight at 7pm. I will send out a googlehangout link','2016-07-29 15:50:39',15,1),(261,'\nMeeting Agenda for 7pm:\n 1. Status on Bug Fix\n\n 2. Status on Testing\n\n 3. Prep for Presentation\n     - presentation material  - ownership of who will take on which slides\n     - who will do presentation slide? who will do demo? \n     - Q & A - architects? or everyone answering?\n\n 4. Documentation\n     - SDD material\n','2016-07-29 17:11:55',15,1),(262,'5. Final production date and time','2016-07-29 17:19:56',15,1),(263,'Here is link to google hangout:  https://hangouts.google.com/group/2YwgP29zwu9BJVXr1','2016-07-29 18:56:09',15,1),(264,'https://docs.google.com/a/bu.edu/presentation/d/1dI1q045HVWxf8eK1z5GYWDymGylli2d4MAujAvUCPks/edit?usp=sharing','2016-07-29 18:59:06',15,1),(265,'Here is link to overview PPT. ','2016-07-29 18:59:40',15,1),(266,'Meeting Minutes from tonight\'s meeting - https://docs.google.com/document/d/1q3hFmuRjebLcOaAlt5-D0A_yx6gIlCLPXkPutpLMyt4/edit?usp=sharing - thanks everyone :)','2016-07-29 19:47:20',13,1),(267,'Bugs last updated time issue is all set now','2016-07-29 23:52:23',12,1),(268,'Great. Thanks Chris. ','2016-07-30 01:41:03',15,1),(269,'deploying soon','2016-07-31 21:04:17',12,1),(270,'actually waiting until after our meeting at 7','2016-07-31 21:07:27',12,1),(271,'I don\'t think I\'ll be able to make it tonight. I can take on the slides for roles of the team and how we organized each other as well as the slide I started writing about how the project was run. Either Jackie or I can do the Bugs slide and I believe Jackie was going to do the demo. If you need someone for any slide just let me know and I can do it. In terms of how we organized the slides it would be nice to do the speaking all at once but I\'m not sure that will work flow wise. ','2016-07-31 21:16:14',18,1),(272,'Sounds good David. I marked myself down as the doing the bugs slide and the demo too. I noted who had which slide in the notes section of the ppt ','2016-07-31 21:42:57',13,1),(273,'ThanksDavid','2016-07-31 22:50:17',15,1),(274,'https://hangouts.google.com/group/AAHQsMuFuxPbqI043','2016-07-31 22:58:40',15,1),(275,'Meeting minutes from Tonight\'s meeting - https://docs.google.com/document/d/1vFbWDgi_acL7GuteP3FKKz72FNWJN2B-uqAp9kNFk4Q/edit?usp=sharing ','2016-07-31 23:14:47',13,1),(276,'Deployment complete!','2016-07-31 23:31:41',12,1),(277,'Thanks Jackie and Chris!','2016-08-01 04:07:19',16,1),(278,'Queued > Edit Story > Archive Story (X)','2016-08-01 04:09:49',16,15),(279,'Queued > Edit Project >\nIf owner is removed as a member, owner fields becomes blank','2016-08-01 04:19:46',16,15),(280,'^Update: \nAny update to the members field in edit project, \nclears the owner field.','2016-08-01 04:24:44',16,15),(281,'^ Update:\nAny update to the project on the edit page (Project name, description, member changes) leads to blank owner field!','2016-08-01 04:32:26',16,15),(282,'Queued > Archived Projects > Restore Project >> 404','2016-08-01 04:40:55',16,15),(283,'^ Project is un-archived successfully though','2016-08-01 04:41:41',16,15),(284,'<html>\nDashboard – Queued – Personalized Project List\n\nDashboard shows only the projects you are involved (a member of).\nThis list is populated based on whether or not you were added as a member during project creation.\n-	If you are added as a member later on (via edit project), the project doesn’t list on the dash.\n-	If you are removed as a member, the project doesn’t disappear from the dash.\n</html>','2016-08-01 04:46:53',16,15),(285,'I did some testing and found a few bugs.\nShould I report them on Bugs? What do you think. Let me know your thoughts.','2016-08-01 04:51:15',16,1),(286,' ','2016-08-01 05:17:13',16,17),(287,'\n','2016-08-01 05:17:16',16,17),(288,' ','2016-08-01 05:17:26',16,17),(289,'<tag>','2016-08-01 05:17:33',16,17),(290,'~!@#$%^&*()_+=-0987654321','2016-08-01 05:17:58',16,17),(291,'<>','2016-08-01 05:18:07',16,17),(292,'/<html/>','2016-08-01 05:18:20',16,17),(293,'\\<html\\>','2016-08-01 05:18:34',16,17),(294,'<\\html','2016-08-01 05:18:58',16,17),(295,'<\\html>','2016-08-01 05:19:04',16,17),(296,'test','2016-08-01 05:35:18',16,15),(297,'hi, seems that with the introduction of the new layout a bunch of things broke. Sadly, I didn\'t notice those while fixing the auto correct and for now no way we can get them for the presentation today. ','2016-08-01 17:01:35',14,1),(298,'the archive also seems to be affected and will take a look shorty and figure out what happened there','2016-08-01 17:01:52',14,1),(299,'maybe we can adress these bugs at the presentation and fix them for final delievery','2016-08-01 17:02:14',14,1),(300,'Don\'t forget to submit your individual status reports for this week.','2016-08-01 19:22:33',18,1),(301,'Meeting Minutes and Quad Report has been submitted.    (will resubmit quad report if necessary after our meeting prior to class).','2016-08-01 19:36:18',15,1),(302,'What time are we meeting before class?','2016-08-01 20:03:00',18,1),(303,'Let\'s plan for 5:30 pm. ','2016-08-01 20:04:30',15,1),(304,'Alright, sounds good','2016-08-01 20:07:12',18,1),(305,'I\'m here. In one of the adjacent rooms.','2016-08-01 20:54:59',16,1),(306,'I\'m here too - in our classroom.','2016-08-01 21:03:51',12,1),(307,'Will be there in a min','2016-08-01 21:08:20',16,1),(308,'anyone still coding?','2016-08-01 21:09:30',12,1),(309,'test','2016-08-01 21:12:54',16,1),(310,'Deployment complete','2016-08-01 21:25:35',12,1),(311,'awesome! =) ','2016-08-01 21:50:17',15,1),(312,'For those who are demoing, please go through your functionalities you want to demo prior to our turn to see if there are anything broken','2016-08-01 21:58:52',15,1),(313,'thank you all','2016-08-01 21:58:55',15,1),(314,'Does anyone have an app on their phone to mirror their screen on a laptop.\nIt would be cool to just show the mobile view!','2016-08-01 22:29:06',16,1),(315,'test scroll','2016-08-01 22:34:35',16,15),(316,'\nDisplay mobile screen:\n- F12 on Chrome browser to open Dev tools window\n- Focus pointer on the Dev tools window\n- Ctrl + Shift + M\n- Change device type','2016-08-01 23:09:42',16,1),(317,'chris, just fyi i forwarded an example of a  \'requirements due\' email to your yahoo account in case someone wants to have it available during the demo','2016-08-02 00:20:10',13,1),(318,'thx','2016-08-02 00:20:34',12,1),(319,'great idea!','2016-08-02 00:21:08',14,1),(320,'I have the email open on my last tab in Chrome if you\'d like to show it','2016-08-02 00:22:02',12,1),(321,'not sure who is doing the queued demo, but that\'ll be available in case you want to show it. if not, that\'s okay too. thanks Chris','2016-08-02 00:22:36',13,1),(322,'I am doing Queued demo. You can pitch in for that part of the demo!','2016-08-02 00:24:12',16,1),(323,'Hello all','2016-08-02 01:07:52',17,1),(324,'Awesome job guys, best of luck on the final.','2016-08-02 01:42:04',18,1),(325,'Good teamwork throughout.','2016-08-02 02:28:38',12,1),(326,'I\'ve submitted final presentation PPT, Requirement Analysis Document and Software Design Document. ','2016-08-02 02:56:12',15,1),(327,' Great job everyone!  I have never been part of team \'s more awesome than this one. I almost feel sad that we won\'t be working together on this project anymore. ','2016-08-02 03:00:21',15,1),(328,'Thanks for job well done and wish you all the best in the final! ','2016-08-02 03:00:43',15,1),(329,'Marco','2016-08-04 13:32:41',12,1),(330,'Polo! ','2016-08-04 21:47:27',14,1),(331,'Fish out of water!','2016-08-08 20:47:49',18,1);
/*!40000 ALTER TABLE `ChatNowPublicMessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IssueComments`
--

DROP TABLE IF EXISTS `IssueComments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IssueComments` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Comment` varchar(500) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CreatedBy` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `IssueId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_IssueId_1_idx` (`IssueId`),
  CONSTRAINT `IssueId` FOREIGN KEY (`IssueId`) REFERENCES `Issues` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IssueComments`
--

LOCK TABLES `IssueComments` WRITE;
/*!40000 ALTER TABLE `IssueComments` DISABLE KEYS */;
INSERT INTO `IssueComments` VALUES (1,'Taken care of on dev branch.','davidblair','2016-07-11 18:50:40',59),(2,'Duplicated of ChatNow Online Users Count','chriscarducci','2016-07-13 08:32:18',61),(3,'Noticed this on my laptop, but not on my desktop with the window maximized. However, when I shrink the window on my desktop (to mimic a smaller screen), the image gets cropped without a scrollbar.','chriscarducci','2016-07-13 08:36:06',58),(4,'bug in the code, i incorrectly had the date out of scope','jak464','2016-07-13 19:54:41',63),(5,'thanks for the feedback. i just uploaded an image yesterday that is ginormous. ','jak464','2016-07-13 19:59:50',58),(6,'tested and should be fixed, but will close out the issue once we run the updated code in prod','jak464','2016-07-13 20:00:50',63),(7,'also fixed issue where \'done\' or \'release\' requirements shouldn\'t be sent. uploaded screenshot ','jak464','2016-07-13 21:02:21',63),(8,'i think the issue is the screenshot is not limited to the modal any more. i will check this out','jak464','2016-07-13 21:03:22',58),(9,'Sang-Joon, can you add any more details to this when you get a chance? This will likely be an item for David but wondering what instances this happens as it appears to be functional for me','jak464','2016-07-14 19:20:36',62),(10,'Fixed','davidblair','2016-07-18 19:14:17',62),(11,'No, but you can do it now.','davidblair','2016-07-18 19:28:04',67),(12,'I have no problem undoing a drag of an issue, are you trying to do something else?','davidblair','2016-07-18 19:29:41',65),(13,'Working on dev branch, covers all types.','davidblair','2016-07-18 20:50:17',70),(14,'I don\'t have an issue with duplicates, they are either accidental which is easy to fix and if they are intentional then it\'s no problem.','davidblair','2016-07-18 20:55:17',72),(15,'I don\'t think it\'s necessary, but that\'s because I have way too many tabs for my own good and can easily open in a new tab as desired. ','davidblair','2016-07-18 20:56:00',71),(16,'Duplicate of #51','davidblair','2016-07-18 20:57:26',68),(17,'I don\'t think its necessary either. Opening up on same tab is fine. User always has right-click option. ','sangDev','2016-07-18 20:58:57',71),(18,'you can always drag it back. How do software know if the move is intentional or unintentional?  hard to tell. ','sangDev','2016-07-18 21:02:18',65),(19,'duplicate can be fine. I don\'t think its necessary to check for them. \r\n1. Story or Issue will  rarely have the same name bc it will be description in sentences. \r\n2. What if the same issue or story come up again?  This scenario is always possible.  ','sangDev','2016-07-18 21:04:48',72),(20,'this has been logged and fixed. ','sangDev','2016-07-18 21:05:42',76),(21,'Looks like Esc key works. I \'ll verify again and close it out.','srivathsar','2016-07-18 21:29:00',65),(22,'Based on our conversation from yesterday\'s meeting, this will be not considered for now, unless client requests us to do so.   Updating status to deferred. ','sangDev','2016-07-19 08:50:48',72),(23,'Updating status to Verified.  Ready for production testing prior to close.','sangDev','2016-07-19 08:52:08',76),(24,'Based on our conversation from yesterday\'s meeting, this feature is not necessary. User can use right-click new tab option.  Setting status to deferred. ','sangDev','2016-07-19 08:53:32',71),(25,'functionality to add users has been pushed.','jaunl','2016-07-19 17:41:22',51),(26,'Tested on production version.  Updating status to closed. ','sangDev','2016-07-20 10:58:34',76),(27,'Verified on production version. Updating status to closed.','sangDev','2016-07-20 10:59:12',56),(28,'Verified on production version. Updating status to Closed. ','sangDev','2016-07-20 11:01:16',55),(29,'Assigned to Srivathsa. ','sangDev','2016-07-20 11:02:29',75),(30,'this should be resolved, committed ','jak464','2016-07-20 22:22:30',73),(31,'validated that email message works now, screenshot attached ','jak464','2016-07-21 18:40:37',63),(32,'confirmed that this issue is fixed in prod - closing out this ticket','jak464','2016-07-21 18:43:43',70),(33,'archiving this issue due to duplicate','jak464','2016-07-21 18:49:10',59),(34,'email format looks awesome! Great job!','sangDev','2016-07-22 14:12:49',63),(35,'no issue with android. ','sangDev','2016-07-25 16:57:55',74),(36,'Closed. This issue has been set to closed since it works without much issue on mobile devices. ','sangDev','2016-07-26 17:04:16',74),(37,'this has been tested locally. put it to test.\r\n','sangDev','2016-07-27 11:00:42',78),(38,'this has been verified on production. Updated to Verified. ','sangDev','2016-07-27 11:01:05',78),(39,'Test case has been written. Updated to Closed. ','sangDev','2016-07-27 11:01:20',78),(40,'This is due to \"JSON.stringify(req.body.members);\" and \"membersToCreate = JSON.parse(project_members);\". JSON.stringify does not put proper format when there is one member in the list. Therefore does not work when JSON.parse is called. It does not parse correctly. ','sangDev','2016-07-27 14:02:08',75),(41,'Bug - this was because \"req.body.members\" returns non-array when 1 or less members are assigned to a project.  This causes project_member to be non-array which causes error when this:     \"currUserId = currUserId[0].idusers;  \" is executed. \r\n','sangDev','2016-07-27 15:54:59',75),(42,'Fix -   check if \"req.body.members\" is an array or not to check if there are one or less item:  Here is the fix for the code:                                                                                  // Bug#75: checking if req.body.member is array or not.\r\n        // Non-array is passed if there are one or less members assigned to the project.\r\n        if (Array.isArray(req.body.members) == false) {\r\n            // convert it into array\r\n            memberList = req.body.members.split(\',\'','sangDev','2016-07-27 15:56:08',75),(43,'Srivathsa, could you close this issue by this Friday? Thanks. ','sangDev','2016-07-27 15:57:55',77),(44,'hopefully closing out this ticket soon once this comment shows me last modified updates','jak464','2016-07-28 17:44:09',73),(45,'how does this actually work? I tried testing the functionality but does not work. ','sangDev','2016-07-29 17:05:39',51),(46,'Verified in localhost','srivathsar','2016-07-29 17:09:10',79),(47,'Why not just use the back button? To me it seems like an extra button the interface doesn\'t need.','davidblair','2016-07-29 18:44:04',77),(48,'that make sense too. ','sangDev','2016-07-29 18:50:43',77),(49,'test','davidblair','2016-07-29 19:47:01',51),(50,'test','davidblair','2016-07-29 19:51:29',51),(51,' ','srivathsar','2016-08-01 01:27:15',81),(52,'\r\n','srivathsar','2016-08-01 01:27:20',81),(53,'Verified on Production. Moving to closed.','srivathsar','2016-08-01 01:28:01',77),(54,'Verified on production','srivathsar','2016-08-01 01:28:34',79),(55,'Production - OK','srivathsar','2016-08-01 01:29:49',51),(56,'Production - OK','srivathsar','2016-08-01 01:30:20',80),(57,'Production - OK','srivathsar','2016-08-01 01:30:50',75),(58,'SJ >> OPEN. This is a some what minor (Moderate) issue that requires major effort - queued/saveProjectAfterEdit.js\r\nThis script needs to update the members table in DB.\r\nRequires to delete members from DB table if removed from list.  \r\nRequires to add members from DB table if added to list. \r\nMust have memory - be able to compare new and old list. ','srivathsar','2016-08-01 14:54:11',90),(59,'Tested on local - OK','srivathsar','2016-08-01 15:06:59',88),(60,'Tested on local - OK','srivathsar','2016-08-01 15:07:17',89),(61,'Tested on local - OK','srivathsar','2016-08-01 15:24:20',93),(62,'Tested on local - OK','srivathsar','2016-08-01 15:24:48',94),(63,'Production OK','srivathsar','2016-08-01 17:32:02',88),(64,'hello this is a comment','jak464','2016-08-01 18:18:03',97),(65,'add ac omment\r\n','chriscarducci','2016-08-01 21:12:20',99);
/*!40000 ALTER TABLE `IssueComments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IssueImages`
--

DROP TABLE IF EXISTS `IssueImages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IssueImages` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ImageFilePath` varchar(100) DEFAULT NULL,
  `IssueId` int(11) DEFAULT NULL,
  `OriginalName` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `FileName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `fk_IssueID_1_idx` (`IssueId`),
  CONSTRAINT `fk_IssueID_1` FOREIGN KEY (`IssueId`) REFERENCES `Issues` (`Id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IssueImages`
--

LOCK TABLES `IssueImages` WRITE;
/*!40000 ALTER TABLE `IssueImages` DISABLE KEYS */;
INSERT INTO `IssueImages` VALUES (1,'public/uploads/96ee8d6bd0fab718ab9a784d92381390',57,'Screenshot_2016-07-11-12-54-56.png','Screenshot_2016-07-11-12-54-56.png'),(2,'public/uploads/43f93689106c5eca81317ade1f3db98a',59,'Bugs_Assigned_To.JPG','Bugs_Assigned_To.JPG'),(3,'public/uploads/7b12544dee17b72acfbfd74739b2072f',61,'Screen Shot 2016-07-11 at 6.49.44 PM.png','Screen Shot 2016-07-11 at 6.49.44 PM.png'),(5,'public/uploads/4afb2846866e985319197c4721e71143',64,'Bugs - Assigned To.PNG','Bugs - Assigned To.PNG'),(7,'public/uploads/a574f56a6dd93e1776c76245f35ff644',63,'email.png','email.png'),(8,'public/uploads/facff9204d7f43f4f8f63c225988a97c',75,'2016-07-23 14.06.10.jpg','2016-07-23 14.06.10.jpg'),(9,'public/uploads/cac907220c6c0aa63ae75617addedc8c',81,'Peas.jpg','Peas.jpg'),(10,'public/uploads/be35b5957639d96e379a836c2711b534',81,'Mansarovar.jpg','Mansarovar.jpg'),(11,'public/uploads/6b0ac2391f17dfc5f44fcd9b1e4f7b90',91,'Projects_Alignment.JPG','Projects_Alignment.JPG'),(12,'public/uploads/08748532b0637a550b46b1c244b47c1a',91,'Projects_Alignment2.JPG','Projects_Alignment2.JPG'),(13,'public/uploads/ca6e0760d10d89863bf0d72da1a176d0',91,'Projects_Alignment3.JPG','Projects_Alignment3.JPG'),(14,'public/uploads/9fd70125359630fd66c011b9d2fbd62c',97,'sprinkles.jpg','sprinkles.jpg'),(15,'public/uploads/95c9bf55ef11644cfef0ffe06b98148f',99,'00401_sightfromtheeiffel_2560x1600.jpg','00401_sightfromtheeiffel_2560x1600.jpg'),(16,'public/uploads/4784e18cbaa6aa23163653b9b9c81ed3',99,'Phone Cards AP439471880312.jpg','Phone Cards AP439471880312.jpg');
/*!40000 ALTER TABLE `IssueImages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IssuePriority`
--

DROP TABLE IF EXISTS `IssuePriority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IssuePriority` (
  `Priority` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`Priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IssuePriority`
--

LOCK TABLES `IssuePriority` WRITE;
/*!40000 ALTER TABLE `IssuePriority` DISABLE KEYS */;
INSERT INTO `IssuePriority` VALUES ('HIGH'),('LOW'),('MEDIUM'),('URGENT');
/*!40000 ALTER TABLE `IssuePriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IssueSeverity`
--

DROP TABLE IF EXISTS `IssueSeverity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IssueSeverity` (
  `Severity` varchar(10) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`Severity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IssueSeverity`
--

LOCK TABLES `IssueSeverity` WRITE;
/*!40000 ALTER TABLE `IssueSeverity` DISABLE KEYS */;
INSERT INTO `IssueSeverity` VALUES ('CRITICAL'),('LOW'),('MAJOR'),('MODERATE');
/*!40000 ALTER TABLE `IssueSeverity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IssueStatus`
--

DROP TABLE IF EXISTS `IssueStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IssueStatus` (
  `IssueStatus` varchar(20) CHARACTER SET latin1 NOT NULL,
  PRIMARY KEY (`IssueStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IssueStatus`
--

LOCK TABLES `IssueStatus` WRITE;
/*!40000 ALTER TABLE `IssueStatus` DISABLE KEYS */;
INSERT INTO `IssueStatus` VALUES ('ASSIGN'),('CLOSED'),('DEFERRED'),('NEW'),('OPEN'),('REJECTED'),('REOPENED'),('TEST'),('VERIFIED');
/*!40000 ALTER TABLE `IssueStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Issues`
--

DROP TABLE IF EXISTS `Issues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Issues` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Summary` varchar(2000) CHARACTER SET utf8mb4 DEFAULT NULL,
  `IssueStatus` varchar(20) CHARACTER SET latin1 DEFAULT NULL,
  `Priority` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Severity` varchar(10) CHARACTER SET latin1 DEFAULT NULL,
  `Description` varchar(2000) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedBy` varchar(75) CHARACTER SET utf8mb4 DEFAULT NULL,
  `LastModifiedBy` varchar(75) CHARACTER SET latin1 DEFAULT NULL,
  `CreatedDate` datetime DEFAULT NULL,
  `LastModifiedDate` datetime DEFAULT NULL,
  `Archived` tinyint(1) DEFAULT NULL,
  `AssignedTo` varchar(75) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `FkPriority_idx` (`Priority`),
  KEY `FkSeverity_idx` (`Severity`),
  KEY `FkStatus_idx` (`IssueStatus`),
  CONSTRAINT `FkPriority` FOREIGN KEY (`Priority`) REFERENCES `IssuePriority` (`Priority`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkSeverity` FOREIGN KEY (`Severity`) REFERENCES `IssueSeverity` (`Severity`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FkStatus` FOREIGN KEY (`IssueStatus`) REFERENCES `IssueStatus` (`IssueStatus`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Issues`
--

LOCK TABLES `Issues` WRITE;
/*!40000 ALTER TABLE `Issues` DISABLE KEYS */;
INSERT INTO `Issues` VALUES (51,'Unable to add new member to existing project','CLOSED','MEDIUM','MODERATE','When you go into a project edit page, you can only remove users from the project not add them.','davidblair','srivathsar','2016-07-09 10:16:02','2016-08-01 01:29:55',0,'jaunl'),(52,'Story editing does not preserve existing settings','CLOSED','HIGH','LOW','When editing a story, the dropdown menus should default to the existing settings, not the first item in the list.','davidblair','davidblair','2016-07-09 21:08:09','2016-07-18 19:14:07',0,'davidblair'),(53,'Story editing does not allow unassigned user','CLOSED','LOW','LOW','Just add the item, with a separator (disabled) to the dropdown list.','davidblair','davidblair','2016-07-09 21:09:04','2016-07-18 19:13:59',0,'davidblair'),(54,'Queued - Story - Edit - Drop down text incomplete spelling \"Statu\"','CLOSED','LOW','LOW','Statu should be updated to \"Status\"','sangDev','sangDev','2016-07-10 18:55:17','2016-07-11 11:46:17',0,'sangDev'),(55,'Queued: when existing story view detail page is viewed, it does not show the current assigned date.','CLOSED','LOW','LOW','','sangDev','sangDev','2016-07-11 11:44:27','2016-07-20 11:01:24',0,'sangDev'),(56,'Queued: when adding a new story from Story board, the create story view does not reflect the category that was clicked from','CLOSED','LOW','LOW','','sangDev','sangDev','2016-07-11 11:46:31','2016-07-20 10:59:19',0,'sangDev'),(57,'ChatNow Online Users Count','CLOSED','MEDIUM','MODERATE','Reached -1 on the dashboard.','chriscarducci','chriscarducci','2016-07-11 12:47:50','2016-07-17 18:50:24',0,'chriscarducci'),(58,'Screenshot Images','CLOSED','LOW','LOW','Screenshot images get cropped when clicking on the full size image (missing about 20% of the right side when I did it).','chriscarducci','davidblair','2016-07-11 17:32:40','2016-07-18 19:02:15',0,'davidblair'),(59,'Bugs Assignee Missing','REJECTED','LOW','LOW','Assigned To field shows 4 dashes instead of the asignee','chriscarducci','jak464','2016-07-11 17:48:42','2016-08-01 18:49:55',1,'davidblair'),(60,'ChatNow: Empty chat messages can be sent','CLOSED','MEDIUM','LOW','Chat messages without any text can be sent.','srivathsar','chriscarducci','2016-07-11 18:14:42','2016-07-16 09:32:02',0,'chriscarducci'),(61,'-2 users online','REJECTED','LOW','LOW','The online chat system is showing a negative number of users online when no one is online. ','davidblair','chriscarducci','2016-07-11 18:52:05','2016-07-13 08:32:29',0,'chriscarducci'),(62,'Bugs: dashboard open bugs item & status  does not reflect the current state','CLOSED','LOW','MODERATE','','sangDev','davidblair','2016-07-11 19:31:08','2016-07-18 19:14:29',0,'davidblair'),(63,'Queued Email Notification not sending for tomorrow','CLOSED','MEDIUM','LOW','Email sent intermittently. Sent today when it should have sent yesterday','jak464','jak464','2016-07-12 17:50:38','2016-07-21 18:44:07',0,'jak464'),(64,'Bugs: Can\'t see assignee when I open a bug','CLOSED','LOW','LOW','Assigned To has 4 dashes instead of the assignee when a bug is opened.','chriscarducci','davidblair','2016-07-13 08:29:41','2016-07-18 19:04:26',0,'davidblair'),(65,'Queued: Cancel moving an story','REJECTED','MEDIUM','LOW','If you unexpectedly click on a story, there is no way to undo the action.\r\n\r\nPossible solutions:\r\n\r\n- Canceling the movement of the story card upon Esc key.\r\n- Dynamic Undo button pops up at the top center. If the card is dragged to that position, it cancels the action. (Similar to deleting a shortcut from home screen on an Android phone)\r\n- Undo button','srivathsar','srivathsar','2016-07-18 17:53:21','2016-07-18 21:30:00',0,''),(66,'ChatNow: Ability to Search channel names [Enhancement]','CLOSED','LOW','LOW','It would be nice to have the Search feature support channel names.\r\nAs the number of channels increase (won\'t happen in our case), searching a channel would be good option.','srivathsar','chriscarducci','2016-07-18 18:05:25','2016-07-26 19:49:53',1,''),(67,'Bugs: Is there a way to view archived issues? [Question]','CLOSED','LOW','LOW','Do you think this is necessary? - What if an issue is accidentally archived?\r\n\r\nPS: Might not be a bug. Putting it here so that we can discuss about it, if need be.\r\n\r\nEdit:\r\nReopening for testing ...\r\nReverting to Close.','srivathsar','srivathsar','2016-07-18 18:09:45','2016-07-18 20:30:33',0,'davidblair'),(68,'Queued: Edit Project: Can\'t add new members to existing project','CLOSED','MEDIUM','CRITICAL','Edit project page is old style.','srivathsar','davidblair','2016-07-18 20:21:36','2016-07-18 20:57:33',0,''),(69,'Test archiving issue','CLOSED','MEDIUM','MODERATE','Test','srivathsar','chriscarducci','2016-07-18 20:24:03','2016-07-26 19:49:40',1,''),(70,'Bugs: Closed issues aren\'t visible','CLOSED','MEDIUM','CRITICAL','Issues with \"Closed\" status aren\'t visible.\r\n\r\nExample:  [This issue](http://uproject.thirdelement.com/bugs/issue/67) is missing in the list.\r\nChange the issue to \"Assigned\" status and it reappears!\r\n\r\nTesting Note:\r\nNeed to test issues with all possible status values.','srivathsar','jak464','2016-07-18 20:33:16','2016-07-21 18:43:50',0,'davidblair'),(71,'Open Question: Do we need to open links in new tab?','REJECTED','LOW','LOW','Think about links provided in description in any of the modules.\r\n\r\nExample: Do we want this Google [link](https://www.google.com) to open is the same tab?','srivathsar','sangDev','2016-07-18 20:37:21','2016-07-21 09:32:29',0,''),(72,'Queued: Duplicate names of Components [Question]','REJECTED','LOW','MODERATE','Currently, we can create duplicate named:\r\n- Projects\r\n- Stories\r\n\r\nAre these okay? I think we should allow it.\r\n\r\n### How other modules work:\r\n\r\n\r\n**ChatNow**: doesn\'t allow creation of channels with the same names.\r\n\r\n**Bugs**: allows duplicates.\r\n- But might make sense here as 2 issues could have the same description.\r\n- Issue could be same! In that case should the existing issue be reopened?\r\n- Overall I think it is more than acceptable here. (my opinion, feel free to differ)','srivathsar','sangDev','2016-07-18 20:51:07','2016-07-21 09:32:45',0,''),(73,'Bugs: Commenting/Screenshot on bug should update last modified','CLOSED','MEDIUM','MODERATE','Commenting/adding a screenshot  to a issue does not update the last modified field in the database.\r\n\r\nSeems like a comment counts as a modification. ','davidblair','jak464','2016-07-18 20:54:23','2016-07-28 17:44:21',0,'jak464'),(74,'Queued: drag-and-drop on mobile does not work','CLOSED','LOW','LOW','','sangDev','sangDev','2016-07-18 20:57:49','2016-07-26 17:03:42',0,'sangDev'),(75,'Queued: Create Project redirects to login page','CLOSED','MEDIUM','MODERATE','Create a new project.\r\n\r\nUpdate: Select 0 or only 1 member Upon save, the page is redirected to the login page. \r\n\r\nPS: The project creation is successful.\r\nUpdate: David pointed out that this happens when less than 2 members are selected when the project is created!','srivathsar','srivathsar','2016-07-18 21:02:07','2016-08-01 01:30:56',0,'sangDev'),(76,'Queued: when adding a new story from Story board, the create story view does not reflect the category that was clicked from','CLOSED','MEDIUM','MODERATE','For example:\r\n- a user selects \"add story\" from \"Current\' list.\r\n- On Create a Story View, the drop down for \"Status\" is \"Backlog\" by default. This should be change to reflect what user has selected.\r\n\r\nNot sure if this is already fixed. Batch moving Bugs from github.\r\n\r\n[Originally created by @sangDev]','srivathsar','sangDev','2016-07-18 21:04:32','2016-07-20 10:58:45',0,'sangDev'),(77,'Queued: Create Story page doesn\'t have a Cancel button','CLOSED','LOW','MODERATE','Cancel button navigates to previous page.','srivathsar','srivathsar','2016-07-18 21:07:58','2016-08-01 01:28:18',0,'srivathsar'),(78,'Queued: user can create an empty story. Story without title. ','CLOSED','LOW','LOW','Should this be allowed?','sangDev','sangDev','2016-07-25 17:05:33','2016-07-27 11:01:28',0,'sangDev'),(79,'Queued: Create Project with 0 members fails','CLOSED','MEDIUM','MODERATE','Create a new project with no members.\r\n\r\nProject creation fails because of \"project_members\" having undefined value.','srivathsar','srivathsar','2016-07-29 16:31:25','2016-08-01 01:29:21',0,'sangDev'),(80,'Queued: Edit Project: Save button redirects to 404','CLOSED','MEDIUM','MODERATE','Save button redirects to 404 page not found','srivathsar','srivathsar','2016-07-29 16:37:36','2016-08-01 01:30:20',0,'sangDev'),(81,'','REOPENED','URGENT','LOW','Test: Issue with blank name','srivathsar','srivathsar','2016-08-01 01:21:12','2016-08-01 01:31:57',1,''),(82,'Test','DEFERRED','LOW','LOW','The bugs we are marking Rejected should have been marked Deferred','srivathsar','srivathsar','2016-08-01 01:32:32','2016-08-01 15:27:07',1,''),(83,'Queued: Can’t Archive a Story','CLOSED','MEDIUM','MODERATE','Queued > Edit Story > Archive Story doesn’t work','srivathsar','srivathsar','2016-08-01 14:48:31','2016-08-01 17:33:43',0,'srivathsar'),(84,'Queued: Unarchiving Project redirects to 404','CLOSED','MEDIUM','MODERATE','Queued > Archived Projects > Restore Project >> 404\r\nProject is un-archived successfully though\r\n','srivathsar','srivathsar','2016-08-01 14:49:35','2016-08-01 17:33:31',0,'srivathsar'),(85,'Queued: Story name can be updated to blank (no characters)','CLOSED','MEDIUM','MODERATE','','srivathsar','srivathsar','2016-08-01 14:50:11','2016-08-01 17:32:25',0,'srivathsar'),(86,'Queued: Story with SPACE as name','REJECTED','MEDIUM','MODERATE','Story can be created with a white space char.','srivathsar','srivathsar','2016-08-01 14:51:09','2016-08-01 14:51:35',0,'sangDev'),(87,' Queued: Project with SPACE as name and desc','REJECTED','LOW','MODERATE','','srivathsar','srivathsar','2016-08-01 14:51:57','2016-08-01 14:52:05',0,''),(88,'Queued: Project Owner field is cleared upon edit','CLOSED','MEDIUM','MODERATE',' Any update to the project on the edit page (Project name, description, member changes) leads to blank owner field!\r\n','srivathsar','srivathsar','2016-08-01 14:52:36','2016-08-01 17:32:07',0,'sangDev'),(89,'Queued: Edit Project > Last Member is automatically deleted','CLOSED','MEDIUM','MODERATE','Edit a project with 2 or more members.\r\nRemove (uncheck) all members except one\r\nSave. GO back to find 0 members!','srivathsar','srivathsar','2016-08-01 14:53:14','2016-08-01 17:33:23',0,'sangDev'),(90,'Queued: Dashboard – Personalized Project List','OPEN','MEDIUM','MODERATE','Dashboard shows only the projects you are involved (a member of).\r\nThis list is populated based on whether or not you were added as a member during project creation.\r\n- If you are added as a member later on (via edit project), the project doesn’t list on the dash.\r\n- If you are removed as a member, the project doesn’t disappear from the dash.\r\n\r\n\r\nComment: by SJ >> OPEN. \r\nThis is a some what minor (Moderate) issue that requires major effort - queued/saveProjectAfterEdit.js\r\nThis script needs to update the members table in DB.\r\nRequires to delete members from DB table if removed from list.  \r\nRequires to add members from DB table if added to list. \r\nMust have memory - be able to compare new and old list. \r\n\r\n','srivathsar','jak464','2016-08-01 14:53:56','2016-08-01 17:59:26',0,''),(91,'Queued: Projects Alignment issues on Queued Page','REJECTED','LOW','MODERATE','See attachments','srivathsar','srivathsar','2016-08-01 14:55:09','2016-08-01 14:55:47',0,''),(92,'Bugs: Can’t unarchive issues','REJECTED','MEDIUM','MODERATE','SJ: Not a big issue. I prefer to not fix this now since its too last min.  \r\n','srivathsar','srivathsar','2016-08-01 14:56:20','2016-08-01 14:56:56',0,''),(93,'Bugs: Archived issues still contribute the count of Issues (as displayed on Dashboard) ','CLOSED','MEDIUM','MODERATE','SJ: This has been fixed to only include Non-archived issues as count for open issues. \r\n','srivathsar','srivathsar','2016-08-01 14:57:19','2016-08-01 17:36:01',0,'sangDev'),(94,'Bugs: An Issue can be created with blank (no characters) name','CLOSED','MEDIUM','MODERATE','To test','srivathsar','srivathsar','2016-08-01 14:57:52','2016-08-01 17:35:53',0,'sangDev'),(95,'Bugs: An Issue can be created with SPACE (white character) as name','REJECTED','LOW','LOW','','srivathsar','srivathsar','2016-08-01 15:25:36','2016-08-01 15:25:46',0,''),(96,'test','NEW','MEDIUM','MODERATE','','srivathsar','davidblair','2016-08-01 17:34:34','2016-08-01 17:36:05',1,''),(97,'Big Issue','CLOSED','MEDIUM','MAJOR','this issue is very big\r\n\r\n1. it is big\r\n2. it is reproducible ','jak464','jak464','2016-08-01 18:16:46','2016-08-01 18:18:36',0,'jak464'),(98,'New bug','NEW','MEDIUM','MODERATE','Test','rczik','rczik','2016-08-01 21:11:07','2016-08-01 21:11:07',0,'rczik'),(99,'Bug','NEW','HIGH','MAJOR','**Hello this is a bug**\r\n1. hello\r\n','chriscarducci','chriscarducci','2016-08-01 21:11:09','2016-08-01 21:12:20',0,'jak464');
/*!40000 ALTER TABLE `Issues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Projects`
--

DROP TABLE IF EXISTS `Projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Projects` (
  `project_name` varchar(30) NOT NULL,
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(160) NOT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Projects`
--

LOCK TABLES `Projects` WRITE;
/*!40000 ALTER TABLE `Projects` DISABLE KEYS */;
/*!40000 ALTER TABLE `Projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedProjects`
--

DROP TABLE IF EXISTS `QueuedProjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedProjects` (
  `project_name` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `projectId` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(160) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `owner` varchar(45) CHARACTER SET utf8mb4 DEFAULT NULL,
  `members` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `archived` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`projectId`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedProjects`
--

LOCK TABLES `QueuedProjects` WRITE;
/*!40000 ALTER TABLE `QueuedProjects` DISABLE KEYS */;
INSERT INTO `QueuedProjects` VALUES ('Queued',1,'Project Management Tool for uProject','sangDev','[\"chriscarducci\",\"jak464\",\"jaunl\",\"sangDev\",\"srivathsar\",\"davidblair\"]',1),('Bugs',2,'Issue tracking project','davidblair','[\"chriscarducci\",\"jak464\",\"jaunl\",\"sangDev\",\"srivathsar\",\"rczik\",\"davidblair\",\"cs673smr16\"]',1),('ChatNow',3,'Basic chat system','chriscarducci','[\"chriscarducci\",\"jak464\",\"jaunl\",\"sangDev\",\"srivathsar\",\"rczik\",\"davidblair\",\"cs673smr16\"]',1),('Internal Testing',4,'Project to perform some QA',NULL,'[\"rczik\"]',0),('Test Project',5,'Test',NULL,'[\"srivathsar\",\"sangDev\"]',0),('Test Project2',6,'Project owner field test',NULL,'\"srivathsar\"',0),('Alignment Testing',7,'Test\r\nIf owner removed as member,\r\n',NULL,'[\"srivathsar\",\"chriscarducci\"]',0),('TP4',8,'test',NULL,'[\"chriscarducci\",\"jak464\",\"srivathsar\"]',0),('TP5',9,'test',NULL,'[\"jaunl\",\"sangDev\",\"rczik\"]',0),('TP6',10,'Any update to the list of members, clears the Proj owner field.',NULL,'[\"jaunl\",\"jak464\"]',0),('Test ',11,'Long description Long description Long description Long description Long description\r\nLong description\r\nLong description\r\nLong description\r\nLong description',NULL,NULL,0),('TP8-',12,'test',NULL,'[\"chriscarducci\",\"jak464\",\"srivathsar\"]',0),('TP9',13,'Test',NULL,'\"srivathsar\"',0),('Long Description Project ',14,' If owner removed then what happens\r\n\r\n- Owner field turns blank',NULL,NULL,0),('Blank project can be created ',15,'blank project name \\n \r\narchived project can be accessed through URL',NULL,NULL,0),('TP-10',16,'Long description with bullet points\r\n- Test',NULL,'[\"chriscarducci\",\"jak464\",\"sangDev\"]',0),('TP11',17,'0 members proj create','srivathsar','\"\"',0),('Test ',18,' Test',NULL,NULL,0),('Test ',19,'White char is accepted here',NULL,'[\"srivathsar\",\"jak464\",\"jaunl\"]',0),('Member Test',20,'member disappearing test',NULL,'\"srivathsar\"',0),('MT 2',21,'1',NULL,'\"cs673smr16\"',0),('MT3',22,'2',NULL,'\"chriscarducci\"',0),(' * Test Project for QA *',23,'Testing ... 1... 2... 3...',NULL,'[\"chriscarducci\",\"jak464\",\"jaunl\",\"sangDev\",\"srivathsar\",\"rczik\"]',0),('Test',24,'Members edit','srivathsar','[\"chriscarducci\"]',0),('Project for Internal QA',25,'Test','srivathsar','[\"chriscarducci\",\"srivathsar\",\"sangDev\"]',1),('Test',26,'0 members','srivathsar','\"\"',0),('Demo',27,'Test','chriscarducci','[\"jak464\",\"jaunl\",\"srivathsar\",\"chriscarducci\"]',1);
/*!40000 ALTER TABLE `QueuedProjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedStory`
--

DROP TABLE IF EXISTS `QueuedStory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedStory` (
  `storyId` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `title` varchar(2000) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `description` varchar(2000) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `story_status` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `type` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `priority` varchar(30) NOT NULL,
  `priorityId` int(11) NOT NULL,
  `assignee` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `due_date` date NOT NULL,
  `iterationId` int(11) NOT NULL,
  `archived` tinyint(1) NOT NULL,
  PRIMARY KEY (`storyId`)
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedStory`
--

LOCK TABLES `QueuedStory` WRITE;
/*!40000 ALTER TABLE `QueuedStory` DISABLE KEYS */;
INSERT INTO `QueuedStory` VALUES (1,2,'As a user, I want to be able to view an issue detail page in','','Backlog','Feature','Low',1,'','0000-00-00',0,1),(2,2,'As a user, I want to be presented with a list of all \'open\' and \'closed\' issues, displaying the issue summary, status, priority and number of comments so that I can navigate to an issue detail page.','','Release','Feature','Low',7,'davidblair','0000-00-00',0,0),(3,2,'As a user, I want to be able to delete a screenshot off of an issue so that if I added it accidentally, I can remove it','','Backlog','Bug','Low',1,'jak464','2016-08-02',0,0),(4,2,'As a user, I want to be able to view the original file name when I save an image so that it is readable','','Release','Feature','Low',4,'jak464','2016-07-22',0,0),(5,2,'As a user, I want to be able to add a screenshot to an issue that so that other users are able to understand the context surrounding the issue','','Release','Feature','Medium',8,'jak464','0000-00-00',0,0),(6,2,'As a user, I want an ability to view closed items in a list view','','Release','Bug','Low',3,'','0000-00-00',0,0),(7,2,'As a user, I want to be able to archive an issue so that I can remove issues created erroneously.','','Release','Feature','Low',2,'jak464','0000-00-00',0,0),(8,2,'As a user, I want to be able to assign an issue to a user so that someone is on point to resolve the issue','','Release','Feature','Low',5,'jak464','0000-00-00',0,0),(9,2,'As a user, I want to be able to comment on an issue so that I can communicate with either the user who reported or is assigned to the issue','','Release','Feature','High',6,'jak464','0000-00-00',0,0),(10,2,'As a user, I want to be able to view archived items in a list view.','','Release','Feature','Low',1,'','0000-00-00',0,0),(11,2,'As a user, I want to be able to search and sort by issues on the log view page so that I am able to find an issue quickly','','Release','Feature','Medium',9,'davidblair','0000-00-00',0,0),(12,2,'As a user, I want to be able to update an issue so that I can track progress and add more detail','','Release','Bug','High',10,'jak464','0000-00-00',0,0),(13,2,'As a user, I want to be able to view an issue detail page in read only mode so I do not accidentally modify the issue','','Release','Feature','Medium',11,'davidblair','0000-00-00',0,0),(14,2,'As a user, I want to be able to add an issue summary so I can quickly view what an issue is regarding.','','Release','Feature','Low',12,'jak464','0000-00-00',0,0),(15,2,'As a user, I want to be able to save an issue so that I can return to the issue and view the details.','','Release','Bug','Low',13,'jak464','0000-00-00',0,0),(16,2,'As a user, I want to be able to set the status of an issue so that I can effectively track issues.','','Release','Feature','Low',14,'jak464','0000-00-00',0,0),(17,2,'As a user, I do not want to be able to edit the system fields so that the data can not be manipulated by anyone','','Release','Feature','Low',15,'jak464','0000-00-00',0,0),(18,2,'As a user, I want to be able to identify issues with a unique identifier so I can easily reference an issue.','','Release','Feature','Low',16,'','0000-00-00',0,0),(19,2,'As a user, I want to be able to view who created an issue so that I can effectively track who reported the issue.','','Release','Feature','Low',17,'jak464','0000-00-00',0,0),(20,2,'As a user, I want the issue status to be defaulted to new upon creation','','Release','Feature','Low',18,'','0000-00-00',0,0),(21,2,'As a user, I want to be restricted from creating a issue with a null summary so that I don\'t create bad data.','','Release','Feature','Low',19,'','0000-00-00',0,0),(22,2,'As a user, I want to be able to set the severity of an issue so that I can effectively track issues','','Release','Feature','Low',20,'','0000-00-00',0,0),(23,2,'As a user, I want to be able to set the priority of an issue so that I can effectively track issues.','','Release','Feature','Low',21,'','0000-00-00',0,0),(24,2,'As a user, I want to be able to add a description to an issue so that I can add useful details describing an issue.','','Release','Feature','Low',22,'jak464','0000-00-00',0,0),(25,2,'As a user, I want to be able to view when an issue was created so that I can compute how long an issue has been open','','Release','Feature','Low',23,'jak464','0000-00-00',0,0),(26,2,'As a user, I want to be able to view when an issue was last modified so that I can effectively track when an issue was updated.','','Release','Feature','Low',24,'jak464','0000-00-00',0,0),(27,2,'As a user, I want to be able to view who last modified an issue so I can effectively track who update the issue','','Release','Feature','Low',25,'jak464','0000-00-00',0,0),(28,2,'As a user, I want to be able to view who created an issue so I can effectively track who reported the issue','','Release','Feature','Low',26,'jak464','0000-00-00',0,0),(29,2,'As a user, I want to be able to create an issue so that I can manage and track an issue','','Release','Feature','Low',27,'jak464','0000-00-00',0,0),(30,3,'As a user, I want the ability to edit my message.','','Backlog','Feature','Low',1,'chriscarducci','0000-00-00',0,0),(31,3,'Push notifications of direct messages (Safari)','','Backlog','Feature','Low',2,'davidblair','0000-00-00',0,0),(32,3,'Add logic to look for @user and @everyone for purposes of email notifications','','Backlog','Feature','High',3,'chriscarducci','0000-00-00',0,0),(33,3,'A user will be able to share files','','Backlog','Feature','Low',4,'chriscarducci','0000-00-00',0,0),(34,3,'A user will be able to audio/video chat','','Backlog','Feature','Low',5,'chriscarducci','0000-00-00',0,0),(35,3,'Add unread message count to header on page refresh','','Backlog','Feature','High',7,'chriscarducci','0000-00-00',0,0),(36,3,'Enable infinite scrolling or segmented chat history.','','Release','Feature','Medium',1,'chriscarducci','0000-00-00',0,0),(37,3,'Begin use Mocha/Selenium','','Done','Feature','Low',1,'chriscarducci','2016-07-24',0,0),(38,3,'Support for UTF-8','','Backlog','Bug','Low',6,'chriscarducci','0000-00-00',0,0),(39,3,'As a user, I want to be able to search archived chat history for keywords','','Release','Feature','Low',3,'chriscarducci','0000-00-00',0,0),(40,3,'As a user, I want the ability to archive a channel','','Release','Feature','Low',4,'chriscarducci','0000-00-00',0,0),(41,3,'On the dashboard, display the most recent message from the 3 most recent channels.','','Release','Feature','Medium',5,'chriscarducci','0000-00-00',0,0),(42,3,'As a user, I want to be able to send private messages','','Release','Feature','Low',6,'chriscarducci','0000-00-00',0,0),(43,3,'As a user, I want to use GitHub authentication in order to gain access to the application','','Release','Feature','Medium',7,'chriscarducci','0000-00-00',0,0),(44,3,'Create a database to store users, channels, and messages.','','Release','Feature','Medium',8,'chriscarducci','0000-00-00',0,0),(45,3,'As a user, I want to be able create a channel and send a message on it','','Release','Feature','Medium',9,'chriscarducci','0000-00-00',0,0),(46,3,'As a user, I want to be able to view old chat history','','Release','Feature','Medium',10,'chriscarducci','0000-00-00',0,0),(47,3,'As a user, I want to be able to send email to user if s/he receives a private message while offline','','Release','Feature','Medium',11,'chriscarducci','0000-00-00',0,0),(48,3,'As a user, I want to be able to add a setting for enabling/disabling email notifications','','Release','Feature','Medium',12,'chriscarducci','0000-00-00',0,0),(49,3,'As a user, I want to be able to track who is online','','Release','Feature','Medium',13,'chriscarducci','0000-00-00',0,0),(50,3,'As a user, I want to view the messages grouped under a date headline, with the individual messages displaying military time with timezone','','Release','Feature','Medium',14,'chriscarducci','0000-00-00',0,0),(51,3,'As a user, I want the front end to be mobile friendly and easy to use','','Release','Feature','Medium',15,'chriscarducci','0000-00-00',0,0),(52,3,'Create mockups in mybalsamiq','','Release','Feature','Medium',16,'chriscarducci','0000-00-00',0,0),(53,1,'A user shall be able to view Project History','','Backlog','Feature','Low',2,'','0000-00-00',0,0),(54,1,'A user shall be able to view progress charts and analytics of a project or projects from Dashboard or Analysis view','','Backlog','Feature','Low',1,'','0000-00-00',0,0),(55,1,'Data Validation for Creating project page','','Backlog','Feature','Low',3,'','0000-00-00',0,0),(56,1,'A user shall be able to search a story from all stories within a project.','Update on July 8, 2016.\r\n - we will not be implementing this feature.','Backlog','Bug','Low',4,'chriscarducci','0000-00-00',0,0),(57,1,'Create Iterations: A user shall be able to define a start and end date of an iteration, where user shall give a timeframe in weeks which contain stories to be completed by team.','Update on July 8, 2016\r\n- We have decided not to implement \"Iteration\" feature into our project management tool.','Backlog','Bug','Low',5,'chriscarducci','0000-00-00',0,0),(58,1,'Start testing with Mocha/Selenium','','Release','Feature','High',1,'srivathsar','2016-07-31',0,0),(59,1,'Documentation  - Requirement Analysis Document and Software Design Document','','Release','Feature','Medium',2,'sangDev','0000-00-00',0,0),(60,1,'A user shall be able to view projects and stories they own on the Dashboard - require to pass UI Data for Dashboard','','Release','Feature','Medium',6,'sangDev','0000-00-00',0,0),(61,1,'Shall be able to manage users (create/register, update, delete)','','Release','Feature','Medium',4,'sangDev','2016-08-02',0,0),(62,1,'Add Back/cancel Button to story view','','Release','Bug','Medium',3,'davidblair','2016-08-02',0,0),(63,1,'A user shall be able to enable or disable the email notification from settings view such that a user can turn \"On\" notification to enable ability to send out email to user email.','Acceptance Criteria\r\n\r\nUser gets a list of requirements that are due tomorrow\r\nEmail displays - Id, User Story, and Status. \r\nUser does not get requirements which have already been set to \'Done\' or \'Release\'','Release','Bug','Medium',10,'jak464','2016-07-12',0,0),(64,1,'Create and manage multiple projects: ability to create, edit and delete multiple projects','','Release','Feature','Medium',11,'jaunl','0000-00-00',0,0),(65,1,'A user shall be able to update a project','','Release','Feature','Medium',12,'sangDev','0000-00-00',0,0),(66,1,'A user shall be able to archive a project','','Release','Feature','Medium',13,'sangDev','0000-00-00',0,0),(67,1,'A user shall be able to archive a story such that it is removed from current story board but remains in the database.','','Release','Feature','Low',14,'sangDev','0000-00-00',0,0),(68,1,'A user shall be able to view stories they own. (Another view page)','','Release','Feature','High',15,'davidblair','0000-00-00',0,0),(69,1,'A user shall be able to Assign type of story (feature, bug or release)','','Release','Feature','Medium',16,'sangDev','0000-00-00',0,0),(70,1,'A user shall be able to delete a Story','','Release','Feature','Medium',17,'jaunl','0000-00-00',0,0),(71,1,'A user shall be able to view stories in a list with highest priority at the top. - default view if not specified.','','Release','Feature','Medium',18,'','0000-00-00',0,0),(72,1,'A user shall be able to prioritize tasks/stories within a view list','','Release','Feature','High',19,'sangDev','0000-00-00',0,0),(73,1,'A user shall be able to set a deadline for the story to be development.','','Release','Feature','Medium',8,'sangDev','0000-00-00',0,0),(74,1,'A user shall be able to drag-and-drop a story from one list to another. For example, from Backlog list to Current list.','','Release','Feature','High',20,'sangDev','0000-00-00',0,0),(75,1,'A user shall receive an email notification for a story they own which has a due date assigned to it such that the user receives an email a day before the Story task is due.','','Release','Bug','Medium',9,'jak464','2016-07-11',0,0),(76,1,'A user shall be able to Edit a project','','Release','Feature','Medium',35,'davidblair','0000-00-00',0,0),(77,1,'A user shall be able to add team members (users) to a project','','Done','Feature','High',1,'jaunl','0000-00-00',0,0),(78,1,'DB Design - Re-design DB to be able to add users to a project','','Release','Feature','High',5,'jaunl','0000-00-00',0,0),(79,1,'Update database so that it reflects design.','','Release','Feature','Urgent',21,'','0000-00-00',0,0),(80,1,'A user shall be able to Add members to a project','','Release','Feature','Medium',36,'','0000-00-00',0,0),(81,1,'A user shall be able to save a project','','Release','Feature','Medium',22,'','0000-00-00',0,0),(82,1,'A user shall be able to delete a project','','Release','Feature','Medium',23,'','0000-00-00',0,0),(83,1,'A user shall be able to view Backlog of Stories','','Release','Feature','Medium',24,'','0000-00-00',0,0),(84,1,'A user shall be able to view Backlog, Current, Done and Release Stories list','','Release','Feature','Low',25,'','0000-00-00',0,0),(85,1,'A user shall be able to assign a Story to a user for development task','','Release','Feature','Medium',26,'','0000-00-00',0,0),(86,1,'Current project members should be visible on the project details page.','','Release','Feature','Medium',27,'','0000-00-00',0,0),(87,1,'UI interface for Backlog, Current, and Completed list of Stories','','Release','Feature','Medium',28,'','0000-00-00',0,0),(88,1,'DB Design for Queued tool','','Release','Feature','Medium',29,'','0000-00-00',0,0),(89,1,'A user shall be able to create a new project','','Release','Feature','Medium',30,'','0000-00-00',0,0),(90,1,'A user shall be able to create a new Story','','Release','Feature','Medium',31,'','0000-00-00',0,0),(91,1,'A user shall be able to update and save a story','','Release','Feature','Medium',32,'','0000-00-00',0,0),(92,1,'Create a database to store projects','','Release','Feature','Medium',33,'','0000-00-00',0,0),(93,1,'Create a database to store stories','','Release','Feature','Medium',34,'','0000-00-00',0,0),(94,4,'Story1','Story 1','Done','Bug','Low',1,'','0000-00-00',0,0),(95,1,'A user shall be able to to scroll a Story list that overflows browser size such that user does not have to lose view of menu bar and category titles. ','','Release','Bug','Low',7,'sangDev','0000-00-00',0,0),(96,3,'New Message Alert','Alert a user if s/he received a direct message in ChatNow','Release','Feature','Low',2,'chriscarducci','2016-07-22',0,0),(97,4,'Story 2','','Backlog','Bug','Low',2,'','0000-00-00',0,0),(98,4,'Story 3','','Backlog','Bug','Low',1,'','0000-00-00',0,0),(99,4,'Story 1','','Backlog','Bug','Low',3,'','0000-00-00',0,0),(100,4,'Story 5','','Backlog','Bug','Low',4,'','0000-00-00',0,0),(101,4,'Story 5','','Backlog','Bug','Low',5,'','0000-00-00',0,0),(102,4,'Story 1','','Release','Bug','Urgent',6,'','0000-00-00',0,0),(103,4,'','','Current','Feature','Low',1,'','2016-07-25',0,1),(104,4,'not an empty story','','Current','Escalation','High',2,'srivathsar','2016-07-27',0,0),(105,4,'','','Release','Feature','Low',1,'','2016-05-01',0,0),(106,4,' ','blank story','Backlog','Feature','Low',6,'','2016-06-01',0,0),(107,4,'backlog story','created from release','Backlog','Feature','Low',7,'srivathsar','2016-08-01',0,0),(108,7,'s1','','Current','Feature','Low',1,'srivathsar','2016-07-01',0,0),(109,24,'Story1','','Backlog','Feature','Low',1,'','2016-08-01',0,1),(110,24,'S1','','Backlog','Feature','Low',2,'','2016-08-01',0,0),(111,24,' ','','Current','Feature','Low',1,'','2016-08-01',0,1),(112,1,'The Never Ending Storey','La la','Current','Feature','Urgent',1,'sangDev','2016-06-01',0,0),(113,1,'Test','test','Current','Feature','Low',2,'chriscarducci','2016-08-01',0,0),(114,1,'test','','Current','Feature','Low',3,'chriscarducci','2016-08-01',0,1),(115,27,'Story1','','Current','Escalation','Medium',1,'srivathsar','2016-08-02',0,0);
/*!40000 ALTER TABLE `QueuedStory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedStoryPriority`
--

DROP TABLE IF EXISTS `QueuedStoryPriority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedStoryPriority` (
  `StoryPriority` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  PRIMARY KEY (`StoryPriority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedStoryPriority`
--

LOCK TABLES `QueuedStoryPriority` WRITE;
/*!40000 ALTER TABLE `QueuedStoryPriority` DISABLE KEYS */;
INSERT INTO `QueuedStoryPriority` VALUES ('High'),('Low'),('Medium'),('Urgent');
/*!40000 ALTER TABLE `QueuedStoryPriority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedStoryStatus`
--

DROP TABLE IF EXISTS `QueuedStoryStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedStoryStatus` (
  `StoryStatus` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  PRIMARY KEY (`StoryStatus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedStoryStatus`
--

LOCK TABLES `QueuedStoryStatus` WRITE;
/*!40000 ALTER TABLE `QueuedStoryStatus` DISABLE KEYS */;
INSERT INTO `QueuedStoryStatus` VALUES ('Backlog'),('Current'),('Done'),('Release');
/*!40000 ALTER TABLE `QueuedStoryStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QueuedStoryType`
--

DROP TABLE IF EXISTS `QueuedStoryType`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QueuedStoryType` (
  `StoryType` varchar(30) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  PRIMARY KEY (`StoryType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QueuedStoryType`
--

LOCK TABLES `QueuedStoryType` WRITE;
/*!40000 ALTER TABLE `QueuedStoryType` DISABLE KEYS */;
/*!40000 ALTER TABLE `QueuedStoryType` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Story`
--

DROP TABLE IF EXISTS `Story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Story` (
  `storyId` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) NOT NULL,
  `description` varchar(200) NOT NULL,
  `title` varchar(60) NOT NULL,
  `story_status` varchar(15) NOT NULL,
  `assignee` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  `priority` int(11) NOT NULL,
  PRIMARY KEY (`storyId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Story`
--

LOCK TABLES `Story` WRITE;
/*!40000 ALTER TABLE `Story` DISABLE KEYS */;
/*!40000 ALTER TABLE `Story` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberId` int(11) NOT NULL AUTO_INCREMENT,
  `idusers` int(11) DEFAULT NULL,
  `projectId` int(11) DEFAULT NULL,
  `username` varchar(95) DEFAULT NULL,
  `role` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,NULL,1,'jak464','developer'),(2,NULL,1,'jaunl','developer'),(3,NULL,1,'sangDev','developer'),(4,NULL,1,'srivathsar','developer'),(5,NULL,1,'rczik','developer'),(6,NULL,1,'cs673smr16','developer'),(7,NULL,2,'chriscarducci','developer'),(8,NULL,2,'jak464','developer'),(9,NULL,2,'jaunl','developer'),(10,NULL,2,'sangDev','developer'),(11,NULL,2,'srivathsar','developer'),(12,NULL,2,'rczik','developer'),(13,NULL,2,'davidblair','developer'),(14,NULL,2,'cs673smr16','developer'),(15,NULL,3,'chriscarducci','developer'),(16,NULL,3,'jak464','developer'),(17,NULL,3,'jaunl','developer'),(18,NULL,3,'sangDev','developer'),(19,NULL,3,'srivathsar','developer'),(20,NULL,3,'rczik','developer'),(21,NULL,3,'davidblair','developer'),(22,NULL,3,'cs673smr16','developer'),(23,NULL,4,'s','developer'),(24,NULL,5,'chriscarducci','developer'),(25,NULL,5,'jak464','developer'),(26,NULL,5,'jaunl','developer'),(27,NULL,5,'sangDev','developer'),(28,NULL,5,'srivathsar','developer'),(29,NULL,5,'rczik','developer'),(30,NULL,5,'davidblair','developer'),(31,NULL,5,'cs673smr16','developer'),(32,NULL,6,'chriscarducci','developer'),(33,NULL,6,'srivathsar','developer'),(34,NULL,7,'chriscarducci','developer'),(35,NULL,7,'jak464','developer'),(36,NULL,7,'jaunl','developer'),(37,NULL,7,'sangDev','developer'),(38,NULL,7,'srivathsar','developer'),(39,NULL,7,'rczik','developer'),(40,NULL,7,'davidblair','developer'),(41,NULL,7,'cs673smr16','developer'),(42,NULL,8,'chriscarducci','developer'),(43,NULL,8,'jak464','developer'),(44,NULL,9,'jaunl','developer'),(45,NULL,9,'sangDev','developer'),(46,NULL,10,'jaunl','developer'),(47,NULL,11,'chriscarducci','developer'),(48,NULL,12,'chriscarducci','developer'),(49,NULL,12,'jak464','developer'),(50,NULL,13,'srivathsar','developer'),(51,NULL,16,'chriscarducci','developer'),(52,NULL,16,'jak464','developer'),(53,NULL,16,'sangDev','developer'),(54,NULL,18,'srivathsar','developer'),(55,NULL,19,'srivathsar','developer'),(56,NULL,20,'chriscarducci','developer'),(57,NULL,20,'jak464','developer'),(58,NULL,21,'srivathsar','developer'),(59,NULL,21,'cs673smr16','developer'),(60,NULL,22,'chriscarducci','developer'),(61,NULL,22,'jak464','developer'),(62,NULL,22,'jaunl','developer'),(63,NULL,23,'chriscarducci','developer'),(64,NULL,23,'jak464','developer'),(65,NULL,23,'jaunl','developer'),(66,NULL,23,'sangDev','developer'),(67,NULL,23,'srivathsar','developer'),(68,NULL,23,'rczik','developer'),(69,NULL,23,'davidblair','developer'),(70,NULL,23,'cs673smr16','developer'),(71,NULL,24,'chriscarducci','developer'),(72,NULL,24,'jak464','developer'),(73,NULL,24,'jaunl','developer'),(74,NULL,24,'sangDev','developer'),(75,NULL,25,'chriscarducci','developer'),(76,NULL,25,'jak464','developer'),(77,NULL,25,'jaunl','developer'),(78,NULL,25,'sangDev','developer'),(79,NULL,25,'srivathsar','developer'),(80,NULL,25,'rczik','developer'),(81,NULL,25,'davidblair','developer'),(82,NULL,25,'cs673smr16','developer'),(83,NULL,27,'jak464','developer'),(84,NULL,27,'jaunl','developer'),(85,NULL,27,'srivathsar','developer');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample` (
  `idsample` int(11) NOT NULL AUTO_INCREMENT,
  `car` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `color` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idsample`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES (1,'bmw','blue-orange'),(2,'audi','silver'),(3,'lexus','red'),(6,'tesla','black'),(8,'gti','orange');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `idtest` int(11) NOT NULL AUTO_INCREMENT,
  `testcol` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  PRIMARY KEY (`idtest`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
INSERT INTO `test` VALUES (1,'test'),(2,'abc');
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `idusers` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(95) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
  `email` varchar(256) CHARACTER SET utf8mb4 DEFAULT NULL,
  `email_notification` tinyint(2) DEFAULT '1',
  `queued_email_notification` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`idusers`),
  UNIQUE KEY `idusers_UNIQUE` (`idusers`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf16;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (12,'chriscarducci','eba46614395e06772893817f',1,1),(13,'jak464','e2a66c526b2a246073d8806e6d',1,1),(14,'jaunl','e2b26608315e06772893817f',1,1),(15,'sangDev','fba6690137720167469490247d1941',1,1),(16,'srivathsar','fbb56e103c6a0c7167d8974a7f1055202d6de8e870',1,1),(17,'rczik','faa869483e640d694691886b71111a2a2e2e',1,0),(18,'davidblair','eca56b07346c24766e9f976e7d115124242dffa97e71c7',1,1),(19,'cs673smr16','ebb431516e6d097037c0a56d751c5d256f20e4ea',1,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-25 18:40:42

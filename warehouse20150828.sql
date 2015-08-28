CREATE DATABASE  IF NOT EXISTS `warehouse` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `warehouse`;
-- MySQL dump 10.13  Distrib 5.6.11, for Win64 (x86_64)
--
-- Host: localhost    Database: warehouse
-- ------------------------------------------------------
-- Server version	5.6.11

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
-- Temporary table structure for view `clean_creditmemos`
--

DROP TABLE IF EXISTS `clean_creditmemos`;
/*!50001 DROP VIEW IF EXISTS `clean_creditmemos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clean_creditmemos` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_code_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `order_type_code` tinyint NOT NULL,
  `r_day` tinyint NOT NULL,
  `r_month` tinyint NOT NULL,
  `r_quarter` tinyint NOT NULL,
  `r_year` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `clean_creditmemos_tax_fix`
--

DROP TABLE IF EXISTS `clean_creditmemos_tax_fix`;
/*!50001 DROP VIEW IF EXISTS `clean_creditmemos_tax_fix`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clean_creditmemos_tax_fix` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_code_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `order_type_code` tinyint NOT NULL,
  `r_day` tinyint NOT NULL,
  `r_month` tinyint NOT NULL,
  `r_quarter` tinyint NOT NULL,
  `r_year` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `clean_invoices`
--

DROP TABLE IF EXISTS `clean_invoices`;
/*!50001 DROP VIEW IF EXISTS `clean_invoices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clean_invoices` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `order_no` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `order_type` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `r_day` tinyint NOT NULL,
  `r_month` tinyint NOT NULL,
  `r_quarter` tinyint NOT NULL,
  `r_year` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `clean_invoices_tax_fix`
--

DROP TABLE IF EXISTS `clean_invoices_tax_fix`;
/*!50001 DROP VIEW IF EXISTS `clean_invoices_tax_fix`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `clean_invoices_tax_fix` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `order_no` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `order_type` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `r_day` tinyint NOT NULL,
  `r_month` tinyint NOT NULL,
  `r_quarter` tinyint NOT NULL,
  `r_year` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `creditmemolines`
--

DROP TABLE IF EXISTS `creditmemolines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditmemolines` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `order_type_code` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `style_no` varchar(45) DEFAULT NULL,
  `extended_ecx_cost` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `add_doc_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `creditmemolines_archive`
--

DROP TABLE IF EXISTS `creditmemolines_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditmemolines_archive` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `order_type_code` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `style_no` varchar(45) DEFAULT NULL,
  `extended_ecx_cost` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `add_doc_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=187;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `creditmemolines_full`
--

DROP TABLE IF EXISTS `creditmemolines_full`;
/*!50001 DROP VIEW IF EXISTS `creditmemolines_full`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `creditmemolines_full` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `order_type_code` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `certificate` tinyint NOT NULL,
  `style_no` tinyint NOT NULL,
  `extended_ecx_cost` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `no` tinyint NOT NULL,
  `add_doc_type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `creditmemos`
--

DROP TABLE IF EXISTS `creditmemos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creditmemos` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `order_type_code` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`document_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `daily_summaries`
--

DROP TABLE IF EXISTS `daily_summaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_summaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `summary_date` date DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `medium` varchar(255) DEFAULT NULL,
  `device_category` varchar(255) DEFAULT NULL,
  `sessions` int(11) DEFAULT NULL,
  `users` int(11) DEFAULT NULL,
  `new_users` int(11) DEFAULT NULL,
  `session_duration` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `bounces` int(11) DEFAULT NULL,
  `pageviews` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ensure_unique` (`summary_date`,`source`,`medium`,`device_category`)
) ENGINE=InnoDB AUTO_INCREMENT=21476 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invoicelines`
--

DROP TABLE IF EXISTS `invoicelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicelines` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `order_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `style_no` varchar(45) DEFAULT NULL,
  `extended_ecx_cost` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `add_doc_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `invoicelines_archive`
--

DROP TABLE IF EXISTS `invoicelines_archive`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoicelines_archive` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `order_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `style_no` varchar(45) DEFAULT NULL,
  `extended_ecx_cost` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL,
  `add_doc_type` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AVG_ROW_LENGTH=172;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `invoicelines_full`
--

DROP TABLE IF EXISTS `invoicelines_full`;
/*!50001 DROP VIEW IF EXISTS `invoicelines_full`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `invoicelines_full` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `order_no` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `description` tinyint NOT NULL,
  `certificate` tinyint NOT NULL,
  `style_no` tinyint NOT NULL,
  `extended_ecx_cost` tinyint NOT NULL,
  `type` tinyint NOT NULL,
  `no` tinyint NOT NULL,
  `add_doc_type` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invoices` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(50) DEFAULT NULL,
  `order_no` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `purchaseinvoicelines`
--

DROP TABLE IF EXISTS `purchaseinvoicelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `purchaseinvoicelines` (
  `document_no` varchar(30) NOT NULL,
  `posting_date` datetime DEFAULT NULL,
  `direct_unit_cost` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rapvalues`
--

DROP TABLE IF EXISTS `rapvalues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rapvalues` (
  `Certificate` varchar(255) DEFAULT NULL,
  `Off %` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `retail_calendar`
--

DROP TABLE IF EXISTS `retail_calendar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retail_calendar` (
  `Date` datetime DEFAULT NULL,
  `Day` double(10,3) DEFAULT NULL,
  `Week` double(10,3) DEFAULT NULL,
  `Month` double(10,3) DEFAULT NULL,
  `Quarter` double(10,3) DEFAULT NULL,
  `Year` double(10,3) DEFAULT NULL,
  KEY `i_date` (`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `retailermap`
--

DROP TABLE IF EXISTS `retailermap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailermap` (
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `Retailer` varchar(255) DEFAULT NULL,
  `CityState` varchar(255) DEFAULT NULL,
  `Metro` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `retailerstoremap`
--

DROP TABLE IF EXISTS `retailerstoremap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `retailerstoremap` (
  `store` varchar(255) DEFAULT NULL,
  `retailer_id` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `UpToDate??` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `returnreceipts`
--

DROP TABLE IF EXISTS `returnreceipts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `returnreceipts` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `salesperson_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`document_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenueplan`
--

DROP TABLE IF EXISTS `revenueplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenueplan` (
  `Month` datetime DEFAULT NULL,
  `GMV` double(12,3) DEFAULT NULL,
  `GrossRevenue` double(12,3) DEFAULT NULL,
  `AdjustedGMV` varchar(255) DEFAULT NULL,
  `NetRevenue` double(10,3) DEFAULT NULL,
  `GMVmargin` double(10,3) DEFAULT NULL,
  `AdjustedGMVmargin` double(10,3) DEFAULT NULL,
  `GrossMargin` double(10,3) DEFAULT NULL,
  `MonthDays` double(10,3) DEFAULT NULL,
  `GrossMarginAct` double(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenueplan2013`
--

DROP TABLE IF EXISTS `revenueplan2013`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenueplan2013` (
  `Month` date DEFAULT NULL,
  `GMV` float DEFAULT NULL,
  `GrossRevenue` float DEFAULT NULL,
  `AdjustedGMV` float DEFAULT NULL,
  `NetRevenue` float DEFAULT NULL,
  `GMVmargin` float DEFAULT NULL,
  `AdjustedGMVmargin` float DEFAULT NULL,
  `GrossMargin` float DEFAULT NULL,
  `MonthDays` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `revenueplan2014`
--

DROP TABLE IF EXISTS `revenueplan2014`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revenueplan2014` (
  `Month` datetime DEFAULT NULL,
  `GMV` double(10,3) DEFAULT NULL,
  `GrossRevenue` double(10,3) DEFAULT NULL,
  `AdjustedGMV` varchar(255) DEFAULT NULL,
  `NetRevenue` double(10,3) DEFAULT NULL,
  `GMVmargin` double(10,3) DEFAULT NULL,
  `AdjustedGMVmargin` double(10,3) DEFAULT NULL,
  `GrossMargin` double(10,3) DEFAULT NULL,
  `MonthDays` double(10,3) DEFAULT NULL,
  `GrossMarginAct` double(10,3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shipmentlines`
--

DROP TABLE IF EXISTS `shipmentlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipmentlines` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(45) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `certificate` varchar(45) DEFAULT NULL,
  `style_no` varchar(45) DEFAULT NULL,
  `extended_ecx_cost` float DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  `no` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shipments`
--

DROP TABLE IF EXISTS `shipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipments` (
  `posting_date` datetime DEFAULT NULL,
  `document_no` varchar(45) NOT NULL,
  `sell_to_customer_no` varchar(45) DEFAULT NULL,
  `sell_to_customer_name` varchar(50) DEFAULT NULL,
  `external_document_no` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `amount_incl_tax` float DEFAULT NULL,
  `cost` float DEFAULT NULL,
  `salesperson` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`document_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `spreegmv`
--

DROP TABLE IF EXISTS `spreegmv`;
/*!50001 DROP VIEW IF EXISTS `spreegmv`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `spreegmv` (
  `id` tinyint NOT NULL,
  `number` tinyint NOT NULL,
  `completed_at` tinyint NOT NULL,
  `bill_first_name` tinyint NOT NULL,
  `bill_last_name` tinyint NOT NULL,
  `email` tinyint NOT NULL,
  `bill_address` tinyint NOT NULL,
  `bill_address_2` tinyint NOT NULL,
  `bill_city` tinyint NOT NULL,
  `bill_state` tinyint NOT NULL,
  `bill_zip` tinyint NOT NULL,
  `bill_country` tinyint NOT NULL,
  `bill_phone` tinyint NOT NULL,
  `bill_alternate_phone` tinyint NOT NULL,
  `store` tinyint NOT NULL,
  `ship_first_name` tinyint NOT NULL,
  `ship_last_name` tinyint NOT NULL,
  `ship_address` tinyint NOT NULL,
  `ship_address_2` tinyint NOT NULL,
  `ship_city` tinyint NOT NULL,
  `ship_state` tinyint NOT NULL,
  `ship_zip` tinyint NOT NULL,
  `ship_country` tinyint NOT NULL,
  `ship_phone` tinyint NOT NULL,
  `product_type` tinyint NOT NULL,
  `component_price` tinyint NOT NULL,
  `component_tax` tinyint NOT NULL,
  `order_subtotal` tinyint NOT NULL,
  `sales_tax` tinyint NOT NULL,
  `order_total` tinyint NOT NULL,
  `sales_tax_rate` tinyint NOT NULL,
  `currency` tinyint NOT NULL,
  `order_type` tinyint NOT NULL,
  `order_state` tinyint NOT NULL,
  `payment_method` tinyint NOT NULL,
  `see_in_person` tinyint NOT NULL,
  `ship_to_partner` tinyint NOT NULL,
  `attributed_salesperson` tinyint NOT NULL,
  `attributed_retailer` tinyint NOT NULL,
  `product_name` tinyint NOT NULL,
  `destination_store` tinyint NOT NULL,
  `r_day` tinyint NOT NULL,
  `r_month` tinyint NOT NULL,
  `r_quarter` tinyint NOT NULL,
  `r_year` tinyint NOT NULL,
  `exchange_source` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `spreeitems`
--

DROP TABLE IF EXISTS `spreeitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spreeitems` (
  `id` int(11) NOT NULL,
  `number` varchar(45) NOT NULL,
  `completed_at` datetime DEFAULT NULL,
  `bill_first_name` varchar(45) DEFAULT NULL,
  `bill_last_name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `bill_address` varchar(100) DEFAULT NULL,
  `bill_address_2` varchar(100) DEFAULT NULL,
  `bill_city` varchar(45) DEFAULT NULL,
  `bill_state` varchar(45) DEFAULT NULL,
  `bill_zip` varchar(45) DEFAULT NULL,
  `bill_country` varchar(45) DEFAULT NULL,
  `bill_phone` varchar(45) DEFAULT NULL,
  `bill_alternate_phone` varchar(45) DEFAULT NULL,
  `store` varchar(255) DEFAULT NULL,
  `ship_first_name` varchar(45) DEFAULT NULL,
  `ship_last_name` varchar(45) DEFAULT NULL,
  `ship_address` varchar(100) DEFAULT NULL,
  `ship_address_2` varchar(100) DEFAULT NULL,
  `ship_city` varchar(45) DEFAULT NULL,
  `ship_state` varchar(45) DEFAULT NULL,
  `ship_zip` varchar(45) DEFAULT NULL,
  `ship_country` varchar(45) DEFAULT NULL,
  `ship_phone` varchar(45) DEFAULT NULL,
  `product_type` varchar(45) DEFAULT NULL,
  `component_price` float DEFAULT NULL,
  `component_tax` float DEFAULT NULL,
  `order_subtotal` float DEFAULT NULL,
  `sales_tax` decimal(10,2) DEFAULT NULL,
  `order_total` float DEFAULT NULL,
  `sales_tax_rate` decimal(6,3) DEFAULT NULL,
  `currency` varchar(45) DEFAULT NULL,
  `order_type` varchar(45) DEFAULT NULL,
  `order_state` varchar(45) DEFAULT NULL,
  `payment_method` varchar(512) DEFAULT NULL,
  `see_in_person` varchar(3) DEFAULT NULL,
  `ship_to_partner` varchar(3) DEFAULT NULL,
  `attributed_salesperson` varchar(45) DEFAULT NULL,
  `attributed_retailer` varchar(45) DEFAULT NULL,
  `product_name` varchar(45) DEFAULT NULL,
  `destination_store` varchar(45) DEFAULT NULL,
  `exchange_source` varchar(45) DEFAULT NULL,
  KEY `i_completed_at` (`completed_at`),
  KEY `i_order_type` (`order_type`),
  KEY `i_exchange_source` (`exchange_source`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trafficcity`
--

DROP TABLE IF EXISTS `trafficcity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trafficcity` (
  `year` double(10,3) DEFAULT NULL,
  `month` double(10,3) DEFAULT NULL,
  `metro` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `sessions` double(10,3) DEFAULT NULL,
  `transactions` double(10,3) DEFAULT NULL,
  `YearMonth` varchar(255) DEFAULT NULL,
  `CityState` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `trafficmetro`
--

DROP TABLE IF EXISTS `trafficmetro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trafficmetro` (
  `year` double(10,3) DEFAULT NULL,
  `month` double(10,3) DEFAULT NULL,
  `metro` varchar(255) DEFAULT NULL,
  `sessions` double(10,3) DEFAULT NULL,
  `transactions` double(10,3) DEFAULT NULL,
  `YearMonth` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `z_clean_creditmemos`
--

DROP TABLE IF EXISTS `z_clean_creditmemos`;
/*!50001 DROP VIEW IF EXISTS `z_clean_creditmemos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `z_clean_creditmemos` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_code_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `order_type_code` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `z_clean_creditmemos_tax_fix`
--

DROP TABLE IF EXISTS `z_clean_creditmemos_tax_fix`;
/*!50001 DROP VIEW IF EXISTS `z_clean_creditmemos_tax_fix`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `z_clean_creditmemos_tax_fix` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_code_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `Amount` tinyint NOT NULL,
  `order_type_code` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `z_clean_invoices`
--

DROP TABLE IF EXISTS `z_clean_invoices`;
/*!50001 DROP VIEW IF EXISTS `z_clean_invoices`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `z_clean_invoices` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `order_no` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `order_type` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `amount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `z_clean_invoices_tax_fix`
--

DROP TABLE IF EXISTS `z_clean_invoices_tax_fix`;
/*!50001 DROP VIEW IF EXISTS `z_clean_invoices_tax_fix`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `z_clean_invoices_tax_fix` (
  `posting_date` tinyint NOT NULL,
  `document_no` tinyint NOT NULL,
  `sell_to_customer_no` tinyint NOT NULL,
  `sell_to_customer_name` tinyint NOT NULL,
  `order_no` tinyint NOT NULL,
  `external_document_no` tinyint NOT NULL,
  `order_type_original` tinyint NOT NULL,
  `salesperson` tinyint NOT NULL,
  `amount_incl_tax` tinyint NOT NULL,
  `OrderDate` tinyint NOT NULL,
  `order_type` tinyint NOT NULL,
  `Cost` tinyint NOT NULL,
  `amount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `clean_creditmemos`
--

/*!50001 DROP TABLE IF EXISTS `clean_creditmemos`*/;
/*!50001 DROP VIEW IF EXISTS `clean_creditmemos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clean_creditmemos` AS select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'Item') and (year(`c`.`posting_date`) = 2015)) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'G/L Account') and (`c`.`no` between 40000 and 49999) and (`c`.`no` <> 42200) and (year(`c`.`posting_date`) = 2015)) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines_archive` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'Item') and (year(`c`.`posting_date`) in (2012,2013,2014))) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines_archive` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'G/L Account') and (`c`.`no` between 40000 and 49999) and (`c`.`no` <> 42200) and (year(`c`.`posting_date`) in (2012,2013,2014))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clean_creditmemos_tax_fix`
--

/*!50001 DROP TABLE IF EXISTS `clean_creditmemos_tax_fix`*/;
/*!50001 DROP VIEW IF EXISTS `clean_creditmemos_tax_fix`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clean_creditmemos_tax_fix` AS select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'Item') and (year(`c`.`posting_date`) = 2015)) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,(case when (`c`.`no` = 42200) then (-(1) * `c`.`amount`) else `c`.`extended_ecx_cost` end) AS `Cost`,(case when (`c`.`no` = 42200) then 0 else `c`.`amount` end) AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'G/L Account') and (`c`.`no` between 40000 and 49999) and (year(`c`.`posting_date`) = 2015)) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines_archive` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'Item') and (year(`c`.`posting_date`) in (2012,2013,2014))) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,(case when (`c`.`no` = 42200) then (-(1) * `c`.`amount`) else `c`.`extended_ecx_cost` end) AS `Cost`,(case when (`c`.`no` = 42200) then 0 else `c`.`amount` end) AS `Amount`,`c`.`order_type_code` AS `order_type_code`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`creditmemolines_archive` `c` left join `retail_calendar` `rc` on((`c`.`posting_date` = `rc`.`Date`))) where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'G/L Account') and (`c`.`no` between 40000 and 49999) and (year(`c`.`posting_date`) in (2012,2013,2014))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clean_invoices`
--

/*!50001 DROP TABLE IF EXISTS `clean_invoices`*/;
/*!50001 DROP VIEW IF EXISTS `clean_invoices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clean_invoices` AS select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'Item') and (year(`i`.`posting_date`) = 2015)) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'G/L Account') and (`i`.`no` between 40000 and 49999) and (`i`.`no` <> 42200) and (year(`i`.`posting_date`) = 2015)) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines_archive` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'Item') and (year(`i`.`posting_date`) in (2012,2013,2014))) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines_archive` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'G/L Account') and (`i`.`no` between 40000 and 49999) and (`i`.`no` <> 42200) and (year(`i`.`posting_date`) in (2012,2013,2014))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `clean_invoices_tax_fix`
--

/*!50001 DROP TABLE IF EXISTS `clean_invoices_tax_fix`*/;
/*!50001 DROP VIEW IF EXISTS `clean_invoices_tax_fix`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `clean_invoices_tax_fix` AS select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'Item') and (year(`i`.`posting_date`) = 2015)) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,(case when (`i`.`no` = 42200) then (-(1) * `i`.`amount`) else `i`.`extended_ecx_cost` end) AS `Cost`,(case when (`i`.`no` = 42200) then 0 else `i`.`amount` end) AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'G/L Account') and (`i`.`no` between 40000 and 49999) and (year(`i`.`posting_date`) = 2015)) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines_archive` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'Item') and (year(`i`.`posting_date`) in (2012,2013,2014))) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,(case when (`i`.`no` = 42200) then (-(1) * `i`.`amount`) else `i`.`extended_ecx_cost` end) AS `Cost`,(case when (`i`.`no` = 42200) then 0 else `i`.`amount` end) AS `amount`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year` from (`invoicelines_archive` `i` left join `retail_calendar` `rc` on((`i`.`posting_date` = `rc`.`Date`))) where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'G/L Account') and (`i`.`no` between 40000 and 49999) and (year(`i`.`posting_date`) in (2012,2013,2014))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `creditmemolines_full`
--

/*!50001 DROP TABLE IF EXISTS `creditmemolines_full`*/;
/*!50001 DROP VIEW IF EXISTS `creditmemolines_full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `creditmemolines_full` AS select `creditmemolines_archive`.`posting_date` AS `posting_date`,`creditmemolines_archive`.`document_no` AS `document_no`,`creditmemolines_archive`.`external_document_no` AS `external_document_no`,`creditmemolines_archive`.`sell_to_customer_no` AS `sell_to_customer_no`,`creditmemolines_archive`.`sell_to_customer_name` AS `sell_to_customer_name`,`creditmemolines_archive`.`order_type_code` AS `order_type_code`,`creditmemolines_archive`.`amount` AS `amount`,`creditmemolines_archive`.`amount_incl_tax` AS `amount_incl_tax`,`creditmemolines_archive`.`cost` AS `cost`,`creditmemolines_archive`.`salesperson` AS `salesperson`,`creditmemolines_archive`.`description` AS `description`,`creditmemolines_archive`.`certificate` AS `certificate`,`creditmemolines_archive`.`style_no` AS `style_no`,`creditmemolines_archive`.`extended_ecx_cost` AS `extended_ecx_cost`,`creditmemolines_archive`.`type` AS `type`,`creditmemolines_archive`.`no` AS `no`,`creditmemolines_archive`.`add_doc_type` AS `add_doc_type` from `creditmemolines_archive` union all select `creditmemolines`.`posting_date` AS `posting_date`,`creditmemolines`.`document_no` AS `document_no`,`creditmemolines`.`external_document_no` AS `external_document_no`,`creditmemolines`.`sell_to_customer_no` AS `sell_to_customer_no`,`creditmemolines`.`sell_to_customer_name` AS `sell_to_customer_name`,`creditmemolines`.`order_type_code` AS `order_type_code`,`creditmemolines`.`amount` AS `amount`,`creditmemolines`.`amount_incl_tax` AS `amount_incl_tax`,`creditmemolines`.`cost` AS `cost`,`creditmemolines`.`salesperson` AS `salesperson`,`creditmemolines`.`description` AS `description`,`creditmemolines`.`certificate` AS `certificate`,`creditmemolines`.`style_no` AS `style_no`,`creditmemolines`.`extended_ecx_cost` AS `extended_ecx_cost`,`creditmemolines`.`type` AS `type`,`creditmemolines`.`no` AS `no`,`creditmemolines`.`add_doc_type` AS `add_doc_type` from `creditmemolines` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `invoicelines_full`
--

/*!50001 DROP TABLE IF EXISTS `invoicelines_full`*/;
/*!50001 DROP VIEW IF EXISTS `invoicelines_full`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `invoicelines_full` AS select `invoicelines_archive`.`posting_date` AS `posting_date`,`invoicelines_archive`.`document_no` AS `document_no`,`invoicelines_archive`.`sell_to_customer_no` AS `sell_to_customer_no`,`invoicelines_archive`.`sell_to_customer_name` AS `sell_to_customer_name`,`invoicelines_archive`.`order_no` AS `order_no`,`invoicelines_archive`.`external_document_no` AS `external_document_no`,`invoicelines_archive`.`order_type` AS `order_type`,`invoicelines_archive`.`salesperson` AS `salesperson`,`invoicelines_archive`.`amount` AS `amount`,`invoicelines_archive`.`amount_incl_tax` AS `amount_incl_tax`,`invoicelines_archive`.`cost` AS `cost`,`invoicelines_archive`.`description` AS `description`,`invoicelines_archive`.`certificate` AS `certificate`,`invoicelines_archive`.`style_no` AS `style_no`,`invoicelines_archive`.`extended_ecx_cost` AS `extended_ecx_cost`,`invoicelines_archive`.`type` AS `type`,`invoicelines_archive`.`no` AS `no`,`invoicelines_archive`.`add_doc_type` AS `add_doc_type` from `invoicelines_archive` union all select `invoicelines`.`posting_date` AS `posting_date`,`invoicelines`.`document_no` AS `document_no`,`invoicelines`.`sell_to_customer_no` AS `sell_to_customer_no`,`invoicelines`.`sell_to_customer_name` AS `sell_to_customer_name`,`invoicelines`.`order_no` AS `order_no`,`invoicelines`.`external_document_no` AS `external_document_no`,`invoicelines`.`order_type` AS `order_type`,`invoicelines`.`salesperson` AS `salesperson`,`invoicelines`.`amount` AS `amount`,`invoicelines`.`amount_incl_tax` AS `amount_incl_tax`,`invoicelines`.`cost` AS `cost`,`invoicelines`.`description` AS `description`,`invoicelines`.`certificate` AS `certificate`,`invoicelines`.`style_no` AS `style_no`,`invoicelines`.`extended_ecx_cost` AS `extended_ecx_cost`,`invoicelines`.`type` AS `type`,`invoicelines`.`no` AS `no`,`invoicelines`.`add_doc_type` AS `add_doc_type` from `invoicelines` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `spreegmv`
--

/*!50001 DROP TABLE IF EXISTS `spreegmv`*/;
/*!50001 DROP VIEW IF EXISTS `spreegmv`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `spreegmv` AS select `s`.`id` AS `id`,`s`.`number` AS `number`,`s`.`completed_at` AS `completed_at`,`s`.`bill_first_name` AS `bill_first_name`,`s`.`bill_last_name` AS `bill_last_name`,`s`.`email` AS `email`,`s`.`bill_address` AS `bill_address`,`s`.`bill_address_2` AS `bill_address_2`,`s`.`bill_city` AS `bill_city`,`s`.`bill_state` AS `bill_state`,`s`.`bill_zip` AS `bill_zip`,`s`.`bill_country` AS `bill_country`,`s`.`bill_phone` AS `bill_phone`,`s`.`bill_alternate_phone` AS `bill_alternate_phone`,`s`.`store` AS `store`,`s`.`ship_first_name` AS `ship_first_name`,`s`.`ship_last_name` AS `ship_last_name`,`s`.`ship_address` AS `ship_address`,`s`.`ship_address_2` AS `ship_address_2`,`s`.`ship_city` AS `ship_city`,`s`.`ship_state` AS `ship_state`,`s`.`ship_zip` AS `ship_zip`,`s`.`ship_country` AS `ship_country`,`s`.`ship_phone` AS `ship_phone`,`s`.`product_type` AS `product_type`,`s`.`component_price` AS `component_price`,`s`.`component_tax` AS `component_tax`,`s`.`order_subtotal` AS `order_subtotal`,`s`.`sales_tax` AS `sales_tax`,`s`.`order_total` AS `order_total`,`s`.`sales_tax_rate` AS `sales_tax_rate`,`s`.`currency` AS `currency`,(case when isnull(`s`.`order_type`) then 'asset' else `s`.`order_type` end) AS `order_type`,`s`.`order_state` AS `order_state`,`s`.`payment_method` AS `payment_method`,`s`.`see_in_person` AS `see_in_person`,`s`.`ship_to_partner` AS `ship_to_partner`,`s`.`attributed_salesperson` AS `attributed_salesperson`,`s`.`attributed_retailer` AS `attributed_retailer`,`s`.`product_name` AS `product_name`,`s`.`destination_store` AS `destination_store`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year`,`s`.`exchange_source` AS `exchange_source` from (`spreeitems` `s` left join `retail_calendar` `rc` on((`s`.`completed_at` = `rc`.`Date`))) where isnull(`s`.`exchange_source`) union all select `s`.`id` AS `id`,`s`.`number` AS `number`,`s`.`completed_at` AS `completed_at`,`s`.`bill_first_name` AS `bill_first_name`,`s`.`bill_last_name` AS `bill_last_name`,`s`.`email` AS `email`,`s`.`bill_address` AS `bill_address`,`s`.`bill_address_2` AS `bill_address_2`,`s`.`bill_city` AS `bill_city`,`s`.`bill_state` AS `bill_state`,`s`.`bill_zip` AS `bill_zip`,`s`.`bill_country` AS `bill_country`,`s`.`bill_phone` AS `bill_phone`,`s`.`bill_alternate_phone` AS `bill_alternate_phone`,`s`.`store` AS `store`,`s`.`ship_first_name` AS `ship_first_name`,`s`.`ship_last_name` AS `ship_last_name`,`s`.`ship_address` AS `ship_address`,`s`.`ship_address_2` AS `ship_address_2`,`s`.`ship_city` AS `ship_city`,`s`.`ship_state` AS `ship_state`,`s`.`ship_zip` AS `ship_zip`,`s`.`ship_country` AS `ship_country`,`s`.`ship_phone` AS `ship_phone`,`s`.`product_type` AS `product_type`,`s`.`component_price` AS `component_price`,`s`.`component_tax` AS `component_tax`,`s`.`order_subtotal` AS `order_subtotal`,`s`.`sales_tax` AS `sales_tax`,`s`.`order_total` AS `order_total`,`s`.`sales_tax_rate` AS `sales_tax_rate`,`s`.`currency` AS `currency`,(case when isnull(`s`.`order_type`) then 'asset' else `s`.`order_type` end) AS `order_type`,`s`.`order_state` AS `order_state`,`s`.`payment_method` AS `payment_method`,`s`.`see_in_person` AS `see_in_person`,`s`.`ship_to_partner` AS `ship_to_partner`,`s`.`attributed_salesperson` AS `attributed_salesperson`,`s`.`attributed_retailer` AS `attributed_retailer`,`s`.`product_name` AS `product_name`,`s`.`destination_store` AS `destination_store`,`rc`.`Day` AS `r_day`,`rc`.`Month` AS `r_month`,`rc`.`Quarter` AS `r_quarter`,`rc`.`Year` AS `r_year`,`s`.`exchange_source` AS `exchange_source` from (`spreeitems` `s` left join `retail_calendar` `rc` on((`s`.`completed_at` = `rc`.`Date`))) where (`s`.`exchange_source` in ('exchange','remake')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `z_clean_creditmemos`
--

/*!50001 DROP TABLE IF EXISTS `z_clean_creditmemos`*/;
/*!50001 DROP VIEW IF EXISTS `z_clean_creditmemos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `z_clean_creditmemos` AS select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code` from `creditmemolines` `c` where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'Item')) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code` from `creditmemolines` `c` where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'G/L Account') and (`c`.`no` between 40000 and 49999) and (`c`.`no` <> 42200)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `z_clean_creditmemos_tax_fix`
--

/*!50001 DROP TABLE IF EXISTS `z_clean_creditmemos_tax_fix`*/;
/*!50001 DROP VIEW IF EXISTS `z_clean_creditmemos_tax_fix`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `z_clean_creditmemos_tax_fix` AS select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,`c`.`extended_ecx_cost` AS `Cost`,`c`.`amount` AS `Amount`,`c`.`order_type_code` AS `order_type_code` from `creditmemolines` `c` where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'Item')) union all select `c`.`posting_date` AS `posting_date`,`c`.`document_no` AS `document_no`,`c`.`sell_to_customer_no` AS `sell_to_customer_no`,`c`.`sell_to_customer_name` AS `sell_to_customer_name`,`c`.`external_document_no` AS `external_document_no`,`c`.`order_type_code` AS `order_type_code_original`,`c`.`salesperson` AS `salesperson`,`c`.`amount_incl_tax` AS `amount_incl_tax`,`c`.`posting_date` AS `OrderDate`,(case when (`c`.`no` = 42200) then (-(1) * `c`.`amount`) else `c`.`extended_ecx_cost` end) AS `Cost`,(case when (`c`.`no` = 42200) then 0 else `c`.`amount` end) AS `Amount`,`c`.`order_type_code` AS `order_type_code` from `creditmemolines` `c` where ((`c`.`order_type_code` not in ('MEMO','MEMOIC')) and (`c`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`c`.`type` = 'G/L Account') and (`c`.`no` between 40000 and 49999)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `z_clean_invoices`
--

/*!50001 DROP TABLE IF EXISTS `z_clean_invoices`*/;
/*!50001 DROP VIEW IF EXISTS `z_clean_invoices`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `z_clean_invoices` AS select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount` from `invoicelines` `i` where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'Item')) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount` from `invoicelines` `i` where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'G/L Account') and (`i`.`no` between 40000 and 49999) and (`i`.`no` <> 42200)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `z_clean_invoices_tax_fix`
--

/*!50001 DROP TABLE IF EXISTS `z_clean_invoices_tax_fix`*/;
/*!50001 DROP VIEW IF EXISTS `z_clean_invoices_tax_fix`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `z_clean_invoices_tax_fix` AS select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,`i`.`extended_ecx_cost` AS `Cost`,`i`.`amount` AS `amount` from `invoicelines` `i` where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'Item')) union all select `i`.`posting_date` AS `posting_date`,`i`.`document_no` AS `document_no`,`i`.`sell_to_customer_no` AS `sell_to_customer_no`,`i`.`sell_to_customer_name` AS `sell_to_customer_name`,`i`.`order_no` AS `order_no`,`i`.`external_document_no` AS `external_document_no`,`i`.`order_type` AS `order_type_original`,`i`.`salesperson` AS `salesperson`,`i`.`amount_incl_tax` AS `amount_incl_tax`,`i`.`posting_date` AS `OrderDate`,`i`.`order_type` AS `order_type`,(case when (`i`.`no` = 42200) then (-(1) * `i`.`amount`) else `i`.`extended_ecx_cost` end) AS `Cost`,(case when (`i`.`no` = 42200) then 0 else `i`.`amount` end) AS `amount` from `invoicelines` `i` where ((`i`.`order_type` not in ('MEMO','MEMOIC')) and (`i`.`sell_to_customer_no` <> '99-JKDECXOWN') and (`i`.`type` = 'G/L Account') and (`i`.`no` between 40000 and 49999)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-28  7:37:47

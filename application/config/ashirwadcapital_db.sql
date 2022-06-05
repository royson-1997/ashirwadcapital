-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2022 at 09:06 AM
-- Server version: 5.7.37-cll-lve
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ashirwadcapital_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact_data`
--

CREATE TABLE `contact_data` (
  `contact_id` int(11) NOT NULL,
  `contact_title` varchar(200) NOT NULL,
  `contact_address` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_no` text NOT NULL,
  `contact_type` int(11) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `modify_date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_data`
--

INSERT INTO `contact_data` (`contact_id`, `contact_title`, `contact_address`, `contact_email`, `contact_no`, `contact_type`, `create_date`, `modify_date`, `status`) VALUES
(1, 'Mr. Chandrakant Kangne <br>\r\nMr. Shantaram Shinde', '303, Tantia Jogani Industrial Estate, <br>\r\nOpp. Lodha Bellissimo, J.R.Boricha Marg,<br>\r\nLower Parel, Mumbai – 400 011.', 'E-MAIL: aclinvestors@svgcl.com', 'Tel.No.: +91 022 43443555 ', 1, '23-12-2021 02:03:12am', '05-01-2022 11:31:29am', 1),
(2, 'Mr. Sandeep More', 'Bigshare Services Pvt. Ltd., 1st Floor, <br>\r\nBharat Tin Works Building, Opp. Vasant Oasis, Makwana Road, Marol, Andheri (East), <br>\r\nMumbai 400 059.', 'E-MAIL: sandeep@bigshareonline.com', 'Direct No.: +91 - 22 - 6263 8212 <br>\r\nBoard. No.: +91 - 22 - 6263 8200', 2, '23-12-2021 03:21:36am', '30-12-2021 06:58:41am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `document_type_data`
--

CREATE TABLE `document_type_data` (
  `document_type_id` int(11) NOT NULL,
  `document_type` varchar(200) NOT NULL,
  `document_type_no` int(10) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `modify_date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_type_data`
--

INSERT INTO `document_type_data` (`document_type_id`, `document_type`, `document_type_no`, `create_date`, `modify_date`, `status`) VALUES
(1, 'Annual Reports / Annual Returns', 1, '28-12-2021 10:06:15am', '11-01-2022 07:03:57am', 1),
(2, 'Financial Results', 1, '28-12-2021 10:06:24am', '29-12-2021 11:01:29am', 1),
(3, 'Shareholding Pattern', 1, '28-12-2021 10:06:30am', '28-12-2021 10:06:30am', 1),
(4, 'Unclaimed Dividend Transfer to Investor Education and Protection Fund (IEPF)', 1, '28-12-2021 10:06:37am', '29-12-2021 10:59:53am', 1),
(5, 'Declaration of e_voting Results ', 1, '28-12-2021 10:06:42am', '28-12-2021 10:06:42am', 1),
(6, 'BOARD OF DIRECTORS', 2, '28-12-2021 03:36:41pm', '28-12-2021 03:36:41pm', 1),
(7, 'KEY MANAGERIAL PERSONNEL', 2, '28-12-2021 03:36:53pm', '28-12-2021 03:36:53pm', 1),
(8, 'AUDIT COMMITTEE', 2, '28-12-2021 03:37:02pm', '28-12-2021 03:37:02pm', 1),
(9, 'STAKEHOLDERS RELATIONSHIP COMMITTEE', 2, '28-12-2021 03:37:08pm', '28-12-2021 03:37:08pm', 1),
(10, 'NOMINATION AND REMUNERATION COMMITTEE', 2, '28-12-2021 03:37:13pm', '28-12-2021 03:37:13pm', 1),
(11, 'Internal Complaints Committee as per POSH', 2, '28-12-2021 03:37:29pm', '28-12-2021 03:37:29pm', 1),
(12, 'Board Meeting', 3, '28-12-2021 03:37:42pm', '28-12-2021 03:37:42pm', 1),
(13, 'Book Closure Notice', 3, '28-12-2021 03:37:50pm', '29-12-2021 12:13:17pm', 1),
(14, 'Unclaimed Shares Transfer to Investor Education and Protection Fund (IEPF)', 1, '29-12-2021 07:48:20am', '29-12-2021 10:59:42am', 1),
(15, 'Annual Returns', 1, '10-01-2022 01:12:09pm', '10-01-2022 01:12:09pm', 0);

-- --------------------------------------------------------

--
-- Table structure for table `document_upload_data`
--

CREATE TABLE `document_upload_data` (
  `document_upload_id` int(11) NOT NULL,
  `document_upload_title` varchar(200) NOT NULL,
  `document_upload_description` varchar(200) NOT NULL,
  `document_upload_link` varchar(200) NOT NULL,
  `document_upload_type` int(11) NOT NULL,
  `document_upload_type_no` int(11) NOT NULL,
  `document_upload_year` int(11) DEFAULT NULL,
  `create_date` varchar(100) NOT NULL,
  `modify_date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `document_upload_data`
--

INSERT INTO `document_upload_data` (`document_upload_id`, `document_upload_title`, `document_upload_description`, `document_upload_link`, `document_upload_type`, `document_upload_type_no`, `document_upload_year`, `create_date`, `modify_date`, `status`) VALUES
(1, 'ANNUAL REPORT', '2013-14', 'uploads/1/1/ANNUAL REPORT 2013-14.pdf', 1, 1, 4, '28-12-2021 10:07:13am', '11-01-2022 07:02:13am', 1),
(2, 'ANNUAL REPORT', '2014-15', 'uploads/1/1/ANNUAL REPORT 2014-15.pdf', 1, 1, 5, '28-12-2021 10:07:37am', '11-01-2022 07:02:19am', 1),
(3, 'FORM FOR FURNISHING PAN AND BANK DETAILS', 'PAN & BANK DETAILS', 'uploads/5/1/FORM FOR FURNISHING PAN AND BANK DETAILS.pdf', 1, 5, NULL, '28-12-2021 10:11:04am', '29-12-2021 07:51:33am', 0),
(4, 'ANNUAL REPORT', '2015-16', 'uploads/1/1/ANNUAL REPORT 2015-16.pdf', 1, 1, 6, '29-12-2021 06:09:45am', '11-01-2022 07:02:28am', 1),
(5, 'ANNUAL REPORT', '2016-17', 'uploads/1/1/ANNUAL REPORT 2016-17.pdf', 1, 1, 7, '29-12-2021 06:10:46am', '11-01-2022 07:02:37am', 1),
(6, 'Form_ISR-1_REQUEST FOR REGISTERING PAN KYC', 'KYC', 'uploads/5/1/Form_ISR-1_REQUEST_FOR_REGISTERING_PAN__KYC_DETAILS_OR_CHANGES__UPDATION.PDF', 1, 5, NULL, '29-12-2021 07:57:12am', '29-12-2021 07:57:12am', 1),
(7, 'Form_ISR-3', 'Declaration Form for Opting-out of Nomination by holders of physical securities in Listed Companies', 'uploads/5/1/Form_ISR-3.pdf', 1, 5, NULL, '29-12-2021 07:59:04am', '29-12-2021 07:59:04am', 1),
(8, 'Form No. SH-13', 'Nomination Form', 'uploads/5/1/Form No. SH-13 Nomination Form.pdf', 1, 5, NULL, '29-12-2021 07:59:52am', '17-02-2022 01:11:36pm', 1),
(9, 'Form No. SH-14', 'Cancellation or Variation of Nomination', 'uploads/5/1/Form No. SH-14  Cancellation or Variation of Nomination Form.pdf', 1, 5, NULL, '29-12-2021 08:01:00am', '17-02-2022 01:11:55pm', 1),
(10, 'ANNUAL REPORT', '2017-18', 'uploads/1/1/ANNUAL REPORT 2017-18.pdf', 1, 1, 8, '29-12-2021 12:27:21pm', '11-01-2022 07:02:45am', 1),
(11, 'ANNUAL REPORT', '2018-19', 'uploads/1/1/ANNUAL REPORT 2018-19.pdf', 1, 1, 9, '29-12-2021 12:27:50pm', '11-01-2022 07:02:53am', 1),
(12, 'ANNUAL REPORT', '2019-20', 'uploads/1/1/ANNUAL REPORT 2019-20.pdf', 1, 1, 10, '29-12-2021 12:28:25pm', '11-01-2022 07:03:00am', 1),
(13, 'ANNUAL REPORT', '2020-21', 'uploads/1/1/ANNUAL REPORT 2020-21.pdf', 1, 1, 11, '29-12-2021 12:28:49pm', '11-01-2022 07:03:09am', 1),
(14, 'UNPAID UNCLAIMED DIVIDEND TRANSFER TO IEPF ', 'F.Y. 2008 UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1_2008.pdf', 4, 1, NULL, '29-12-2021 12:32:59pm', '29-12-2021 12:32:59pm', 1),
(15, 'UNPAID UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'F.Y. 2009-10 INTERIM DIV. UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1_2009-10.pdf', 4, 1, NULL, '29-12-2021 12:33:56pm', '29-12-2021 12:37:56pm', 1),
(16, 'UNPAID  UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'F.Y. 2009-10 FINAL DIV. UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1_2009-10_final.pdf', 4, 1, NULL, '29-12-2021 12:35:37pm', '29-12-2021 12:35:37pm', 1),
(17, 'UNPAID  UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'F.Y. 2010-11 UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1_2010-11.pdf', 4, 1, NULL, '29-12-2021 12:36:55pm', '29-12-2021 12:36:55pm', 1),
(18, 'UNPAID UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'F.Y. 2011-12 UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1_2011-12.pdf', 4, 1, NULL, '29-12-2021 12:37:35pm', '29-12-2021 12:37:35pm', 1),
(19, 'UNPAID UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'F.Y. 2012-13 UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1_2012-13.pdf', 4, 1, NULL, '29-12-2021 12:39:11pm', '29-12-2021 12:39:11pm', 1),
(20, 'UNPAID UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'F.Y. 2013-14 UNCLAIMED DIVIDEND TRANSFER TO IEPF', 'uploads/1/4/Form_IEPF-1-2013-14.pdf', 4, 1, NULL, '29-12-2021 12:40:01pm', '29-12-2021 12:40:01pm', 1),
(21, 'UNCLAIMED SHARES  TRANSFER TO IEPF (2018)', 'UNCLAIMED SHARES TRANSFER TO IEPF - LOT - 1', 'uploads/1/14/ACL Form IEPF-4 2018.pdf', 14, 1, 0, '29-12-2021 12:41:39pm', '24-02-2022 12:06:13pm', 1),
(22, 'UNCLAIMED SHARES TRANSFER TO IEPF (2019-20)', 'UNCLAIMED SHARES TRANSFER TO IEPF - LOT - 2', 'uploads/1/14/ACL Form IEPF-4 2020.pdf', 14, 1, 0, '29-12-2021 01:05:21pm', '24-02-2022 12:06:34pm', 1),
(23, 'UNCLAIMED SHARES TRANSFER TO IEPF (2021)', 'UNCLAIMED SHARES TRANSFER TO IEPF - LOT - 3', 'uploads/1/14/ACL Form IEPF-4 2021.pdf', 14, 1, 0, '29-12-2021 01:06:30pm', '24-02-2022 12:06:48pm', 1),
(24, 'Shareholder Letter', 'Furnishing of PAN, KYC details and Nomination by holders of physical securities', 'uploads/5/1/Shareholder_Letter_Forms.pdf', 1, 5, NULL, '30-12-2021 07:05:17am', '30-12-2021 07:11:23am', 1),
(25, 'Book closure Notice for the purpose of 29th AGM 2014-15 & Dividend', 'Notice for the purpose of 29th AGM & Dividend', 'uploads/3/13/ACL Book closure Notice for the purpose of 29th AGM & Dividend.pdf', 13, 3, NULL, '30-12-2021 10:27:52am', '30-12-2021 10:40:09am', 1),
(26, 'Book closure Notice for the purpose of 30th AGM  2015-16', 'Notice for the purpose of 30th AGM', 'uploads/3/13/ACL Book closure Notice for the purpose of 30th AGM.PDF', 13, 3, 0, '30-12-2021 10:29:23am', '05-01-2022 10:14:33am', 1),
(27, 'Book closure Notice for the purpose of 31st AGM 216-17 & Dividend', 'Notice for the purpose of 31st AGM & Dividend', 'uploads/3/13/ACL Book closure Notice for the purpose of 31st AGM & Dividend.PDF', 13, 3, NULL, '30-12-2021 10:30:35am', '30-12-2021 10:41:14am', 1),
(28, 'Book closure Notice for the purpose of 32nd AGM 2017-18 & Dividend', 'Notice for the purpose of 32nd AGM & Dividend', 'uploads/3/13/ACL Book closure Notice for the purpose of 32nd AGM & Dividend.PDF', 13, 3, NULL, '30-12-2021 10:31:30am', '30-12-2021 10:41:26am', 1),
(29, 'Book closure Notice for the purpose of 33rd AGM 2018-19 & Dividend', 'Notice for the purpose of 33rd AGM & Dividend', 'uploads/3/13/ACL Book closure Notice for the purpose of 33rd AGM & Dividend.pdf', 13, 3, NULL, '30-12-2021 10:33:01am', '30-12-2021 10:41:44am', 1),
(30, 'Book closure Notice for the purpose of 34th AGM 2019-20', 'Notice for the purpose of 34th AGM', 'uploads/3/13/ACL Book closure Notice for the purpose of 34th AGM.pdf', 13, 3, NULL, '30-12-2021 10:34:06am', '30-12-2021 10:41:53am', 1),
(31, 'Book closure Notice for the purpose of 35th AGM 2020-21', 'Notice for the purpose of 35th AGM', 'uploads/3/13/ACL Book closure Notice for the purpose of 35th AGM.pdf', 13, 3, NULL, '30-12-2021 10:35:09am', '30-12-2021 10:42:02am', 1),
(32, 'Form_ISR-2', 'Confirmation of Signature of securities holder by the Banker', 'uploads/5/1/Form_ISR-2.pdf', 1, 5, NULL, '30-12-2021 12:33:59pm', '30-12-2021 12:33:59pm', 1),
(33, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED JUNE 2013', 'QUARTER ENDED JUNE 2013', 'uploads/1/2/30.06.2013.pdf', 2, 1, 4, '31-12-2021 09:02:35am', '31-12-2021 09:05:29am', 1),
(34, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED SEPTEMBER 2013', 'QUARTER ENDED SEPTEMBER 2013', 'uploads/1/2/30.09.2013.pdf', 2, 1, 4, '31-12-2021 09:03:21am', '31-12-2021 09:03:21am', 1),
(35, 'UN-AUDITED FINANCIAL RESULTS FOR  QUARTER ENDED DECEMBER 2013', 'QUARTER ENDED DECEMBER 2013', 'uploads/1/2/31.12.2013.pdf', 2, 1, 4, '31-12-2021 09:07:21am', '31-12-2021 09:07:21am', 1),
(36, 'AUDITED FINANCIAL RESULTS FOR  QUARTER AND YEAR ENDED MARCH 2014', 'QUARTER AND YEAR ENDED MARCH 2014', 'uploads/1/2/31.03.2014.pdf', 2, 1, 4, '31-12-2021 09:08:33am', '31-12-2021 09:08:33am', 1),
(37, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED JUNE 2014', 'QUARTER ENDED JUNE 2014', 'uploads/1/2/30.06.2014.pdf', 2, 1, 5, '31-12-2021 09:11:15am', '31-12-2021 09:11:15am', 1),
(38, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED SEPTEMBER 2014', 'QUARTER ENDED SEPTEMBER 2014', 'uploads/1/2/30.09.2014.pdf', 2, 1, 5, '31-12-2021 09:12:11am', '31-12-2021 09:12:11am', 1),
(39, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED DECEMBER 2014', 'QUARTER ENDED DECEMBER 2014', 'uploads/1/2/31.12.2014.pdf', 2, 1, 5, '31-12-2021 09:13:09am', '31-12-2021 09:13:09am', 1),
(40, 'AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED MARCH 2015', 'QUARTER AND YEAR ENDED MARCH 2015', 'uploads/1/2/31.03.2015.pdf', 2, 1, 5, '31-12-2021 09:13:55am', '31-12-2021 09:13:55am', 1),
(41, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED JUNE 2020', 'RESULTS FOR THE QUARTER ENDED JUNE 2020', 'uploads/1/2/30.06.2020.pdf', 2, 1, 11, '31-12-2021 09:35:00am', '31-12-2021 09:35:00am', 0),
(42, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED SEPTEMBER 2020', 'RESULTS FOR THE QUARTER ENDED SEPTEMBER 2020', 'uploads/1/2/30.09.2020.pdf', 2, 1, 11, '31-12-2021 09:35:42am', '31-12-2021 09:35:42am', 0),
(43, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED DECEMBER 2020', 'RESULTS FOR THE QUARTER ENDED DECEMBER 2020', 'uploads/1/2/31.12.2020.pdf', 2, 1, 11, '31-12-2021 09:36:26am', '31-12-2021 09:36:26am', 0),
(44, 'AUDITED FINANCIAL RESULTS FOR THE QUARTER AND YEAR ENDED MARCH 2021', 'QUARTER AND YEAR ENDED MARCH 2021', 'uploads/1/2/31.03.2021.pdf', 2, 1, 11, '31-12-2021 09:37:34am', '31-12-2021 09:37:34am', 0),
(45, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED JUNE 2021', 'RESULTS FOR THE QUARTER ENDED JUNE 2021', 'uploads/1/2/UFR - 30-06-2021.PDF', 2, 1, 12, '31-12-2021 09:38:28am', '31-12-2021 09:38:28am', 0),
(46, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED SEPTEMBER 2021', 'RESULTS FOR THE QUARTER ENDED SEPTEMBER 2021', 'uploads/1/2/UFR - 30-09-2021.PDF', 2, 1, 12, '31-12-2021 09:39:30am', '31-12-2021 09:39:30am', 0),
(47, 'SHAREHOLDING PATTERN AS ON JUNE 2020', 'SHAREHOLDING PATTERN AS ON JUNE 2020', 'uploads/1/3/Sharesholding Pattern 30-06-2020.pdf', 3, 1, 11, '31-12-2021 09:41:13am', '31-12-2021 09:41:13am', 0),
(48, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2020', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2020', 'uploads/1/3/Sharesholding Pattern 30-09-2020.pdf', 3, 1, 11, '31-12-2021 09:41:43am', '31-12-2021 09:41:43am', 0),
(49, 'SHAREHOLDING PATTERN AS ON DECEMBER 2020', 'SHAREHOLDING PATTERN AS ON DECEMBER 2020', 'uploads/1/3/Shareholding Pattern - 31-12-2020.pdf', 3, 1, 11, '31-12-2021 09:42:10am', '31-12-2021 09:42:10am', 0),
(50, 'SHAREHOLDING PATTERN AS ON MARCH 2021', 'SHAREHOLDING PATTERN AS ON MARCH 2021', 'uploads/1/3/Sharesholding Pattern 31-03-2021.pdf', 3, 1, 11, '31-12-2021 09:42:36am', '31-12-2021 09:42:36am', 0),
(51, 'SHAREHOLDING PATTERN AS ON JUNE 2021', 'SHAREHOLDING PATTERN AS ON JUNE 2021', 'uploads/1/3/Shareholding Pattern 30-06-2021.pdf', 3, 1, 12, '31-12-2021 09:43:06am', '31-12-2021 09:43:06am', 0),
(52, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2021', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2021', 'uploads/1/3/Shareholding Pattern - 30-09-2021.pdf', 3, 1, 12, '31-12-2021 09:43:44am', '31-12-2021 09:43:44am', 0),
(53, 'Nomination and Remuneration Policy', 'Policy', 'uploads/4/1/NRC_POLICY_ACL_Updated_12.11.2021 (1).pdf', 1, 4, NULL, '05-01-2022 09:52:02am', '15-02-2022 11:37:45am', 1),
(54, 'Code Practices Procedures Fair Disclosure UPSI Effect 1st April 2019', 'Policy', 'uploads/4/1/Code Practices_Procedures Fair Disclosure_UPSI_Effect_1st April 2019.pdf', 1, 4, NULL, '05-01-2022 09:53:26am', '05-01-2022 09:56:06am', 1),
(55, 'Whistle Blower Policy', 'Policy', 'uploads/4/1/ACL_Whistle_Blower_Policy.pdf', 1, 4, NULL, '05-01-2022 09:54:40am', '05-01-2022 09:54:40am', 1),
(56, 'Stake Holders relationship Commitee', 'Policy', 'uploads/4/1/ACL_Stake_Holders_relationship_Commitee.pdf', 1, 4, NULL, '05-01-2022 09:55:49am', '05-01-2022 09:55:49am', 1),
(57, 'Risk Management Policy', 'Policy', 'uploads/4/1/ACL_Risk Management Policy.pdf', 1, 4, NULL, '05-01-2022 09:57:23am', '05-01-2022 09:57:23am', 0),
(58, 'Related party transaction', 'Policy', 'uploads/4/1/ACL_Related_party_transaction.pdf', 1, 4, NULL, '05-01-2022 09:58:12am', '05-01-2022 09:58:12am', 1),
(59, 'Prevention of insider trading Policy', 'Policy', 'uploads/4/1/ACL_Prevention_of_insider_trading_Policy.pdf', 1, 4, NULL, '05-01-2022 09:59:09am', '05-01-2022 09:59:09am', 1),
(60, 'Policy on Preservation of Documents', 'Policy', 'uploads/4/1/ACL_Policy_on_Preservation_of_Documents.pdf', 1, 4, NULL, '05-01-2022 10:01:41am', '05-01-2022 10:01:41am', 1),
(61, 'Policy on Determination of Materiality of Events or Information', 'Policy', 'uploads/4/1/ACL_Policy_on_Determination of Materiality of Events or Information.pdf', 1, 4, NULL, '05-01-2022 10:06:07am', '05-01-2022 10:06:07am', 1),
(62, 'Fair Disclosure Policy', 'Policy', 'uploads/4/1/ACL_Fair_Disclosure_Policy.pdf', 1, 4, NULL, '05-01-2022 10:06:43am', '05-01-2022 10:06:43am', 1),
(63, 'Contact details of KMP determining materiality of event or information', 'Policy', 'uploads/4/1/ACL_Contact_details_of_KMP_determining_materiality_of_event_or_information.pdf', 1, 4, NULL, '05-01-2022 10:07:30am', '05-01-2022 10:07:30am', 1),
(64, 'Archival Policy', 'Policy', 'uploads/4/1/ACL_Archival_Policy.pdf', 1, 4, NULL, '05-01-2022 10:07:57am', '05-01-2022 10:07:57am', 1),
(65, 'Board Meeting Quarter ended June, 2015', '1st Quarter', 'uploads/3/12/Board Meeting Quarter ended June, 2015.pdf', 12, 3, 6, '05-01-2022 10:16:50am', '05-01-2022 10:16:50am', 1),
(66, 'Board Meeting Quarter ended September 2015', '2nd Quarter', 'uploads/3/12/Board Meeting Quarter ended September 2015.pdf', 12, 3, 6, '05-01-2022 10:17:59am', '05-01-2022 10:17:59am', 1),
(67, 'Board Meeting Quarter ended December, 2015', '3rd Quarter', 'uploads/3/12/Board Meeting Quarter ended December, 2015.pdf', 12, 3, 6, '05-01-2022 10:19:09am', '05-01-2022 10:19:09am', 1),
(68, 'Board Meeting Quarter ended March 2016', '4th Quarter', 'uploads/3/12/Board Meeting Quarter ended March 2016.pdf', 12, 3, 6, '05-01-2022 10:21:16am', '05-01-2022 10:21:16am', 1),
(69, 'Board Meeting Quarter ended June, 2016', '1st Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended June, 2016.PDF', 12, 3, 7, '05-01-2022 10:22:13am', '05-01-2022 10:22:13am', 1),
(70, 'Board Meeting Quarter ended September, 2016', '2nd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended September, 2016.pdf', 12, 3, 7, '05-01-2022 10:24:07am', '05-01-2022 10:24:07am', 1),
(71, 'Board Meeting Quarter ended December, 2016', '3rd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended December, 2016.pdf', 12, 3, 7, '05-01-2022 10:24:52am', '05-01-2022 10:24:52am', 1),
(72, 'Board Meeting Quarter ended March, 2017', '4th Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended March, 2017.PDF', 12, 3, 7, '05-01-2022 10:25:19am', '05-01-2022 10:25:19am', 1),
(73, 'Board Meeting Quarter ended June, 2017', '1st Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended June, 2017.PDF', 12, 3, 8, '05-01-2022 10:26:19am', '05-01-2022 10:26:19am', 1),
(74, 'Board Meeting Quarter ended September, 2017', '2nd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended September, 2017.PDF', 12, 3, 8, '05-01-2022 10:26:45am', '05-01-2022 10:26:45am', 1),
(75, 'Board Meeting Quarter ended December, 2017', '3rd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended December, 2017.PDF', 12, 3, 8, '05-01-2022 10:27:15am', '05-01-2022 10:27:15am', 1),
(76, 'Board Meeting Quarter ended March, 2018', '4th Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended March, 2018.PDF', 12, 3, 8, '05-01-2022 10:28:21am', '05-01-2022 10:28:21am', 1),
(77, 'Board Meeting Quarter ended June, 2018', '1st Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended June, 2018.pdf', 12, 3, 9, '05-01-2022 10:30:45am', '05-01-2022 10:30:45am', 1),
(78, 'Board Meeting Quarter ended September, 2018', '2nd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended September, 2018.pdf', 12, 3, 9, '05-01-2022 10:31:46am', '05-01-2022 10:31:46am', 1),
(79, 'Board Meeting Quarter ended December, 2018', '3rd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended December, 2018.pdf', 12, 3, 9, '05-01-2022 10:32:12am', '05-01-2022 10:32:12am', 1),
(80, 'Board Meeting Quarter ended March, 2019', '4th Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended March, 2019.pdf', 12, 3, 9, '05-01-2022 10:32:55am', '05-01-2022 10:32:55am', 1),
(81, 'Board Meeting Quarter ended June, 2019', '1st Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended June, 2019.pdf', 12, 3, 10, '05-01-2022 10:34:24am', '05-01-2022 10:34:24am', 1),
(82, 'Board Meeting Quarter ended September, 2019', '2nd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended September, 2019.pdf', 12, 3, 10, '05-01-2022 10:35:03am', '05-01-2022 10:35:03am', 1),
(83, 'Board Meeting Quarter ended December, 2019', '3rd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended December, 2019.pdf', 12, 3, 10, '05-01-2022 10:35:43am', '05-01-2022 10:35:43am', 1),
(84, 'Board Meeting Quarter ended June, 2020', '1st Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended June, 2020.pdf', 12, 3, 11, '05-01-2022 10:36:23am', '05-01-2022 10:36:23am', 1),
(85, 'Board Meeting Quarter ended September, 2020', '2nd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended September, 2020.pdf', 12, 3, 11, '05-01-2022 10:36:51am', '05-01-2022 10:36:51am', 1),
(86, 'Board Meeting Quarter ended December, 2020', '3rd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended December, 2020.pdf', 12, 3, 11, '05-01-2022 10:37:18am', '05-01-2022 10:37:18am', 1),
(87, 'Board Meeting Quarter ended March, 2021', '4th Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended March, 2021.pdf', 12, 3, 11, '05-01-2022 10:37:44am', '05-01-2022 10:37:44am', 1),
(88, 'Board Meeting Quarter ended June, 2021', '1st Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended June, 2021.pdf', 12, 3, 12, '05-01-2022 10:38:21am', '05-01-2022 10:38:21am', 1),
(89, 'Board Meeting Quarter ended September, 2021', '2nd Quarter', 'uploads/3/12/ACL Board Meeting Quarter ended September, 2021.pdf', 12, 3, 12, '05-01-2022 10:39:25am', '05-01-2022 10:39:25am', 1),
(90, 'Board Meeting Quarter ended December, 2021', '3rd Quarter', 'uploads/3/12/ACL_Intimation of Board Meeting 14-1-2021.PDF', 12, 3, 12, '06-01-2022 01:50:40pm', '06-01-2022 01:50:40pm', 1),
(91, 'Scrutinizers Report', 'Scrutinizers Report', 'uploads/1/5/Scrutinizer_s_Report_ACL.pdf', 5, 1, 11, '10-01-2022 11:04:36am', '10-01-2022 11:04:36am', 1),
(92, 'Annual Return 2019-20', 'Annual Return 2019-20 MGT -7 ', 'uploads/1/1/ACL_Annual_Return_19-20.pdf', 1, 1, 10, '11-01-2022 07:05:58am', '11-01-2022 07:05:58am', 1),
(93, 'Annual Return 2020-21', 'Annual Return 2020-21 MGT-7', 'uploads/1/1/ACL_Annual_Return_20-21.pdf', 1, 1, 11, '11-01-2022 07:07:01am', '11-01-2022 07:07:01am', 1),
(94, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED DECEMBER 2021', 'RESULTS FOR THE QUARTER ENDED DECEMBER 2021', 'uploads/1/2/UFR - 31-12-2021.pdf', 2, 1, 12, '14-01-2022 12:09:22pm', '14-01-2022 12:09:22pm', 0),
(95, 'SHAREHOLDING PATTERN AS ON DECEMBER 2021', 'SHAREHOLDING PATTERN AS ON DECEMBER 2021', 'uploads/1/3/Shareholding Pattern 31122021.pdf', 3, 1, 12, '18-01-2022 08:00:25am', '18-01-2022 08:00:25am', 0),
(96, 'Form ISR-4', 'Request for issue of Duplicate Certificate and other Service Requests', 'uploads/5/1/Form ISR-4.pdf', 1, 5, NULL, '15-02-2022 11:07:03am', '15-02-2022 11:07:03am', 1),
(97, 'UNCLAIMED SHARES TRANSFER TO IEPF (2022)', 'UNCLAIMED SHARES TRANSFER TO IEPF - LOT - 4', 'uploads/1/14/ACL Form IEPF-4 2022.pdf', 14, 1, 0, '23-02-2022 09:21:04am', '24-02-2022 12:07:00pm', 1),
(98, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED JUNE 2015', 'QUARTER ENDED JUNE 2015', 'uploads/1/2/30.06.2015.pdf', 2, 1, 6, '05-03-2022 10:26:05am', '05-03-2022 10:26:05am', 1),
(99, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED SEPTEMBER 2015', 'QUARTER ENDED SEPTEMBER 2015', 'uploads/1/2/30.09.2015.pdf', 2, 1, 6, '05-03-2022 10:27:31am', '05-03-2022 10:27:31am', 1),
(100, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED DECEMBER 2015', 'QUARTER ENDED DECEMBER 2015', 'uploads/1/2/31.12.2015.pdf', 2, 1, 6, '05-03-2022 10:28:06am', '05-03-2022 10:28:06am', 1),
(101, 'AUDITED FINANCIAL RESULTS FOR QUARTER AND YEAR ENDED MARCH 2016', 'QUARTER AND YEAR ENDED MARCH 2016', 'uploads/1/2/31.03.2016.pdf', 2, 1, 6, '05-03-2022 10:28:47am', '05-03-2022 10:28:47am', 1),
(102, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED JUNE 2016', 'QUARTER ENDED JUNE 2016', 'uploads/1/2/30.06.2016.pdf', 2, 1, 7, '05-03-2022 10:29:52am', '05-03-2022 10:29:52am', 1),
(103, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED SEPTEMBER 2016', 'QUARTER ENDED SEPTEMBER 2016', 'uploads/1/2/30.09.2016.pdf', 2, 1, 7, '05-03-2022 10:30:26am', '05-03-2022 10:30:26am', 1),
(104, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED DECEMBER 2016', 'QUARTER ENDED DECEMBER 2016', 'uploads/1/2/31.12.2016.pdf', 2, 1, 7, '05-03-2022 10:31:03am', '05-03-2022 10:31:03am', 1),
(105, 'AUDITED FINANCIAL RESULTS FOR QUARTER AND YEAR ENDED MARCH 2017', 'QUARTER AND YEAR ENDED MARCH 2017', 'uploads/1/2/31.03.2017.pdf', 2, 1, 7, '05-03-2022 10:31:51am', '05-03-2022 10:31:51am', 1),
(106, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED JUNE 2017', 'QUARTER ENDED JUNE 2017', 'uploads/1/2/30.06.2017.pdf', 2, 1, 8, '05-03-2022 10:32:58am', '05-03-2022 10:32:58am', 1),
(107, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED SEPTEMBER 2017', 'QUARTER ENDED SEPTEMBER 2017', 'uploads/1/2/30.09.2017.pdf', 2, 1, 8, '05-03-2022 10:33:40am', '05-03-2022 10:33:40am', 1),
(108, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED DECEMBER 2017', 'QUARTER ENDED DECEMBER 2017', 'uploads/1/2/31.12.2017.pdf', 2, 1, 8, '05-03-2022 10:34:12am', '05-03-2022 10:34:12am', 1),
(109, 'AUDITED FINANCIAL RESULTS FOR QUARTER AND YEAR ENDED MARCH 2018', 'QUARTER AND YEAR ENDED MARCH 2018', 'uploads/1/2/31.03.2018.pdf', 2, 1, 8, '05-03-2022 10:35:10am', '05-03-2022 10:35:10am', 1),
(110, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED JUNE 2018', 'QUARTER ENDED JUNE 2018', 'uploads/1/2/30.06.2018.pdf', 2, 1, 9, '05-03-2022 10:36:04am', '05-03-2022 10:36:04am', 1),
(111, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED SEPTEMBER 2018', 'QUARTER ENDED SEPTEMBER 2018', 'uploads/1/2/30.09.2018.pdf', 2, 1, 9, '05-03-2022 10:36:36am', '05-03-2022 10:36:36am', 1),
(112, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED DECEMBER 2018', 'QUARTER ENDED DECEMBER 2018', 'uploads/1/2/31.12.2018.pdf', 2, 1, 9, '05-03-2022 10:37:07am', '05-03-2022 10:37:07am', 1),
(113, 'AUDITED FINANCIAL RESULTS FOR QUARTER AND YEAR ENDED MARCH 2019', 'QUARTER AND YEAR ENDED MARCH 2019', 'uploads/1/2/31.03.2019.pdf', 2, 1, 9, '05-03-2022 10:37:45am', '05-03-2022 10:37:45am', 1),
(114, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED JUNE 2019', 'QUARTER ENDED JUNE 2019', 'uploads/1/2/30.06.2019.pdf', 2, 1, 10, '05-03-2022 10:39:09am', '05-03-2022 10:39:09am', 1),
(115, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED SEPTEMBER 2019', 'QUARTER ENDED SEPTEMBER 2019', 'uploads/1/2/30.09.2019.pdf', 2, 1, 10, '05-03-2022 10:39:41am', '05-03-2022 10:39:41am', 1),
(116, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED DECEMBER 2019', 'QUARTER ENDED DECEMBER 2019', 'uploads/1/2/31.12.2019.pdf', 2, 1, 10, '05-03-2022 10:40:22am', '05-03-2022 10:40:22am', 1),
(117, 'AUDITED FINANCIAL RESULTS FOR QUARTER AND YEAR ENDED MARCH 2020', 'QUARTER AND YEAR ENDED MARCH 2020', 'uploads/1/2/31.03.2020.pdf', 2, 1, 10, '05-03-2022 10:41:14am', '05-03-2022 10:41:14am', 1),
(118, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED JUNE 2020', 'QUARTER ENDED JUNE 2020', 'uploads/1/2/30.06.2020.pdf', 2, 1, 11, '05-03-2022 10:42:17am', '05-03-2022 10:42:17am', 1),
(119, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED SEPTEMBER 2020', 'QUARTER ENDED SEPTEMBER 2020', 'uploads/1/2/30.09.2020.pdf', 2, 1, 11, '05-03-2022 10:42:51am', '05-03-2022 10:42:51am', 1),
(120, 'UN-AUDITED FINANCIAL RESULTS FOR QUARTER ENDED DECEMBER 2020', 'QUARTER ENDED DECEMBER 2020', 'uploads/1/2/31.12.2020.pdf', 2, 1, 11, '05-03-2022 10:43:24am', '05-03-2022 10:43:24am', 1),
(121, ' AUDITED FINANCIAL RESULTS FOR QUARTER AND YEAR ENDED MARCH 2021', 'QUARTER AND YEAR ENDED MARCH 2021', 'uploads/1/2/31.03.2021.pdf', 2, 1, 11, '05-03-2022 10:50:36am', '05-03-2022 10:50:36am', 1),
(122, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED JUNE 2021', 'QUARTER ENDED JUNE 2021', 'uploads/1/2/UFR - 30-06-2021.PDF', 2, 1, 12, '05-03-2022 10:52:14am', '05-03-2022 10:52:14am', 1),
(123, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED SEPTEMBER 2021', 'QUARTER ENDED SEPTEMBER 2021', 'uploads/1/2/UFR - 30-09-2021.PDF', 2, 1, 12, '05-03-2022 10:52:48am', '05-03-2022 10:57:33am', 1),
(124, 'UN-AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED DECEMBER 2021', 'QUARTER ENDED DECEMBER 2021', 'uploads/1/2/UFR - 31-12-2021.pdf', 2, 1, 12, '05-03-2022 10:55:54am', '05-03-2022 10:55:54am', 1),
(125, 'SHAREHOLDING PATTERN AS ON JUNE 2013', 'SHAREHOLDING PATTERN AS ON JUNE 2013', 'uploads/1/3/Sharesholding Pattern 30-06-2013.pdf', 3, 1, 4, '05-03-2022 11:44:54am', '05-03-2022 11:44:54am', 1),
(126, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2013', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2013', 'uploads/1/3/Sharesholding Pattern 30-09-2013.pdf', 3, 1, 4, '05-03-2022 11:45:34am', '05-03-2022 11:45:34am', 1),
(127, 'SHAREHOLDING PATTERN AS ON DECEMBER 2013', 'SHAREHOLDING PATTERN AS ON DECEMBER 2013', 'uploads/1/3/Sharesholding Pattern 31-12-2013.pdf', 3, 1, 4, '05-03-2022 11:46:07am', '05-03-2022 11:46:07am', 1),
(128, 'SHAREHOLDING PATTERN AS ON MARCH 2014', 'SHAREHOLDING PATTERN AS ON MARCH 2014', 'uploads/1/3/Sharesholding Pattern 31-03-2014.pdf', 3, 1, 4, '05-03-2022 11:46:37am', '05-03-2022 11:46:37am', 1),
(129, 'SHAREHOLDING PATTERN AS ON JUNE 2014', 'SHAREHOLDING PATTERN AS ON JUNE 2014', 'uploads/1/3/Sharesholding Pattern 30-06-2014.pdf', 3, 1, 5, '05-03-2022 11:47:23am', '05-03-2022 11:47:23am', 1),
(130, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2014', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2014', 'uploads/1/3/Sharesholding Pattern 30-09-2014.pdf', 3, 1, 5, '05-03-2022 11:47:49am', '05-03-2022 11:47:49am', 1),
(131, 'SHAREHOLDING PATTERN AS ON DECEMBER 2014', 'SHAREHOLDING PATTERN AS ON DECEMBER 2014', 'uploads/1/3/Sharesholding Pattern 31-12-2014.pdf', 3, 1, 5, '05-03-2022 11:49:06am', '05-03-2022 11:49:06am', 1),
(132, 'SHAREHOLDING PATTERN AS ON MARCH 2015', 'SHAREHOLDING PATTERN AS ON MARCH 2015', 'uploads/1/3/Sharesholding Pattern 31-03-2015.pdf', 3, 1, 5, '05-03-2022 11:49:44am', '05-03-2022 11:49:44am', 1),
(133, 'SHAREHOLDING PATTERN AS ON JUNE 2015', 'SHAREHOLDING PATTERN AS ON JUNE 2015', 'uploads/1/3/Sharesholding Pattern 30-06-2015.pdf', 3, 1, 6, '05-03-2022 12:03:08pm', '05-03-2022 12:03:08pm', 1),
(134, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2015', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2015', 'uploads/1/3/Sharesholding Pattern 30-09-2015.pdf', 3, 1, 6, '05-03-2022 12:03:35pm', '05-03-2022 12:03:35pm', 1),
(135, 'SHAREHOLDING PATTERN AS ON DECEMBER 2015', 'SHAREHOLDING PATTERN AS ON DECEMBER 2015', 'uploads/1/3/Sharesholding Pattern 31-12-2015.pdf', 3, 1, 6, '05-03-2022 12:04:05pm', '05-03-2022 12:04:05pm', 1),
(136, 'SHAREHOLDING PATTERN AS ON MARCH 2016', 'SHAREHOLDING PATTERN AS ON MARCH 2016', 'uploads/1/3/Sharesholding Pattern 31-03-2016.pdf', 3, 1, 6, '05-03-2022 12:04:29pm', '05-03-2022 12:04:29pm', 1),
(137, 'SHAREHOLDING PATTERN AS ON JUNE 2016', 'SHAREHOLDING PATTERN AS ON JUNE 2016', 'uploads/1/3/Sharesholding Pattern 30-06-2016.pdf', 3, 1, 7, '05-03-2022 12:05:44pm', '05-03-2022 12:05:44pm', 1),
(138, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2016', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2016', 'uploads/1/3/Sharesholding Pattern 30-09-2016.pdf', 3, 1, 7, '05-03-2022 12:06:06pm', '05-03-2022 12:06:06pm', 1),
(139, 'SHAREHOLDING PATTERN AS ON DECEMBER 2016', 'SHAREHOLDING PATTERN AS ON DECEMBER 2016', 'uploads/1/3/Sharesholding Pattern 31-12-2016.pdf', 3, 1, 7, '05-03-2022 12:06:32pm', '05-03-2022 12:06:32pm', 1),
(140, 'SHAREHOLDING PATTERN AS ON MARCH 2017', 'SHAREHOLDING PATTERN AS ON MARCH 2017', 'uploads/1/3/Sharesholding Pattern 31-03-2017.pdf', 3, 1, 7, '05-03-2022 12:07:03pm', '05-03-2022 12:07:03pm', 1),
(141, 'SHAREHOLDING PATTERN AS ON JUNE 2017', 'SHAREHOLDING PATTERN AS ON JUNE 2017', 'uploads/1/3/Sharesholding Pattern 30-06-2017.pdf', 3, 1, 8, '05-03-2022 12:07:36pm', '05-03-2022 12:07:36pm', 1),
(142, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2017', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2017', 'uploads/1/3/Sharesholding Pattern 30-09-2017.pdf', 3, 1, 8, '05-03-2022 12:08:08pm', '05-03-2022 12:08:08pm', 1),
(143, 'SHAREHOLDING PATTERN AS ON DECEMBER 2017', 'SHAREHOLDING PATTERN AS ON DECEMBER 2017', 'uploads/1/3/Sharesholding Pattern 31-12-2017.pdf', 3, 1, 8, '05-03-2022 12:09:37pm', '05-03-2022 12:09:37pm', 1),
(144, 'SHAREHOLDING PATTERN AS ON MARCH 2018', 'SHAREHOLDING PATTERN AS ON MARCH 2018', 'uploads/1/3/Sharesholding Pattern 31-03-2018.pdf', 3, 1, 8, '05-03-2022 12:09:59pm', '05-03-2022 12:09:59pm', 1),
(145, 'SHAREHOLDING PATTERN AS ON JUNE 2018', 'SHAREHOLDING PATTERN AS ON JUNE 2018', 'uploads/1/3/Sharesholding Pattern 30-06-2018.pdf', 3, 1, 9, '05-03-2022 12:10:23pm', '05-03-2022 12:10:23pm', 1),
(146, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2018', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2018', 'uploads/1/3/Sharesholding Pattern 30-09-2018.pdf', 3, 1, 9, '05-03-2022 12:10:45pm', '05-03-2022 12:10:45pm', 1),
(147, 'SHAREHOLDING PATTERN AS ON DECEMBER 2018', 'SHAREHOLDING PATTERN AS ON DECEMBER 2018', 'uploads/1/3/Sharesholding Pattern 31-12-2018.pdf', 3, 1, 9, '05-03-2022 12:11:10pm', '05-03-2022 12:11:10pm', 1),
(148, 'SHAREHOLDING PATTERN AS ON MARCH 2019', 'SHAREHOLDING PATTERN AS ON MARCH 2019', 'uploads/1/3/Sharesholding Pattern 31-03-2019.pdf', 3, 1, 9, '05-03-2022 12:11:36pm', '05-03-2022 12:11:36pm', 1),
(149, 'SHAREHOLDING PATTERN AS ON JUNE 2019', 'SHAREHOLDING PATTERN AS ON JUNE 2019', 'uploads/1/3/Sharesholding Pattern 30-06-2019.pdf', 3, 1, 10, '05-03-2022 12:12:00pm', '05-03-2022 12:12:00pm', 1),
(150, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2019', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2019', 'uploads/1/3/Sharesholding Pattern 30-09-2019.pdf', 3, 1, 10, '05-03-2022 12:12:24pm', '05-03-2022 12:12:24pm', 1),
(151, 'SHAREHOLDING PATTERN AS ON DECEMBER 2019', 'SHAREHOLDING PATTERN AS ON DECEMBER 2019', 'uploads/1/3/Sharesholding Pattern 31-12-2019.pdf', 3, 1, 10, '05-03-2022 12:12:49pm', '05-03-2022 12:12:49pm', 1),
(152, 'SHAREHOLDING PATTERN AS ON MARCH 2020', 'SHAREHOLDING PATTERN AS ON MARCH 2019', 'uploads/1/3/Sharesholding Pattern 31-03-2020.pdf', 3, 1, 10, '05-03-2022 12:13:32pm', '05-03-2022 12:13:32pm', 1),
(153, 'SHAREHOLDING PATTERN AS ON JUNE 2020', 'SHAREHOLDING PATTERN AS ON JUNE 2020', 'uploads/1/3/Sharesholding Pattern 30-06-2020.pdf', 3, 1, 11, '05-03-2022 12:14:10pm', '05-03-2022 12:15:51pm', 1),
(154, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2020', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2020', 'uploads/1/3/Sharesholding Pattern 30-09-2020.pdf', 3, 1, 11, '05-03-2022 12:15:31pm', '05-03-2022 12:15:31pm', 1),
(155, 'SHAREHOLDING PATTERN AS ON DECEMBER 2020', 'SHAREHOLDING PATTERN AS ON DECEMBER 2020', 'uploads/1/3/Shareholding Pattern - 31-12-2020.pdf', 3, 1, 11, '05-03-2022 12:16:23pm', '05-03-2022 12:16:23pm', 1),
(156, 'SHAREHOLDING PATTERN AS ON MARCH 2021', 'SHAREHOLDING PATTERN AS ON MARCH 2021', 'uploads/1/3/Sharesholding Pattern 31-03-2021.pdf', 3, 1, 11, '05-03-2022 12:16:47pm', '05-03-2022 12:16:47pm', 1),
(157, 'SHAREHOLDING PATTERN AS ON JUNE 2021', 'SHAREHOLDING PATTERN AS ON JUNE 2021', 'uploads/1/3/Shareholding Pattern 30-06-2021.pdf', 3, 1, 12, '05-03-2022 12:17:29pm', '05-03-2022 12:26:26pm', 1),
(158, 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2021', 'SHAREHOLDING PATTERN AS ON SEPTEMBER 2021', 'uploads/1/3/Shareholding Pattern - 30-09-2021.pdf', 3, 1, 12, '05-03-2022 12:18:13pm', '05-03-2022 12:26:47pm', 1),
(159, 'SHAREHOLDING PATTERN AS ON DECEMBER 2021', 'SHAREHOLDING PATTERN AS ON DECEMBER 2021', 'uploads/1/3/Shareholding Pattern 31122021.pdf', 3, 1, 12, '05-03-2022 12:19:05pm', '05-03-2022 12:19:05pm', 1),
(160, 'SHAREHOLDING PATTERN AS ON MARCH 2022', 'SHAREHOLDING PATTERN AS ON MARCH 2022', 'uploads/1/3/ASHIR_20220331_SHP.pdf', 3, 1, 12, '11-04-2022 09:48:47am', '11-04-2022 09:48:47am', 1),
(161, 'AUDITED FINANCIAL RESULTS FOR THE QUARTER ENDED MARCH 2022', 'QUARTER AND YEAR ENDED MARCH 2022', 'uploads/1/2/ACL_AUDITED FINANCIAL RESULTS.pdf', 2, 1, 12, '30-05-2022 11:55:56am', '30-05-2022 11:55:56am', 1),
(162, 'ANNUAL REPORT', '2021-22', 'uploads/1/1/ACL_AR_21-22 (1).pdf', 1, 1, 12, '01-06-2022 09:43:08am', '02-06-2022 11:07:15am', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_items`
--

CREATE TABLE `tbl_items` (
  `itemId` int(11) NOT NULL,
  `itemHeader` varchar(512) NOT NULL COMMENT 'Heading',
  `itemSub` varchar(1021) NOT NULL COMMENT 'sub heading',
  `itemDesc` text COMMENT 'content or description',
  `itemImage` varchar(80) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  `updatedBy` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_items`
--

INSERT INTO `tbl_items` (`itemId`, `itemHeader`, `itemSub`, `itemDesc`, `itemImage`, `isDeleted`, `createdBy`, `createdDtm`, `updatedDtm`, `updatedBy`) VALUES
(1, 'jquery.validation.js', 'Contribution towards jquery.validation.js', 'jquery.validation.js is the client side javascript validation library authored by Jörn Zaefferer hosted on github for us and we are trying to contribute to it. Working on localization now', 'validation.png', 0, 1, '2015-09-02 00:00:00', NULL, NULL),
(2, 'CodeIgniter User Management', 'Demo for user management system', 'This the demo of User Management System (Admin Panel) using CodeIgniter PHP MVC Framework and AdminLTE bootstrap theme. You can download the code from the repository or forked it to contribute. Usage and installation instructions are provided in ReadMe.MD', 'cias.png', 0, 1, '2015-09-02 00:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'System Administrator'),
(2, 'Manager'),
(3, 'Employee');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `password`, `name`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@ashirwadcapital.co.in', '$2y$10$SAvFim22ptA9gHVORtIaru1dn9rhgerJlJCPxRNA02MjQaJnkxawq', 'System Administrator', '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2017-06-19 09:22:53'),
(2, 'manager@bewithdhanu.in', '$2y$10$Gkl9ILEdGNoTIV9w/xpf3.mSKs0LB1jkvvPKK7K0PSYDsQY7GE9JK', 'Manager', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2017-06-19 09:22:29'),
(3, 'employee@bewithdhanu.in', '$2y$10$MB5NIu8i28XtMCnuExyFB.Ao1OXSteNpCiZSiaMSRPQx1F1WLRId2', 'Employee', '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 1, '2017-06-19 09:23:21');

-- --------------------------------------------------------

--
-- Table structure for table `team_data`
--

CREATE TABLE `team_data` (
  `team_id` int(11) NOT NULL,
  `team_director_name` varchar(200) NOT NULL,
  `team_director_designation` varchar(200) NOT NULL,
  `team_document_type` int(11) NOT NULL,
  `team_document_no` int(11) NOT NULL,
  `create_date` varchar(100) NOT NULL,
  `modify_date` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team_data`
--

INSERT INTO `team_data` (`team_id`, `team_director_name`, `team_director_designation`, `team_document_type`, `team_document_no`, `create_date`, `modify_date`, `status`) VALUES
(13, 'MR. SANJIV VISHWANATH RUNGTA ', 'INDEPENDENT DIRECTOR ', 6, 2, '29-12-2021 06:17:21am', '29-12-2021 06:25:02am', 1),
(14, 'MR. MADHUSUDAN LOHIA ', 'INDEPENDENT DIRECTOR ', 6, 2, '29-12-2021 06:18:04am', '29-12-2021 06:25:20am', 1),
(15, 'MR. RAKESH KUMAR GARODIA ', 'INDEPENDENT DIRECTOR ', 6, 2, '29-12-2021 06:18:49am', '29-12-2021 06:25:45am', 1),
(16, 'RHEA DINESH PODDAR', 'DIRECTOR', 6, 2, '29-12-2021 06:19:19am', '29-12-2021 06:19:19am', 1),
(17, 'MR. ARYAN RAJESH PODDAR ', 'DIRECTOR', 6, 2, '29-12-2021 06:26:37am', '29-12-2021 06:26:37am', 1),
(18, 'MRS. SHILPA DINESH PODDAR ', 'DIRECTOR', 6, 2, '29-12-2021 06:27:02am', '29-12-2021 06:27:02am', 1),
(19, 'MR. RAJESH RAMPRASAD PODDAR ', 'DIRECTOR', 6, 2, '29-12-2021 06:27:24am', '29-12-2021 06:27:24am', 1),
(20, 'MR. DINESH RAMPRASAD PODDAR ', 'CHAIRMAN AND MANAGING DIRECTOR ', 6, 2, '29-12-2021 06:27:44am', '29-12-2021 06:27:44am', 1),
(21, 'MR. SUNIL BHALCHANDRA BHIWANDKAR ', 'CHIEF FINANCIAL OFFICER ', 7, 2, '29-12-2021 06:33:40am', '29-12-2021 06:33:40am', 1),
(22, 'MS. BHOOMI ASHWIN THAKKAR ', 'COMPANY SECRETARY CUM COMPLIANCE OFFICER ', 7, 2, '29-12-2021 06:34:36am', '29-12-2021 06:34:36am', 1),
(23, 'MR. RAJESH RAMPRASAD PODDAR ', 'MEMBER - NON EXECUTIVE NON INDEPENDENT DIRECTOR ', 8, 2, '29-12-2021 06:45:48am', '29-12-2021 07:10:13am', 1),
(24, 'MR. MADHUSUDAN LOHIA', 'MEMBER - INDEPENDENT DIRECTOR ', 8, 2, '29-12-2021 06:46:13am', '29-12-2021 06:46:13am', 1),
(25, 'MR. SANJIV VISHWANATH RUNGTA ', 'CHAIRPERSON - INDEPENDENT DIRECTOR ', 8, 2, '29-12-2021 06:46:33am', '29-12-2021 07:09:36am', 1),
(26, 'MR. RAJESH RAMPRASAD PODDAR', 'MEMBER - NON EXECUTIVE NON INDEPENDENT DIRECTOR ', 10, 2, '29-12-2021 07:07:46am', '29-12-2021 07:07:46am', 1),
(27, 'MR. MADHUSUDAN LOHIA ', 'MEMBER - INDEPENDENT DIRECTOR', 10, 2, '29-12-2021 07:08:07am', '29-12-2021 07:08:07am', 1),
(28, 'MR. SANJIV VISHWANATH RUNGTA ', 'CHAIRPERSON - INDEPENDENT DIRECTOR ', 10, 2, '29-12-2021 07:08:25am', '29-12-2021 07:08:25am', 1),
(29, 'MR. DINESH RAMPRASAD PODDAR ', 'MEMBER - EXECUTIVE DIRECTOR (CHAIRMAN & MD) ', 9, 2, '29-12-2021 07:11:06am', '29-12-2021 07:11:06am', 1),
(30, 'MR. SANJIV VISHWANATH RUNGTA ', 'MEMBER - INDEPENDENT DIRECTOR ', 9, 2, '29-12-2021 07:11:30am', '29-12-2021 07:11:30am', 1),
(31, 'MR. MADHUSUDAN LOHIA', 'CHAIRPERSON - INDEPENDENT DIRECTOR ', 9, 2, '29-12-2021 07:13:13am', '29-12-2021 07:13:13am', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_data`
--
ALTER TABLE `contact_data`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `document_type_data`
--
ALTER TABLE `document_type_data`
  ADD PRIMARY KEY (`document_type_id`);

--
-- Indexes for table `document_upload_data`
--
ALTER TABLE `document_upload_data`
  ADD PRIMARY KEY (`document_upload_id`);

--
-- Indexes for table `tbl_items`
--
ALTER TABLE `tbl_items`
  ADD PRIMARY KEY (`itemId`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `team_data`
--
ALTER TABLE `team_data`
  ADD PRIMARY KEY (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_data`
--
ALTER TABLE `contact_data`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `document_type_data`
--
ALTER TABLE `document_type_data`
  MODIFY `document_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `document_upload_data`
--
ALTER TABLE `document_upload_data`
  MODIFY `document_upload_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `tbl_items`
--
ALTER TABLE `tbl_items`
  MODIFY `itemId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team_data`
--
ALTER TABLE `team_data`
  MODIFY `team_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

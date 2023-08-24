-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2023 at 02:49 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(8) UNSIGNED NOT NULL,
  `cust_first_name` varchar(32) NOT NULL,
  `cust_last_name` varchar(32) NOT NULL,
  `cust_dob` date NOT NULL,
  `cust_email` varchar(64) NOT NULL,
  `cust_phone_number` char(12) NOT NULL,
  `cust_delivery_address` varchar(256) NOT NULL,
  `cust_billing_address` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_first_name`, `cust_last_name`, `cust_dob`, `cust_email`, `cust_phone_number`, `cust_delivery_address`, `cust_billing_address`) VALUES
(1, 'Jane', 'Goodall', '1984-01-14', 'jgoodall@jane.mail.com', '+61424999888', '51 McLaughlin Road, West Amberley, Queensland, 4306', '51 McLaughlin Road, West Amberley, Queensland, 4306'),
(2, 'Tiffany', 'Pollard', '1990-01-01', 'hbic@hotmail.com', '+61745998844', '15 Bayview Road, Coolillie, South Australia, 5670', '15 Bayview Road, Coolillie, South Australia, 5670'),
(3, 'Nirmala', 'Salvatici', '1999-11-12', 'nsalvatici@gmail.com', '+61424999666', '88 Eurack Court, Boorowa, New South Wales 2586', '76 Boonah Qld, Cooeeimbardi, Queensland 4313'),
(4, 'Toribio', 'Dirix', '1995-10-10', 'tdirix@yahoo.com', '+61745470961', '26 Commercial Street, Carlsruhe,  Victoria 3442', '26 Commercial Street, Carlsruhe,  Victoria 3442'),
(5, 'Arin', 'Hogarth', '1988-10-09', 'ahorgarth@yahoo.com', '+61883716148', '98 Cecil Street, Cheltenham, New South Wales 2119', '98 Cecil Street, Cheltenham, New South Wales 2119'),
(6, 'Kayden', 'Marlow', '1972-03-27', 'kmarloww@yahoo.com', '+61887347731', '77 Flinstone Drive, Interlaken, Tasmania 7030', '98 Cecil Street, Interlaken, Tasmania 7030'),
(7, 'Hunter', 'Reyer', '1987-12-25', 'hreyer87@yahoo.com', '+61353585141', '68 Dalgarno Street, Rangari, New South Wales 2380', '68 Dalgarno Street, Rangari, New South Wales 2380'),
(8, 'Adelaide', 'Bergmann', '1968-11-06', 'abergmann@yahoo.com', '+61883613806', '19 Hodgson St, Swan Creek, Queensland 4370', '20 Brentwood Drive, Lakefield, Queensland 4871'),
(9, 'Tawnya', 'Ayers', '1986-09-08', 'tayers@yahoo.com', '+61261588925', '49 Garden Place, Richmond Plains, Victoria 3518', '49 Garden Place, Richmond Plains, Victoria 3518'),
(10, 'Thao', 'Vo', '1958-08-20', 'thaovo@gmail.com', '+61753030079', '30 Moruya Road, Farringdon, New South Wales  2622', '30 Moruya Road, Farringdon, New South Wales  2622');

-- --------------------------------------------------------

--
-- Table structure for table `cust_order`
--

CREATE TABLE `cust_order` (
  `cust_order_id` int(10) UNSIGNED NOT NULL,
  `cust_id` int(8) UNSIGNED NOT NULL,
  `cust_order_datetime` datetime NOT NULL DEFAULT current_timestamp(),
  `cust_order_delivered` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_order`
--

INSERT INTO `cust_order` (`cust_order_id`, `cust_id`, `cust_order_datetime`, `cust_order_delivered`) VALUES
(1, 1, '2022-11-02 16:01:23', NULL),
(2, 2, '2022-11-02 16:01:51', NULL),
(3, 3, '2022-11-04 13:30:33', NULL),
(4, 4, '2022-09-15 14:30:33', NULL),
(5, 5, '2022-11-01 14:30:33', NULL),
(6, 6, '2022-11-02 14:30:33', NULL),
(7, 7, '2022-11-01 14:30:33', NULL),
(8, 7, '2022-11-02 14:30:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cust_order_item`
--

CREATE TABLE `cust_order_item` (
  `cust_order_id` int(10) UNSIGNED NOT NULL,
  `prod_id` char(6) NOT NULL,
  `cust_order_item_quantity` int(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cust_order_item`
--

INSERT INTO `cust_order_item` (`cust_order_id`, `prod_id`, `cust_order_item_quantity`) VALUES
(1, 'SE0001', 2),
(1, 'SE0002', 3),
(2, 'SE0001', 4),
(2, 'SE0002', 6),
(3, 'AC0001', 2),
(3, 'CL0001', 3),
(3, 'LI0001', 4),
(4, 'LI0001', 2),
(4, 'LI0002', 3),
(4, 'MO0001', 3),
(4, 'PA0001', 5),
(5, 'AC0001', 1),
(5, 'CL0001', 2),
(5, 'PA0001', 6),
(6, 'AC0001', 1),
(6, 'PA0002', 2),
(6, 'SE0001', 3),
(6, 'SE0003', 1),
(7, 'AC0001', 1),
(7, 'CL0001', 1),
(7, 'LI0001', 1),
(7, 'LI0002', 1),
(7, 'PA0002', 1),
(7, 'SE0003', 1),
(8, 'MO0001', 2),
(8, 'PA0001', 3),
(8, 'PA0002', 3),
(8, 'SE0001', 3),
(8, 'SE0003', 4);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` char(5) NOT NULL,
  `department_name` varchar(32) NOT NULL,
  `building_floor` int(2) NOT NULL,
  `department_phone_number` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `building_floor`, `department_phone_number`) VALUES
('ACC04', 'Account department', 4, '0973886321'),
('DES03', 'Product design department ', 3, '0931245667'),
('MAR01', 'Marketing department', 1, '0911456963'),
('RES05', 'Research department', 5, '0966483427'),
('TES02', 'Product testing department ', 2, '0922393675');

-- --------------------------------------------------------

--
-- Table structure for table `position`
--

CREATE TABLE `position` (
  `position_id` char(5) NOT NULL,
  `position_name` varchar(30) NOT NULL,
  `employment_type` varchar(9) NOT NULL,
  `hourly_salary` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `position`
--

INSERT INTO `position` (`position_id`, `position_name`, `employment_type`, `hourly_salary`) VALUES
('AA004', 'Accounts assistant', 'Full time', '38.45'),
('AM004', 'Account Manager', 'Full time', '60.48'),
('AT004', 'Account Team member', 'Part time', '30.55'),
('DA003', 'Design Assistant', 'Full time', '36.38'),
('DM003', 'Design Manager', 'Full time', '56.74'),
('DT003', 'Design Team member ', 'Part time', '30.00'),
('MA001', 'Marketing Assistance ', 'Full time', '37.45'),
('MM001', 'Marketing Manager', 'Full time', '54.38'),
('MT001', 'Marketing Team member', 'Part time', '30.21'),
('RA005', 'Research Assistant', 'Full time', '38.45'),
('RM005', 'Research Manager', 'Full time', '58.48'),
('RT005', 'Research Team member', 'Part time', '31.55'),
('TA002', 'Testing Assistance', 'Full time', '39.45'),
('TM002', 'Testing Manager', 'Full time', '60.48'),
('TT002', 'Testing Team member', 'Part time', '32.45');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `prod_id` char(6) NOT NULL,
  `prod_name` varchar(64) NOT NULL,
  `prod_type` varchar(32) NOT NULL,
  `prod_unit` char(16) NOT NULL,
  `prod_description` varchar(128) DEFAULT NULL,
  `prod_selling_unit_price` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`prod_id`, `prod_name`, `prod_type`, `prod_unit`, `prod_description`, `prod_selling_unit_price`) VALUES
('AC0001', '2% BHA Liquid Exfoliant', 'Acid', 'Bottle', 'Paula\'s Choice Skin Perfecting 2% BHA Liquid Exfoliant', '10.00'),
('CL0001', 'Oat Cleansing Balm 150ml', 'Cleanser', 'Tube', 'The INKEY List Oat Cleansing Balm 150ml', '8.79'),
('LI0001', 'Lanolips Strawberry Balm', 'Lip balm', 'Stick', 'LANOLIPS\r\nJellybalm Strawberry 10 g - Soft and Juicy', '14.99'),
('LI0002', 'BONDI SANDS SPF 50+ Lip Balm Coconut 10 g', 'Lip balm', 'Stick', 'Bondi Sands Coconut-flavoured lip balm restores dehydrated lips with Vitamin E and provides SPF50+ protection from harsh UVA and', '6.99'),
('MO0001', 'Squalane and Probiotic Gel Moisturizer', 'Mosturizer', 'Bottle', 'BIOSSANCE Squalane + Probiotic Gel Moisturizer - anti acne and inflammation', '44.00'),
('PA0001', 'COSRX Acne Patch', 'Patch', 'Sheet', 'COSRX Acne Pimple Master Patch - A.D.F. Hydrocolloid Dressing', '3.80'),
('PA0002', 'Skin Control Pimple Pack', 'Patch', 'Sheet', 'Skin Control Pimple Patch PM Nightime Pack, 24 count', '5.04'),
('SE0001', 'The Ordinary Niacinamide', 'Serum', 'Bottle', 'The Ordinary. Niacinamide 10% + Zinc 1%', '10.60'),
('SE0002', 'Skinceuticals Vitamin C', 'Serum', 'Bottle', 'C E Ferulic Vitamin C Serum', '233.15'),
('SE0003', 'B5 Hyaluronic Acid Serum 30ml', 'Serum', 'Bottle', 'La Roche-Posay Hyalu B5 Hyaluronic Acid Serum 30ml', '34.76');

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `staff_id` char(5) NOT NULL,
  `salary_multiplier` decimal(4,2) NOT NULL,
  `yearly_bonus` decimal(7,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `salary`
--

INSERT INTO `salary` (`staff_id`, `salary_multiplier`, `yearly_bonus`) VALUES
('AMB01', '2.00', '150.00'),
('AMK12', '2.00', '220.00'),
('ASB15', '1.00', '112.00'),
('BES05', '2.00', '180.00'),
('CEM03', '2.00', '200.00'),
('DRV02', '1.00', '110.00'),
('GET08', '2.00', '166.00'),
('ISM07', '2.00', '230.00'),
('KAB10', '1.00', '100.00'),
('KAN14', '2.00', '250.00'),
('LIE11', '2.00', '290.00'),
('MAC06', '1.00', '160.00'),
('OSW09', '2.00', '275.00'),
('SEH04', '2.00', '300.00'),
('WIH13', '1.00', '115.00');

-- --------------------------------------------------------

--
-- Table structure for table `shift_allocation`
--

CREATE TABLE `shift_allocation` (
  `staff_position_id` int(2) NOT NULL,
  `start_time_date` datetime NOT NULL,
  `duration` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shift_allocation`
--

INSERT INTO `shift_allocation` (`staff_position_id`, `start_time_date`, `duration`) VALUES
(1, '2022-11-06 08:30:00', 7),
(2, '2022-11-06 08:00:00', 7),
(3, '2022-11-06 09:00:00', 6),
(4, '2022-11-06 08:30:00', 7),
(5, '2022-11-06 08:00:00', 7),
(6, '2022-11-06 09:00:00', 6),
(7, '2022-11-06 08:30:00', 7),
(8, '2022-11-06 08:00:00', 7),
(9, '2022-11-06 09:00:00', 6),
(10, '2022-11-06 08:30:00', 7),
(11, '2022-11-06 08:00:00', 7),
(12, '2022-11-06 09:00:00', 6),
(13, '2022-11-06 08:30:00', 7),
(14, '2022-11-06 08:00:00', 7),
(15, '2022-11-06 09:00:00', 6);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` char(5) NOT NULL,
  `staff_given_name` varchar(32) NOT NULL,
  `staff_last_name` varchar(32) NOT NULL,
  `staff_address` varchar(256) NOT NULL,
  `staff_email` varchar(64) NOT NULL,
  `staff_dob` date NOT NULL,
  `staff_phone_number` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `staff_given_name`, `staff_last_name`, `staff_address`, `staff_email`, `staff_dob`, `staff_phone_number`) VALUES
('AMB01', 'Amy', 'Bell', '53 Mandible Street MOUNT EAST VIC 4825', 'Amy686@gmail.com', '1994-11-17', '0445083709'),
('AMK12', 'Amelia', 'Kleeberg', '31 Lapko Road BORDEN VIC 6338', 'Amelia443@gmail.com', '1992-11-19', '0490890229'),
('ASB15', 'Ashton', 'Bromley', '11 Girvan Grove EAGLEHAWK VIC 3556', 'AshtonGogo123@gmail.com', '1996-05-18', '0453170966'),
('BES05', 'Benjamin', ' Streeten', '93 Barker Street MARRACOONDA VIC 6317\r\n', 'BenjaminStreeten@rhyta.com', '1964-09-18', '0490764111'),
('CEM03', 'Cilka', 'Emlyn', '27 Feather Street Currimundi VIC 3330', 'Cilkaki330@workemail.com', '1989-11-13', '0445783823'),
('DRV02', 'Draven', 'Vinay', '97 Souttar Terrace Connolly VIC 3349', 'Dravenvivi123@gmail.com', '1994-10-18', '0432165344'),
('GET08', 'Gemma', 'Trott', '7 Ocean Street DARLING HARBOUR VIC 2000', 'Gemma773@email.com', '1999-08-14', '0489010308'),
('ISM07', 'Isla', 'Morwood', '7 Martin place Clayton VIC 3841 ', 'Isla9399@gmail.com', '1972-06-12', '0453760993'),
('KAB10', 'Katie', 'Begg', '83 Shirley Street CEDAR CREEK VIC 4207', 'Katiebegbeg388@gmail.com', '1996-05-09', '0431138762'),
('KAN14', 'Kayla', 'Nathan', '86 Davis Street FERNY GROVE VIC 4055', 'KaylaNathan@dayrep.com', '2002-03-20', '0436013446'),
('LIE11', 'Liam', 'Elijah', '8 newstreet Monash VIC 21232 ', 'Liam742@workeemail.com', '1989-08-23', '0412398747'),
('MAC06', 'Mariam', 'Clements', '59 Rockhampton ULOGIE VIC 3123', 'MariamClements@jourrapide.com', '1975-11-13', '0449292129'),
('OSW09', 'Oscar', 'Weatherburn', '3 Cherokee Road WALMER VIC 3463', 'OscarWeatherburn@rhyta.com', '2000-08-24', '0453891614'),
('SEH04', 'Sebastian', 'Hawkins', '18 Cecil Street CARLINGFORD NORTH VIC 3118', 'KaylaBand@rhyta.com', '1975-07-16', '0488174980'),
('WIH13', 'William', 'Holdsworth', '66 Bathurst Road TURONDALE VIC 2795', 'WilliamHoldsworth@teleworm.us', '1998-11-19', '0440781352');

-- --------------------------------------------------------

--
-- Table structure for table `staff_position`
--

CREATE TABLE `staff_position` (
  `staff_position_id` int(2) NOT NULL,
  `staff_id` char(5) NOT NULL,
  `position_id` char(5) NOT NULL,
  `department_id` char(5) NOT NULL,
  `manager_id` char(5) DEFAULT NULL,
  `start_date` date DEFAULT current_timestamp(),
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `staff_position`
--

INSERT INTO `staff_position` (`staff_position_id`, `staff_id`, `position_id`, `department_id`, `manager_id`, `start_date`, `end_date`) VALUES
(1, 'AMB01', 'AA004', 'ACC04', 'AMK12', '2020-01-21', '2025-11-20'),
(2, 'AMK12', 'AM004', 'ACC04', 'AMK12', '2018-11-05', '2027-09-22'),
(3, 'ASB15', 'AT004', 'ACC04', 'AMK12', '2020-10-22', '2023-07-19'),
(4, 'BES05', 'DA003', 'DES03', 'CEM03', '2020-11-16', '2025-09-27'),
(5, 'CEM03', 'DM003', 'DES03', 'CEM03', '2018-07-23', '2027-10-22'),
(6, 'DRV02', 'DT003', 'DES03', 'CEM03', '2020-11-18', '2027-10-15'),
(7, 'GET08', 'MA001', 'MAR01', 'ISM07', '2021-11-17', '2025-10-25'),
(8, 'ISM07', 'MM001', 'MAR01', 'ISM07', '2018-09-15', '2023-11-23'),
(9, 'KAB10', 'MT001', 'MAR01', 'ISM07', '2021-09-09', '2023-11-02'),
(10, 'KAN14', 'RA005', 'RES05', 'LIE11', '2018-07-23', '2026-11-20'),
(11, 'LIE11', 'RM005', 'RES05', 'LIE11', '2018-09-08', '2026-09-18'),
(12, 'MAC06', 'RT005', 'RES05', 'LIE11', '2019-11-14', '2025-11-14'),
(13, 'OSW09', 'TA002', 'TES02', 'SEH04', '2019-11-15', '2024-11-15'),
(14, 'SEH04', 'TM002', 'TES02', 'SEH04', '2019-11-16', '2027-11-16'),
(15, 'WIH13', 'TT002', 'TES02', 'SEH04', '2020-11-19', '2025-11-19'),
(16, 'ASB15', 'DT003', 'DES03', 'CEM03', '2012-09-15', '2020-10-22'),
(17, 'DRV02', 'AT004', 'ACC04', 'AMK12', '2013-09-15', '2021-11-17'),
(18, 'DRV02', 'MT001', 'MAR01', 'ISM07', '2012-05-17', '2013-05-17'),
(19, 'KAB10', 'RT005', 'RES05', 'SEH04', '2013-03-08', '2021-09-09'),
(20, 'MAC06', 'MT001', 'MAR01', 'ISM07', '2013-06-20', '2019-11-14'),
(21, 'MAC06', 'TT002', 'TES02', 'SEH04', '2012-07-23', '2013-06-20'),
(22, 'ISM07', 'DM003', 'DES03', 'CEM03', '2015-09-11', '2018-09-15'),
(23, 'CEM03', 'MM001', 'MAR01', 'ISM07', '2015-07-23', '2018-07-23'),
(24, 'SEH04', 'RM005', 'RES05', 'LIE11', '2018-09-08', '2019-11-16'),
(25, 'LIE11', 'TM002', 'TES02', 'SEH04', '2017-09-16', '2018-09-08');

-- --------------------------------------------------------

--
-- Table structure for table `stock_keeping`
--

CREATE TABLE `stock_keeping` (
  `prod_id` char(6) NOT NULL,
  `quantity` int(8) UNSIGNED NOT NULL,
  `latest_update` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_keeping`
--

INSERT INTO `stock_keeping` (`prod_id`, `quantity`, `latest_update`) VALUES
('AC0001', 1000, '2022-11-04 15:12:23'),
('CL0001', 2000, '2022-11-04 15:12:23'),
('LI0001', 3000, '2022-11-04 15:12:23'),
('LI0002', 100, '2022-11-04 15:12:23'),
('MO0001', 55, '2022-11-04 15:12:23'),
('PA0001', 40, '2022-11-04 15:12:23'),
('PA0002', 101, '2022-11-04 15:12:23'),
('SE0001', 1000, '2022-11-02 16:07:39'),
('SE0002', 2000, '2022-11-02 16:08:15'),
('SE0003', 11, '2022-11-04 15:12:23');

-- --------------------------------------------------------

--
-- Table structure for table `stock_order`
--

CREATE TABLE `stock_order` (
  `stock_order_id` int(10) UNSIGNED NOT NULL,
  `stock_order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `supp_id` int(5) NOT NULL,
  `stock_order_delivered` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_order`
--

INSERT INTO `stock_order` (`stock_order_id`, `stock_order_date`, `supp_id`, `stock_order_delivered`) VALUES
(1, '2022-11-02 15:56:55', 1, NULL),
(2, '2022-11-02 15:57:41', 1, NULL),
(3, '2022-11-04 14:56:57', 4, NULL),
(4, '2022-11-04 14:56:57', 5, NULL),
(5, '2022-11-04 14:56:57', 6, NULL),
(6, '2022-11-04 14:56:57', 7, NULL),
(7, '2022-11-04 14:56:57', 8, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `stock_order_item`
--

CREATE TABLE `stock_order_item` (
  `stock_order_id` int(10) UNSIGNED NOT NULL,
  `prod_id` char(6) NOT NULL,
  `stock_order_item_quantity` int(6) UNSIGNED NOT NULL,
  `stock_order_item_unit_price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_order_item`
--

INSERT INTO `stock_order_item` (`stock_order_id`, `prod_id`, `stock_order_item_quantity`, `stock_order_item_unit_price`) VALUES
(1, 'SE0002', 2000, '250.50'),
(2, 'SE0001', 2500, '8.15'),
(3, 'AC0001', 1000, '8.05'),
(3, 'CL0001', 2000, '7.33'),
(3, 'LI0001', 2500, '10.33'),
(4, 'LI0001', 500, '9.95'),
(4, 'LI0002', 3000, '6.00'),
(5, 'MO0001', 500, '40.00'),
(6, 'PA0001', 500, '3.15'),
(6, 'PA0002', 1000, '4.60'),
(6, 'SE0001', 2000, '8.15'),
(7, 'AC0001', 1000, '8.15'),
(7, 'SE0002', 100, '215.95'),
(7, 'SE0003', 600, '30.15');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `supp_id` int(6) NOT NULL,
  `supp_name` varchar(64) NOT NULL,
  `supp_address` varchar(256) NOT NULL,
  `supp_email` varchar(64) NOT NULL,
  `supp_phone` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`supp_id`, `supp_name`, `supp_address`, `supp_email`, `supp_phone`) VALUES
(1, 'L\'Oreal', '88 Tanner Street, Alloway, Queensland 4670\r\n', 'sales@loreal.com', '+61073179091'),
(3, 'Deciem', '48 Magnolia Drive, Mortdale, New South Wales 2223', 'skincare@deciem.com', '+61262194219'),
(4, 'Unilever', '6 Buoro Street, Seaforth,  Queensland 4741', 'wholesales@unilever.com', '+61749331668'),
(5, 'Estee Lauder Cosmetics', '13 Lowe Street, Jandowae, Queensland 4410', 'estee@esteelauder.com', '+61745058928'),
(6, 'Shiseido', '87 Romawi Road, Iguana Creek, Victoria 3875', 'face@shiseido.com', '+61353422156'),
(7, 'Beiersdorf', '31 Eurack Court, Tuena, New South Wales 2583', 'nivea@beiersdorf.com.au', '+61261976278'),
(8, 'Johnson and Johnson', '44 Ranworth Road, Darling Downs, Western Australia 6122', 'jj@johnson.com', '+61267829763');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `cust_order`
--
ALTER TABLE `cust_order`
  ADD PRIMARY KEY (`cust_order_id`),
  ADD KEY `cust_id` (`cust_id`);

--
-- Indexes for table `cust_order_item`
--
ALTER TABLE `cust_order_item`
  ADD PRIMARY KEY (`cust_order_id`,`prod_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `cust_order_id` (`cust_order_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`position_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`staff_id`) USING BTREE,
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `shift_allocation`
--
ALTER TABLE `shift_allocation`
  ADD PRIMARY KEY (`staff_position_id`,`start_time_date`),
  ADD KEY `staff_position_id` (`staff_position_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `staff_position`
--
ALTER TABLE `staff_position`
  ADD PRIMARY KEY (`staff_position_id`),
  ADD KEY `position_id` (`position_id`),
  ADD KEY `department_id` (`department_id`),
  ADD KEY `staff_id` (`staff_id`,`position_id`,`department_id`),
  ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `stock_keeping`
--
ALTER TABLE `stock_keeping`
  ADD PRIMARY KEY (`prod_id`),
  ADD KEY `prod_id` (`prod_id`);

--
-- Indexes for table `stock_order`
--
ALTER TABLE `stock_order`
  ADD PRIMARY KEY (`stock_order_id`),
  ADD KEY `supp_id` (`supp_id`);

--
-- Indexes for table `stock_order_item`
--
ALTER TABLE `stock_order_item`
  ADD PRIMARY KEY (`stock_order_id`,`prod_id`),
  ADD KEY `prod_id` (`prod_id`),
  ADD KEY `stock_order_id` (`stock_order_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`supp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cust_order`
--
ALTER TABLE `cust_order`
  MODIFY `cust_order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `stock_order`
--
ALTER TABLE `stock_order`
  MODIFY `stock_order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `supp_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cust_order`
--
ALTER TABLE `cust_order`
  ADD CONSTRAINT `cust_order_ibfk_1` FOREIGN KEY (`cust_id`) REFERENCES `customer` (`cust_id`);

--
-- Constraints for table `cust_order_item`
--
ALTER TABLE `cust_order_item`
  ADD CONSTRAINT `cust_order_item_ibfk_1` FOREIGN KEY (`cust_order_id`) REFERENCES `cust_order` (`cust_order_id`),
  ADD CONSTRAINT `cust_order_item_ibfk_2` FOREIGN KEY (`prod_id`) REFERENCES `product` (`prod_id`);

--
-- Constraints for table `salary`
--
ALTER TABLE `salary`
  ADD CONSTRAINT `salary` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`);

--
-- Constraints for table `shift_allocation`
--
ALTER TABLE `shift_allocation`
  ADD CONSTRAINT `shift_allocation_ibfk_1` FOREIGN KEY (`staff_position_id`) REFERENCES `staff_position` (`staff_position_id`);

--
-- Constraints for table `staff_position`
--
ALTER TABLE `staff_position`
  ADD CONSTRAINT `staff_position_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `staff_position_ibfk_2` FOREIGN KEY (`position_id`) REFERENCES `position` (`position_id`),
  ADD CONSTRAINT `staff_position_ibfk_3` FOREIGN KEY (`department_id`) REFERENCES `department` (`department_id`),
  ADD CONSTRAINT `staff_position_ibfk_4` FOREIGN KEY (`manager_id`) REFERENCES `staff` (`staff_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

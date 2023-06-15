-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 01:07 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mbd_uas_031_alvin_febrianto`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `CategoryID` int(10) UNSIGNED NOT NULL,
  `CategoryName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Picture` blob DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`CategoryID`, `CategoryName`, `Description`, `Picture`, `created_at`, `updated_at`) VALUES
(1, 'illum', 'Et consequatur dolorum quidem eveniet.', NULL, '2023-06-15 04:05:37', '2023-06-15 04:05:37'),
(2, 'eius', 'Voluptates esse enim aut.', NULL, '2023-06-15 04:05:37', '2023-06-15 04:05:37'),
(3, 'voluptas', 'Voluptatem impedit mollitia sit at unde id.', NULL, '2023-06-15 04:05:37', '2023-06-15 04:05:37');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CustomerID` int(10) UNSIGNED NOT NULL,
  `CompanyName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostalCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `created_at`, `updated_at`) VALUES
(1, 'Trantow, O\'Connell and Lubowitz', 'Luisa Gutmann', 'Title Searcher', '64582 Naomi Course', 'Wardstad', 'Georgia', '64878', '2023-06-15 04:06:03', '2023-06-15 04:06:03'),
(2, 'Mitchell-Ratke', 'Reed Brown', 'Talent Acquisition Manager', '238 Jacobson Mountain Apt. 444', 'West Elfrieda', 'Idaho', '40263-0151', '2023-06-15 04:06:04', '2023-06-15 04:06:04'),
(3, 'Brown-Breitenberg', 'Reymundo Luettgen V', 'Elementary and Secondary School Administrators', '994 Sipes Plains', 'Brigittestad', 'Missouri', '27505', '2023-06-15 04:06:04', '2023-06-15 04:06:04'),
(4, 'DuBuque LLC', 'Ms. Alanis Fadel Sr.', 'Bookkeeper', '724 Treva Crossing Apt. 640', 'Hintzchester', 'North Dakota', '23169-6477', '2023-06-15 04:06:04', '2023-06-15 04:06:04'),
(5, 'Hintz-Leannon', 'Buck Hickle', 'Plasterer OR Stucco Mason', '8177 Roberts Center Apt. 440', 'Kautzermouth', 'Nevada', '03126-7875', '2023-06-15 04:06:04', '2023-06-15 04:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EmployeeID` int(10) UNSIGNED NOT NULL,
  `LastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `FirstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `TitleOfCourtesy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `BirthDate` date NOT NULL,
  `HireDate` date NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EmployeeID`, `LastName`, `FirstName`, `Title`, `TitleOfCourtesy`, `BirthDate`, `HireDate`, `Address`, `City`, `Region`, `created_at`, `updated_at`) VALUES
(1, 'Koelpin', 'Jeramy', 'Logging Worker', 'Mrs.', '1977-04-02', '2013-04-17', '419 Kertzmann Cove Apt. 381', 'South Valerie', 'New Jersey', '2023-06-15 04:05:54', '2023-06-15 04:05:54'),
(2, 'Yost', 'Herman', 'Automotive Technician', 'Prof.', '1990-11-07', '2000-06-12', '15565 Una Alley', 'Schroederview', 'Missouri', '2023-06-15 04:05:54', '2023-06-15 04:05:54'),
(3, 'Abbott', 'Bell', 'Director Of Business Development', 'Mrs.', '2021-06-07', '1983-08-24', '9925 Eulalia Prairie Suite 462', 'North Angelitatown', 'Wyoming', '2023-06-15 04:05:54', '2023-06-15 04:05:54'),
(4, 'Nader', 'Madonna', 'Atmospheric and Space Scientist', 'Mr.', '1981-01-08', '1983-04-07', '3069 Auer Mountains Apt. 097', 'Lake Alexanderstad', 'Delaware', '2023-06-15 04:05:54', '2023-06-15 04:05:54'),
(5, 'Rau', 'Jovanny', 'Photographic Restorer', 'Dr.', '2001-01-07', '2009-11-19', '3809 Flatley Path Apt. 576', 'East Noemyfurt', 'Utah', '2023-06-15 04:05:54', '2023-06-15 04:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2023_06_15_073900_create_categories_table', 1),
(2, '2023_06_15_074002_create_employees_table', 2),
(3, '2023_06_15_074047_create_customers_table', 3),
(4, '2023_06_15_074111_create_shippers_table', 4),
(5, '2023_06_15_073826_create_suppliers_table', 5),
(6, '2023_06_15_073916_create_products_table', 6),
(7, '2023_06_15_074027_create_orders_table', 7),
(8, '2023_06_15_073938_create_order_details_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OrderID` int(10) UNSIGNED NOT NULL,
  `CustomerID` int(10) UNSIGNED NOT NULL,
  `EmployeeID` int(10) UNSIGNED NOT NULL,
  `OrderDate` date NOT NULL,
  `RequiredDate` date NOT NULL,
  `ShippedDate` date NOT NULL,
  `ShipVia` int(10) UNSIGNED NOT NULL,
  `Freight` decimal(10,2) NOT NULL,
  `ShipName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShipAddress` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShipCity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShipRegion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShipPostalCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ShipCountry` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`OrderID`, `CustomerID`, `EmployeeID`, `OrderDate`, `RequiredDate`, `ShippedDate`, `ShipVia`, `Freight`, `ShipName`, `ShipAddress`, `ShipCity`, `ShipRegion`, `ShipPostalCode`, `ShipCountry`, `created_at`, `updated_at`) VALUES
(1, 2, 5, '2022-11-15', '2024-03-12', '2023-12-14', 2, '4.31', 'Ferry Group', '543 Jeff Squares Apt. 648', 'West Dewayneton', 'Massachusetts', '81100', 'Sudan', '2023-06-15 04:06:40', '2023-06-15 04:06:40'),
(2, 2, 1, '2022-09-09', '2024-03-04', '2023-08-24', 1, '2.85', 'Carter, Shields and Williamson', '543 Hyatt Valleys', 'Haleighmouth', 'Wyoming', '87254', 'Lao People\'s Democratic Republic', '2023-06-15 04:06:40', '2023-06-15 04:06:40'),
(3, 1, 1, '2022-07-17', '2023-07-27', '2024-03-03', 1, '4.84', 'Klein, VonRueden and Rempel', '3663 Will Shores Suite 159', 'South Bertramtown', 'Iowa', '78031', 'Reunion', '2023-06-15 04:06:40', '2023-06-15 04:06:40'),
(4, 3, 2, '2022-06-17', '2024-02-15', '2024-05-21', 1, '74.49', 'Heathcote, Simonis and Hills', '45017 Schimmel Crest Suite 361', 'Joanniemouth', 'Washington', '51831-6712', 'Western Sahara', '2023-06-15 04:06:40', '2023-06-15 04:06:40'),
(5, 5, 2, '2022-08-24', '2024-01-09', '2023-10-26', 2, '52.35', 'McGlynn and Sons', '756 Rosetta Falls Suite 019', 'Port Amayaview', 'Mississippi', '12846', 'Belize', '2023-06-15 04:06:40', '2023-06-15 04:06:40');

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `OrderID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Discount` decimal(4,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`OrderID`, `ProductID`, `UnitPrice`, `Quantity`, `Discount`, `created_at`, `updated_at`) VALUES
(2, 6, '86.61', 10, '0.41', '2023-06-15 04:06:43', '2023-06-15 04:06:43'),
(2, 7, '56.20', 4, '0.28', '2023-06-15 04:06:43', '2023-06-15 04:06:43'),
(2, 7, '27.28', 9, '0.02', '2023-06-15 04:06:43', '2023-06-15 04:06:43'),
(1, 6, '31.35', 8, '0.42', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(4, 9, '0.29', 6, '0.08', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(3, 2, '46.01', 7, '0.12', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(5, 5, '77.08', 4, '0.07', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(3, 1, '15.04', 4, '0.46', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(2, 7, '13.16', 4, '0.17', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(1, 1, '50.74', 7, '0.12', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(3, 5, '35.96', 7, '0.32', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(1, 1, '93.78', 6, '0.10', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(3, 4, '92.45', 2, '0.08', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(2, 6, '14.62', 3, '0.16', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(1, 6, '22.86', 4, '0.29', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(1, 8, '99.16', 2, '0.02', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(2, 5, '42.84', 9, '0.34', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(2, 5, '54.75', 4, '0.47', '2023-06-15 04:06:44', '2023-06-15 04:06:44'),
(5, 2, '32.71', 6, '0.47', '2023-06-15 04:06:45', '2023-06-15 04:06:45'),
(3, 8, '53.77', 4, '0.11', '2023-06-15 04:06:45', '2023-06-15 04:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ProductID` int(10) UNSIGNED NOT NULL,
  `ProductName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `SupplierID` int(10) UNSIGNED NOT NULL,
  `CategoryID` int(10) UNSIGNED NOT NULL,
  `QuantityPerUnit` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `UnitsInStock` int(11) NOT NULL,
  `UnitsOnOrder` int(11) NOT NULL,
  `ReorderLevel` int(11) NOT NULL,
  `Discontinued` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ProductID`, `ProductName`, `SupplierID`, `CategoryID`, `QuantityPerUnit`, `UnitPrice`, `UnitsInStock`, `UnitsOnOrder`, `ReorderLevel`, `Discontinued`, `created_at`, `updated_at`) VALUES
(1, 'laboriosam', 2, 1, '5594', '62.91', 20, 19, 6, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(2, 'voluptatibus', 2, 1, '940', '540.89', 57, 2, 15, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(3, 'eum', 5, 1, '527', '746.62', 51, 22, 8, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(4, 'et', 1, 3, '530768', '288.10', 90, 21, 19, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(5, 'perferendis', 1, 2, '3313', '939.71', 61, 22, 6, 0, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(6, 'consequuntur', 5, 3, '5621', '844.67', 10, 38, 10, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(7, 'nihil', 5, 3, '68', '783.47', 93, 39, 16, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(8, 'omnis', 3, 3, '727682594', '873.47', 93, 46, 4, 0, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(9, 'aut', 4, 1, '4826819', '862.34', 56, 1, 9, 1, '2023-06-15 04:06:33', '2023-06-15 04:06:33'),
(10, 'earum', 3, 3, '886359566', '510.69', 1, 26, 20, 0, '2023-06-15 04:06:33', '2023-06-15 04:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `shippers`
--

CREATE TABLE `shippers` (
  `ShipperID` int(10) UNSIGNED NOT NULL,
  `CompanyName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippers`
--

INSERT INTO `shippers` (`ShipperID`, `CompanyName`, `Phone`, `created_at`, `updated_at`) VALUES
(1, 'McKenzie, Yundt and Williamson', '+1.559.354.9916', '2023-06-15 04:06:11', '2023-06-15 04:06:11'),
(2, 'Marquardt-Bartoletti', '+1 (323) 994-8649', '2023-06-15 04:06:11', '2023-06-15 04:06:11');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `SupplierID` int(10) UNSIGNED NOT NULL,
  `CompanyName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ContactTitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `City` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Region` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `PostalCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`SupplierID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Region`, `PostalCode`, `created_at`, `updated_at`) VALUES
(1, 'Grant, Nienow and Ebert', 'Shannon Kris IV', 'Shoe and Leather Repairer', '3899 Stehr Dale', 'Port Cortneymouth', 'Idaho', '80345-4533', '2023-06-15 04:05:21', '2023-06-15 04:05:21'),
(2, 'Fay-Zemlak', 'Lavinia Bartell', 'Word Processors and Typist', '65980 Dayton Skyway Apt. 413', 'Bradenton', 'District of Columbia', '48618', '2023-06-15 04:05:21', '2023-06-15 04:05:21'),
(3, 'Hoeger, Bergstrom and D\'Amore', 'Dr. Jorge Rowe', 'Manager of Air Crew', '5637 Eloisa Ridges', 'Ernestinahaven', 'Vermont', '21986', '2023-06-15 04:05:21', '2023-06-15 04:05:21'),
(4, 'Blanda, Zieme and Kertzmann', 'Brant Lehner', 'Stonemason', '9976 Kovacek Turnpike', 'Port Venachester', 'New York', '13937', '2023-06-15 04:05:21', '2023-06-15 04:05:21'),
(5, 'Luettgen Group', 'Flavie Durgan', 'Automotive Specialty Technician', '326 Stokes Mall', 'North Meredith', 'Kentucky', '03247', '2023-06-15 04:05:21', '2023-06-15 04:05:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EmployeeID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `orders_customerid_foreign` (`CustomerID`),
  ADD KEY `orders_employeeid_foreign` (`EmployeeID`),
  ADD KEY `orders_shipvia_foreign` (`ShipVia`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD KEY `order_details_orderid_foreign` (`OrderID`),
  ADD KEY `order_details_productid_foreign` (`ProductID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `products_supplierid_foreign` (`SupplierID`),
  ADD KEY `products_categoryid_foreign` (`CategoryID`);

--
-- Indexes for table `shippers`
--
ALTER TABLE `shippers`
  ADD PRIMARY KEY (`ShipperID`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `CategoryID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomerID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `EmployeeID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `OrderID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ProductID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shippers`
--
ALTER TABLE `shippers`
  MODIFY `ShipperID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `SupplierID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customerid_foreign` FOREIGN KEY (`CustomerID`) REFERENCES `customers` (`CustomerID`),
  ADD CONSTRAINT `orders_employeeid_foreign` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  ADD CONSTRAINT `orders_shipvia_foreign` FOREIGN KEY (`ShipVia`) REFERENCES `shippers` (`ShipperID`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_orderid_foreign` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  ADD CONSTRAINT `order_details_productid_foreign` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_categoryid_foreign` FOREIGN KEY (`CategoryID`) REFERENCES `categories` (`CategoryID`),
  ADD CONSTRAINT `products_supplierid_foreign` FOREIGN KEY (`SupplierID`) REFERENCES `suppliers` (`SupplierID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

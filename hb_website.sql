-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2024 at 08:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hb_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_cred`
--

CREATE TABLE `admin_cred` (
  `sr_no` int(11) NOT NULL,
  `admin_name` varchar(150) NOT NULL,
  `admin_pass` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_cred`
--

INSERT INTO `admin_cred` (`sr_no`, `admin_name`, `admin_pass`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `booking_details`
--

CREATE TABLE `booking_details` (
  `sr_no` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `room_name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `total_pay` int(11) NOT NULL,
  `room_no` varchar(100) DEFAULT NULL,
  `user_name` varchar(100) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `address` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_details`
--

INSERT INTO `booking_details` (`sr_no`, `booking_id`, `room_name`, `price`, `total_pay`, `room_no`, `user_name`, `phonenum`, `address`) VALUES
(1, 1, 'Simpla Room', 300, 300, NULL, 'Angelica Alston', '10', 'Eos ipsa dolorum s'),
(15, 19, 'Deluxe Room', 500, 1000, 'B55', 'Maia Bernard', '5', 'Occaecat qui minim d'),
(16, 20, 'Deluxe Room', 500, 1000, NULL, 'Maia Bernard', '5', 'Occaecat qui minim d'),
(17, 21, 'Deluxe Room', 500, 3500, NULL, 'Maia Bernard', '9999999999', 'Occaecat qui minim d'),
(18, 22, 'Luxury Room', 800, 800, NULL, 'Maia Bernard', '124567890', 'Occaecat qui minim d'),
(19, 23, 'Simpla Room', 300, 1800, NULL, 'Maia Bernard', '5', 'Occaecat qui minim d'),
(20, 24, 'Simpla Room', 300, 1200, NULL, 'Angelica Alston', '10', 'Eos ipsa dolorum s'),
(21, 25, 'Simpla Room', 300, 900, NULL, 'Angelica Alston', '10', 'Eos ipsa dolorum s'),
(22, 26, 'Deluxe Room', 500, 1000, NULL, 'Angelica Alston', '10', 'Eos ipsa dolorum s'),
(23, 27, 'Luxury Room', 800, 1600, NULL, 'Aaftab', '10', 'Eos ipsa dolorum s'),
(24, 28, 'Luxury Room', 800, 2400, NULL, 'Aaftab', '10', 'Eos ipsa dolorum s');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order`
--

CREATE TABLE `booking_order` (
  `booking_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `check_in` date NOT NULL,
  `check_out` date NOT NULL,
  `arrival` int(11) NOT NULL DEFAULT 0,
  `refund` int(11) DEFAULT NULL,
  `booking_status` varchar(100) NOT NULL DEFAULT 'pending',
  `order_id` varchar(150) NOT NULL,
  `trans_id` varchar(200) DEFAULT NULL,
  `trans_amt` int(11) NOT NULL,
  `trans_status` varchar(100) NOT NULL DEFAULT 'pending',
  `trans_resp_msg` varchar(200) DEFAULT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking_order`
--

INSERT INTO `booking_order` (`booking_id`, `user_id`, `room_id`, `check_in`, `check_out`, `arrival`, `refund`, `booking_status`, `order_id`, `trans_id`, `trans_amt`, `trans_status`, `trans_resp_msg`, `datentime`) VALUES
(1, 3, 4, '2024-03-30', '2024-03-31', 0, 1, 'cancelled', 'ORD_35680580', NULL, 0, 'pending', NULL, '2024-03-30 23:05:58'),
(19, 4, 5, '2024-04-16', '2024-04-18', 1, NULL, 'pending', 'ORD_45877727', NULL, 0, 'pending', NULL, '2024-04-15 19:55:33'),
(20, 4, 5, '2024-04-16', '2024-04-18', 0, 1, 'cancelled', 'ORD_48044815', NULL, 0, 'pending', NULL, '2024-04-15 19:56:41'),
(21, 4, 5, '2024-04-17', '2024-04-24', 0, NULL, 'pending', 'ORD_48479683', NULL, 0, 'pending', NULL, '2024-04-15 20:08:45'),
(22, 4, 6, '2024-04-22', '2024-04-23', 0, NULL, 'pending', 'ORD_43743558', NULL, 0, 'pending', NULL, '2024-04-15 20:10:36'),
(23, 4, 4, '2024-04-17', '2024-04-23', 0, NULL, 'pending', 'ORD_4203093', NULL, 0, 'pending', NULL, '2024-04-16 11:53:33'),
(24, 3, 4, '2024-04-27', '2024-05-01', 0, 0, 'cancelled', 'ORD_39158772', NULL, 0, 'pending', NULL, '2024-04-26 19:54:57'),
(25, 3, 4, '2024-04-27', '2024-04-30', 0, 1, 'cancelled', 'ORD_35827350', NULL, 0, 'pending', NULL, '2024-04-26 19:56:41'),
(26, 3, 5, '2024-04-30', '2024-05-02', 0, 0, 'cancelled', 'ORD_37370127', NULL, 0, 'pending', NULL, '2024-04-26 19:57:53'),
(27, 3, 6, '2024-04-27', '2024-04-29', 0, NULL, 'pending', 'ORD_39897120', NULL, 0, 'pending', NULL, '2024-04-26 23:31:33'),
(28, 3, 6, '2024-04-27', '2024-04-30', 0, NULL, 'pending', 'ORD_39049530', NULL, 0, 'pending', NULL, '2024-04-26 23:31:42');

-- --------------------------------------------------------

--
-- Table structure for table `carousel`
--

CREATE TABLE `carousel` (
  `sr_no` int(11) NOT NULL,
  `image` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `carousel`
--

INSERT INTO `carousel` (`sr_no`, `image`) VALUES
(7, 'IMG_69591.png'),
(8, 'IMG_77741.png'),
(9, 'IMG_43557.png'),
(10, 'IMG_54189.png'),
(11, 'IMG_26421.png'),
(12, 'IMG_44581.png');

-- --------------------------------------------------------

--
-- Table structure for table `contact_details`
--

CREATE TABLE `contact_details` (
  `sr_no` int(11) NOT NULL,
  `address` varchar(50) NOT NULL,
  `gmap` varchar(100) NOT NULL,
  `pn1` bigint(20) NOT NULL,
  `pn2` bigint(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `fb` varchar(100) NOT NULL,
  `insta` varchar(100) NOT NULL,
  `tw` varchar(100) NOT NULL,
  `iframe` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_details`
--

INSERT INTO `contact_details` (`sr_no`, `address`, `gmap`, `pn1`, `pn2`, `email`, `fb`, `insta`, `tw`, `iframe`) VALUES
(1, 'PANI GATE, VADODARA, GUJARAT.', 'https://maps.app.goo.gl/7rPXUJiuHjzHFTYz5', 91123456788, 91123456789, 'mail.google.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://twitter.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d118106.58331627493!2d73.09068406691841!3d22.322240637247695!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395fc8ab91a3ddab:0xac39d3bfe1473fb8!2sVadodara, Gujarat!5e0!3m2!1sen!2sin!4v1708625024273!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `icon`, `name`, `description`) VALUES
(2, 'IMG_82857.svg', 'Wifi', 'Providing complimentary high-speed WiFi allows guests to stay connected with loved ones, catch up on work emails, or stream their favorite shows and movies during their stay. A reliable WiFi connection enhances the overall guest experience and ensures that guests can easily access information and entertainment from the comfort of their rooms.'),
(3, 'IMG_83283.svg', 'Air Conditione', 'Air conditioning is crucial for maintaining a comfortable indoor environment, especially in warm or humid climates. Hotels equipped with air conditioning systems ensure that guests can escape the heat and enjoy a cool and refreshing atmosphere in their rooms. Adjustable temperature controls allow guests to personalize their comfort level, ensuring a restful and enjoyable stay regardless of the weather conditions outside.'),
(4, 'IMG_64310.svg', 'Television', 'Televisions in hotel rooms provide guests with entertainment options and relaxation during their stay. Modern hotel televisions often come with a variety of channels, including news, sports, and entertainment, catering to diverse preferences. Some hotels may also offer premium channels or streaming services for guests to enjoy their favorite shows and movies. Televisions serve as a convenient source of entertainment, particularly for guests looking to unwind after a long day of travel or sightse'),
(5, 'IMG_71960.svg', 'Geyser', 'A geyser, or water heater, is a crucial amenity in hotel bathrooms, providing guests with hot water for showering and bathing. Geyser-equipped rooms ensure that guests can enjoy a warm and comfortable shower regardless of the time of day or external weather conditions. Consistent access to hot water enhances the overall guest experience, promoting relaxation and rejuvenation during their stay.'),
(6, 'IMG_39250.svg', 'Spa', 'A spa facility within a hotel offers guests the opportunity to indulge in pampering treatments and wellness activities during their stay. Spa services may include massages, facials, body treatments, and beauty therapies, providing guests with a luxurious and rejuvenating experience. Some hotels feature full-service spas with amenities such as saunas, steam rooms, hot tubs, and relaxation lounges, allowing guests to unwind and de-stress in a tranquil environment.'),
(7, 'IMG_63894.svg', 'Room heater', ' Room heaters are essential amenities in hotels located in colder climates or during the winter months. Providing room heaters ensures that guests can stay warm and comfortable in their rooms, even when temperatures drop outside. Portable or built-in heaters allow guests to adjust the temperature according to their preferences, creating a cozy and inviting atmosphere for relaxation and restful sleep.');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`) VALUES
(1, 'Badroom'),
(2, 'Kitchen'),
(3, 'Balcony');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `area` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `adult` int(11) NOT NULL,
  `children` int(11) NOT NULL,
  `description` varchar(350) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `removed` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `name`, `area`, `price`, `quantity`, `adult`, `children`, `description`, `status`, `removed`) VALUES
(1, 'Simple Room', 250, 500, 4, 2, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos deleniti illo debitis officia neque reprehenderit nobis sunt consequuntur ad perspiciatis?', 1, 1),
(2, 'VIP Room', 250, 5000, 4, 2, 2, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos deleniti illo debitis officia neque reprehenderit nobis sunt consequuntur ad perspiciatis?', 1, 1),
(3, 'VIP Room', 250, 45000, 3, 2, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dignissimos deleniti illo debitis officia neque reprehenderit nobis sunt consequuntur ad perspiciatis?', 1, 1),
(4, 'Simple Room', 300, 300, 10, 5, 3, 'Simple room is the most basic accommodation option available in many hotels. It typically includes essential amenities such as a bed, a bathroom with a shower or bathtub, a desk, and basic furnishings. Standard rooms are often chosen by budget-conscious travelers or those staying for shorter durations.', 1, 0),
(5, 'Deluxe Room', 450, 500, 8, 4, 4, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quidem, cum. Veritatis quam cupiditate temporibus impedit earum voluptatibus iste, enim labore!', 1, 1),
(6, 'Luxury Room', 600, 800, 2, 6, 6, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Quidem, cum. Veritatis quam cupiditate temporibus impedit earum voluptatibus iste, enim labore!', 1, 1),
(7, 'Standard room', 350, 400, 10, 5, 4, 'The standard room is the most basic accommodation option available in many hotels. It typically includes essential amenities such as a bed, a bathroom with a shower or bathtub, a desk, and basic furnishings. Standard rooms are often chosen by budget-conscious travelers or those staying for shorter durations.', 1, 0),
(8, 'Deluxe Room', 400, 500, 5, 5, 5, 'Deluxe rooms are a step up from standard rooms, offering additional space and sometimes upgraded amenities. These rooms may feature better views, higher-quality furnishings, and more luxurious bedding. They often cater to travelers seeking a bit more comfort and convenience during their stay.', 1, 0),
(9, 'Executive Room', 500, 1000, 3, 6, 3, 'Executive rooms are designed for business travelers or guests who desire extra amenities and services. These rooms usually include a larger workspace, complimentary Wi-Fi, access to a business center, and sometimes perks like complimentary breakfast or evening cocktails.', 1, 0),
(10, 'Family Room', 400, 600, 10, 5, 5, 'Family rooms are designed to accommodate larger groups or families traveling together. These rooms often feature multiple beds or a pull-out sofa bed, making them ideal for parents with children. Family rooms may also include amenities like a microwave, mini-fridge, and extra seating space to accommodate the needs of larger groups.', 1, 0),
(11, 'Luxury Room', 500, 1200, 5, 5, 3, 'Luxurious and spacious accommodation option in many hotels. They typically consist of separate living and sleeping areas, offering guests more privacy and room to spread out. Suites often include upscale amenities such as a kitchenette or full kitchen, a dining area, and upgraded toiletries. Some hotels offer different types of suites, such as juni', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room_facilities`
--

CREATE TABLE `room_facilities` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `facilities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_facilities`
--

INSERT INTO `room_facilities` (`sr_no`, `room_id`, `facilities_id`) VALUES
(127, 7, 2),
(128, 7, 3),
(129, 7, 4),
(130, 8, 2),
(131, 8, 3),
(132, 8, 4),
(133, 8, 5),
(134, 9, 2),
(135, 9, 3),
(136, 9, 4),
(137, 9, 5),
(138, 10, 2),
(139, 10, 3),
(140, 10, 4),
(141, 10, 5),
(148, 11, 2),
(149, 11, 3),
(150, 11, 4),
(151, 11, 5),
(152, 11, 6),
(153, 11, 7),
(154, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `room_features`
--

CREATE TABLE `room_features` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `features_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_features`
--

INSERT INTO `room_features` (`sr_no`, `room_id`, `features_id`) VALUES
(48, 7, 1),
(49, 8, 1),
(50, 8, 3),
(51, 9, 1),
(52, 9, 3),
(53, 10, 1),
(54, 10, 2),
(55, 10, 3),
(58, 11, 1),
(59, 11, 3),
(60, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `sr_no` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `image` varchar(150) NOT NULL,
  `thumb` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`sr_no`, `room_id`, `image`, `thumb`) VALUES
(12, 4, 'IMG_76106.png', 1),
(16, 7, 'IMG_34588.jpg', 1),
(17, 8, 'IMG_81849.png', 1),
(18, 9, 'IMG_38881.png', 1),
(19, 10, 'IMG_96919.png', 1),
(20, 11, 'IMG_65511.png', 1),
(21, 10, 'IMG_93261.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `sr_no` int(11) NOT NULL,
  `site_title` varchar(30) NOT NULL,
  `site_about` varchar(250) NOT NULL,
  `shutdown` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`sr_no`, `site_title`, `site_about`, `shutdown`) VALUES
(1, 'AS HOTEL', 'At AS HOTEL, we specialize in providing cutting-edge room management software tailored to the unique needs of modern hoteliers. With years of industry expertise, our team is dedicated to delivering seamless solutions that streamline operations, enhan', 0);

-- --------------------------------------------------------

--
-- Table structure for table `team_details`
--

CREATE TABLE `team_details` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `picture` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `team_details`
--

INSERT INTO `team_details` (`sr_no`, `name`, `picture`) VALUES
(1, 'Member 1', 'IMG_98818.jpeg'),
(2, 'Member 2', 'IMG_39239.jpeg'),
(3, 'Member 3', 'IMG_50480.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user_cred`
--

CREATE TABLE `user_cred` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(150) NOT NULL,
  `address` varchar(120) NOT NULL,
  `phonenum` varchar(100) NOT NULL,
  `pincode` int(11) NOT NULL,
  `dob` date NOT NULL,
  `profile` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `datentime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_cred`
--

INSERT INTO `user_cred` (`id`, `name`, `email`, `address`, `phonenum`, `pincode`, `dob`, `profile`, `password`, `status`, `datentime`) VALUES
(3, 'Aaftab', 'puvumokato@mailinator.com', 'Eos ipsa dolorum s', '10', 9252, '2002-05-26', 'IMG_32575.jpeg', '$2y$10$lL4w4pfvT59Q7fRtaQTHN.BWTVqm6Gndm5KSA5jGuNAC6Ng4jKL9K', 1, '2024-03-22 22:53:03'),
(4, 'Maia Bernard', 'rutige@mailinator.com', 'Occaecat qui minim d', '5', 53, '1982-06-11', 'IMG_23032.jpeg', '$2y$10$gASSHeWzf4/AlqIKtWyrneua/tmpYRgWW4eSFi92/Hw2rmJySPhgW', 1, '2024-04-01 20:49:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_queries`
--

CREATE TABLE `user_queries` (
  `sr_no` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(500) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_queries`
--

INSERT INTO `user_queries` (`sr_no`, `name`, `email`, `subject`, `message`, `date`, `seen`) VALUES
(1, 'Yen Garrett', 'gedecypu@mailinator.com', 'Rerum excepturi esse', 'Minim enim nihil nem', '2024-02-25', 1),
(3, 'Burton Powell', 'pilixus@mailinator.com', 'Query Regarding Reservation at AS Hotel', 'I am writing to inquire about room availability and rates for [specific dates] for a stay at AS Hotel. Could you please provide information regarding room options, amenities, and any special offers or packages available during that time? Additionally, I would appreciate any details regarding booking procedures and cancellation policies. Thank you in advance for your assistance, and I look forward to hearing from you soon.', '2024-04-28', 0),
(4, 'Astra Ruiz', 'nuxecijoj@mailinator.com', 'Any query', 'I wanted to reach out to express my appreciation for the exceptional service I received during my recent stay at your hotel.', '2024-04-28', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_cred`
--
ALTER TABLE `admin_cred`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `carousel`
--
ALTER TABLE `carousel`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `contact_details`
--
ALTER TABLE `contact_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room id` (`room_id`),
  ADD KEY `facilities id` (`facilities_id`);

--
-- Indexes for table `room_features`
--
ALTER TABLE `room_features`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `rm id` (`room_id`),
  ADD KEY `features id` (`features_id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`sr_no`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `team_details`
--
ALTER TABLE `team_details`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `user_cred`
--
ALTER TABLE `user_cred`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_queries`
--
ALTER TABLE `user_queries`
  ADD PRIMARY KEY (`sr_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_cred`
--
ALTER TABLE `admin_cred`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `booking_details`
--
ALTER TABLE `booking_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `booking_order`
--
ALTER TABLE `booking_order`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `carousel`
--
ALTER TABLE `carousel`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `contact_details`
--
ALTER TABLE `contact_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room_facilities`
--
ALTER TABLE `room_facilities`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `room_features`
--
ALTER TABLE `room_features`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `team_details`
--
ALTER TABLE `team_details`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_cred`
--
ALTER TABLE `user_cred`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_queries`
--
ALTER TABLE `user_queries`
  MODIFY `sr_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking_details`
--
ALTER TABLE `booking_details`
  ADD CONSTRAINT `booking_details_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking_order` (`booking_id`);

--
-- Constraints for table `booking_order`
--
ALTER TABLE `booking_order`
  ADD CONSTRAINT `booking_order_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_cred` (`id`),
  ADD CONSTRAINT `booking_order_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_facilities`
--
ALTER TABLE `room_facilities`
  ADD CONSTRAINT `facilities id` FOREIGN KEY (`facilities_id`) REFERENCES `facilities` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `room id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);

--
-- Constraints for table `room_features`
--
ALTER TABLE `room_features`
  ADD CONSTRAINT `features id` FOREIGN KEY (`features_id`) REFERENCES `features` (`id`) ON UPDATE NO ACTION,
  ADD CONSTRAINT `rm id` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`) ON UPDATE NO ACTION;

--
-- Constraints for table `room_images`
--
ALTER TABLE `room_images`
  ADD CONSTRAINT `room_images_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `rooms` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

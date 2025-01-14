
--
-- Table structure for table `school_settings`
--

CREATE TABLE `school_settings` (
  `domain` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp(),
  `eiin` int(100) NOT NULL,
  `logo` varchar(100) NOT NULL DEFAULT 'logo.png',
  `name` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `headline` text NOT NULL,
  `about` text NOT NULL,
  `image` varchar(100) NOT NULL DEFAULT 'main_img.png',
  `video` varchar(100) NOT NULL,
  `fb_link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school_settings`
--

INSERT INTO `school_settings` (`domain`, `ID`, `at_date`, `eiin`, `logo`, `name`, `email`, `phone`, `address`, `headline`, `about`, `image`, `video`, `fb_link`) VALUES
('localhost', 1, '2024-12-04 23:02:33', 108669, 'logo740463813.0497645.png', 'Boalmari George Academy', 'nomail@abc.com', '01716453013', 'Boalmari, Faridpur, Dhaka, Bangladesh', 'Welcome to our School', 'Boalmari George Academy \'Officials Page\', Faridpur, Dhaka, Bangladesh. 3054 likes · 386 talking about this. It is the oldest high school in Boalmari...', '1735580376626_home.png', '', 'https://www.facebook.com/BoalmariGeorgeAcademyOfficials/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `school_settings`
--
ALTER TABLE `school_settings`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `school_settings`
--
ALTER TABLE `school_settings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT
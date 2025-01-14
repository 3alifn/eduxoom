
--
-- Table structure for table `attn_record`
--

CREATE TABLE `attn_record` (
  `domain` varchar(100) NOT NULL,
  `id` int(11) NOT NULL,
  `menual` int(11) NOT NULL,
  `session` int(11) NOT NULL,
  `user` varchar(100) NOT NULL,
  `duplicate_data` varchar(200) NOT NULL,
  `class` varchar(10) DEFAULT NULL,
  `section` varchar(10) DEFAULT NULL,
  `roll` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `get_cal` varchar(100) NOT NULL,
  `find_date` varchar(100) NOT NULL,
  `attn_date` varchar(100) NOT NULL,
  `record_date` varchar(100) NOT NULL,
  `record_time` varchar(100) NOT NULL,
  `punch` varchar(10) DEFAULT NULL,
  `checkout` int(11) DEFAULT NULL,
  `at_status` varchar(10) NOT NULL,
  `overtime` varchar(100) NOT NULL,
  `latetime` varchar(100) NOT NULL,
  `take_time` int(11) DEFAULT NULL,
  `year` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `at_date` varchar(100) NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attn_record`
--
ALTER TABLE `attn_record`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attn_record`
--
ALTER TABLE `attn_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT


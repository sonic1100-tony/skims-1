--
-- Table structure for table `str_bzpl_acc_tot_calc`
--

DROP TABLE IF EXISTS `str_bzpl_acc_tot_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_bzpl_acc_tot_calc` (
  `bz_pl_acc_itcd` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획계정항목코드',
  `acc_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '계정실체구분코드',
  `bzpl_acc_sbjcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '사업계획계정과목코드',
  `ads_sign` decimal(1,0) NOT NULL COMMENT '가감부호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bz_pl_acc_itcd`,`acc_ntty_flgcd`,`bzpl_acc_sbjcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사업계획계정집계연산';

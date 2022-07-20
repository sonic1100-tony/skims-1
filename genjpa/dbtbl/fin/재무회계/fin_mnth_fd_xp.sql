--
-- Table structure for table `fin_mnth_fd_xp`
--

DROP TABLE IF EXISTS `fin_mnth_fd_xp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_mnth_fd_xp` (
  `stdt` date NOT NULL COMMENT '기준일자',
  `incm_exp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '수입지출구분코드',
  `fd_seqno` decimal(5,0) NOT NULL COMMENT '자금순번',
  `fd_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자금종류코드',
  `xpdat` date NOT NULL COMMENT '예상일자',
  `xpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '예상금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stdt`,`incm_exp_flgcd`,`fd_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='월자금예상';

--
-- Table structure for table `ccm_lend_cr_ctp`
--

DROP TABLE IF EXISTS `ccm_lend_cr_ctp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_lend_cr_ctp` (
  `ctp_gpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '차종그룹코드',
  `ctp_dt_seqno` decimal(3,0) NOT NULL COMMENT '차종세부순번',
  `carnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '차명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ctp_gpcd`,`ctp_dt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대여자동차차종';

--
-- Table structure for table `ins_offs_gp`
--

DROP TABLE IF EXISTS `ins_offs_gp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_offs_gp` (
  `offs_gpno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT 'OFFSET그룹번호',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `dltcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상대처코드',
  `dsdt` date NOT NULL COMMENT '결정일자',
  `cr_rk_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발생단계구분코드',
  `offs_chrps_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'OFFSET담당자의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`offs_gpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='OFFSET그룹';

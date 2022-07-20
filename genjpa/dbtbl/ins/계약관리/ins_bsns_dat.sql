--
-- Table structure for table `ins_bsns_dat`
--

DROP TABLE IF EXISTS `ins_bsns_dat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bsns_dat` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `bsns_dat_no` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '업무데이터번호',
  `bsns_dat_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무데이터명',
  `bsns_dat_xpnm` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무데이터설명',
  `adm_dep_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리부서코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `idx_ins_bsns_dat_00` (`bsns_dat_no`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무데이터';

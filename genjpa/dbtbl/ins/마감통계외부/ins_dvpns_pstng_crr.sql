--
-- Table structure for table `ins_dvpns_pstng_crr`
--

DROP TABLE IF EXISTS `ins_dvpns_pstng_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_pstng_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자코드',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ch_dthms` datetime NOT NULL COMMENT '변경일시',
  `pstng_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포스팅구분코드',
  `pstng_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '포스팅상태코드',
  `st_crdt` date NOT NULL COMMENT '상태발생일자',
  `plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계번호',
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사직원번호',
  `pstng_rgtno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '포스팅등록번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_pstng_crr_00` (`nrdcd`,`carno`,`ins_st`,`ch_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원포스팅이력';

--
-- Table structure for table `ins_udw_cnr_cs_vl`
--

DROP TABLE IF EXISTS `ins_udw_cnr_cs_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udw_cnr_cs_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plno` varchar(17) COLLATE utf8mb4_bin NOT NULL COMMENT '설계번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ud_dldt` date DEFAULT NULL COMMENT '심사처리일자',
  `ud_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사직원번호',
  `no1_vl_qtit_no` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번평가문항번호',
  `no2_vl_qtit_no` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번평가문항번호',
  `no3_vl_qtit_no` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '3번평가문항번호',
  `no4_vl_qtit_no` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '4번평가문항번호',
  `no5_vl_qtit_no` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '5번평가문항번호',
  `no1_vlrst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1번평가결과내용',
  `no2_vlrst_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2번평가결과내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_udw_cnr_cs_vl_00` (`plno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='언더라이팅센터CS평가';

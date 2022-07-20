--
-- Table structure for table `ins_cmpg_qust_qtit`
--

DROP TABLE IF EXISTS `ins_cmpg_qust_qtit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_qust_qtit` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `qusnr_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '설문지ID',
  `qtit_no` decimal(3,0) NOT NULL COMMENT '문항번호',
  `qtit_cn` varchar(600) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문항내용',
  `qtit_kndcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문항종류코드',
  `qtit_sht_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문항단축내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_qust_qtit_00` (`qusnr_id`,`qtit_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인설문문항';

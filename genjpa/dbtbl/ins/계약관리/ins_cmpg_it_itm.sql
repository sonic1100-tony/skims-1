--
-- Table structure for table `ins_cmpg_it_itm`
--

DROP TABLE IF EXISTS `ins_cmpg_it_itm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmpg_it_itm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `qusnr_id` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '설문지ID',
  `qtit_no` decimal(3,0) NOT NULL COMMENT '문항번호',
  `qtit_itmno` decimal(3,0) NOT NULL COMMENT '문항보기번호',
  `qtit_exmp_cn` varchar(300) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문항보기내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cmpg_it_itm_00` (`qusnr_id`,`qtit_no`,`qtit_itmno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='캠페인항목보기';

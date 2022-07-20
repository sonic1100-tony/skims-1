--
-- Table structure for table `ins_inbr_ba_da`
--

DROP TABLE IF EXISTS `ins_inbr_ba_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_inbr_ba_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ibnr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'IBNR구분코드',
  `brk_rincd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '브로커재보험자코드',
  `ltrm_rn_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '장기원수위험보험료',
  `re_rk_prm` decimal(17,2) DEFAULT NULL COMMENT '출재위험보험료',
  `re_cm` decimal(17,2) DEFAULT NULL COMMENT '출재수수료',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_inbr_ba_da_00` (`cls_yymm`,`gdcd`,`plyno`,`ibnr_flgcd`,`brk_rincd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='INBR기초자료';

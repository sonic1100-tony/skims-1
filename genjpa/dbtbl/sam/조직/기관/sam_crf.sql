--
-- Table structure for table `sam_crf`
--

DROP TABLE IF EXISTS `sam_crf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_crf` (
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `orgn_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '조직기관코드',
  `hdqt_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본부기관코드',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관코드',
  `bzp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업소기관코드',
  `stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원명',
  `orgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기관명',
  `hdqnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '본부명',
  `brnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점명',
  `bzp_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업소명',
  `dtycd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직책코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`stfno`,`orgn_orgcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='겸직';

--
-- Table structure for table `igd_gd_pr_rt`
--

DROP TABLE IF EXISTS `igd_gd_pr_rt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_pr_rt` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `dmgrt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '손해율',
  `bz_rt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '사업비율',
  `pftrt` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT '이익율',
  `lcm_cfc` decimal(15,7) NOT NULL DEFAULT '0.0000000' COMMENT 'LCM계수',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품예정율';

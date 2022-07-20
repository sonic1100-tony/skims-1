--
-- Table structure for table `ins_pl_agre_autno_is`
--

DROP TABLE IF EXISTS `ins_pl_agre_autno_is`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pl_agre_autno_is` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ssdt` date NOT NULL COMMENT '발행일자',
  `ctm_agre_autno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '고객동의인증번호',
  `vald_nddt` date NOT NULL COMMENT '유효종료일자',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_pl_agre_autno_is_00` (`ssdt`,`ctm_agre_autno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='설계동의인증번호발급';

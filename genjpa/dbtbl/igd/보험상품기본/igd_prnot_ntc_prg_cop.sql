--
-- Table structure for table `igd_prnot_ntc_prg_cop`
--

DROP TABLE IF EXISTS `igd_prnot_ntc_prg_cop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_prnot_ntc_prg_cop` (
  `prnot_id` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물ID',
  `prnot_copel_no` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '출력물구성요소번호',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `prnot_copel_xpnm` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출력물구성요소설명',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`prnot_id`,`prnot_copel_no`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='출력물안내문구구성';

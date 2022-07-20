--
-- Table structure for table `ins_udlmi_tp`
--

DROP TABLE IF EXISTS `ins_udlmi_tp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_udlmi_tp` (
  `udlmi_tpcd` varchar(30) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형코드',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `udlmi_tpnm` varchar(200) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형명',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `udlmi_tp_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형대분류코드',
  `udlmi_tp_mdccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형중분류코드',
  `udlmi_tp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인수제한유형구분코드',
  `udlmi_tp_dt_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인수제한유형상세내용',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`udlmi_tpcd`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='인수제한유형';

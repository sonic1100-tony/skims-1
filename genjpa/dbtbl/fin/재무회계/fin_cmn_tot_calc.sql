--
-- Table structure for table `fin_cmn_tot_calc`
--

DROP TABLE IF EXISTS `fin_cmn_tot_calc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_cmn_tot_calc` (
  `csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '분류코드',
  `dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '세부코드',
  `csfcd_1` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '분류코드1',
  `dtcd_1` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '세부코드1',
  `csfcd_2` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '분류코드2',
  `dtcd_2` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '세부코드2',
  `csfcd_3` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '분류코드3',
  `dtcd_3` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '세부코드3',
  `csfcd_4` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '분류코드4',
  `dtcd_4` varchar(11) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '세부코드4',
  `csfcd_5` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '분류코드5',
  `dtcd_5` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '세부코드5',
  `csfcd_6` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '분류코드6',
  `dtcd_6` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '세부코드6',
  `ntacc_cd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '계정과목코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ads_sign` decimal(1,0) NOT NULL COMMENT '가감부호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`csfcd`,`dtcd`,`csfcd_1`,`dtcd_1`,`csfcd_2`,`dtcd_2`,`csfcd_3`,`dtcd_3`,`csfcd_4`,`dtcd_4`,`csfcd_5`,`dtcd_5`,`csfcd_6`,`dtcd_6`,`ntacc_cd`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='공통집계연산';

--
-- Table structure for table `ins_cramt_info`
--

DROP TABLE IF EXISTS `ins_cramt_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cramt_info` (
  `yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '년도',
  `qtr` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '분기',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '차명코드',
  `opedt` date NOT NULL COMMENT '시행일자',
  `yytp` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '연식',
  `nwcr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '신차구분코드',
  `mfg_ap_str_dthms` datetime NOT NULL COMMENT '출고적용시작일시',
  `mfg_ap_nd_dthms` datetime NOT NULL COMMENT '출고적용종료일시',
  `cramt` decimal(15,0) DEFAULT NULL COMMENT '차량가액',
  `cnmcd_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드상세구분코드',
  `hg_cnmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최고차명코드',
  `lowt_cnmcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '최저차명코드',
  `lowt_cramt` decimal(15,0) DEFAULT NULL COMMENT '최저차량가액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`yr`,`qtr`,`cnmcd`,`opedt`,`yytp`,`nwcr_flgcd`,`mfg_ap_str_dthms`,`mfg_ap_nd_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='차량가액정보';

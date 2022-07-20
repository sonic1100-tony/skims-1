--
-- Table structure for table `fin_aprt_adm`
--

DROP TABLE IF EXISTS `fin_aprt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_aprt_adm` (
  `aprt_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '적용율종류코드',
  `aprt_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '적용율대상구분코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `aprt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '적용율',
  `need_bgrt` decimal(12,5) NOT NULL DEFAULT '0.00000' COMMENT '필요경비율',
  `sasbt_coamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '소액부징수금액',
  `dstbt_stct` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '유통주식수',
  `nots_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적요사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aprt_kndcd`,`aprt_bj_flgcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='적용율관리';

--
-- Table structure for table `ccm_st_ic`
--

DROP TABLE IF EXISTS `ccm_st_ic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_st_ic` (
  `ic_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '소득기준구분코드',
  `ccpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직종코드',
  `st_ic_seqno` decimal(3,0) NOT NULL COMMENT '기준소득순번',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ccp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '직종구분코드',
  `mnth_icamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '월소득금액',
  `dy_icamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '일소득금액',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `sts_pa_crr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통계임금경력구분코드',
  `mnth_slamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '월급여금액',
  `annu_spc_slamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '연간특별급여금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ic_st_flgcd`,`ccpcd`,`st_ic_seqno`,`ap_nddt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='기준소득';

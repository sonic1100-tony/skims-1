--
-- Table structure for table `ccm_std_dmamt_adm`
--

DROP TABLE IF EXISTS `ccm_std_dmamt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_std_dmamt_adm` (
  `ap_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '적용년도',
  `std_dmamt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '표준손해액구분코드',
  `std_dmamt_ordr` decimal(5,0) NOT NULL COMMENT '표준손해액순차',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ps1_py_ibamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '1인당지급보험금액',
  `mdcf` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '치료비',
  `ag_amt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '합의금액',
  `stdt` date DEFAULT NULL COMMENT '기준일자',
  `age_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연령구분코드',
  `sexcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성별코드',
  `injr_rnk` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상해급수',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `ic_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '소득기준구분코드',
  `jb_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업구분코드',
  `flt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '과실구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ap_yr`,`std_dmamt_flgcd`,`std_dmamt_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='표준손해액관리';

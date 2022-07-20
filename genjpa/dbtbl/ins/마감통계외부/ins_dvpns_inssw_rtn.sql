--
-- Table structure for table `ins_dvpns_inssw_rtn`
--

DROP TABLE IF EXISTS `ins_dvpns_inssw_rtn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_inssw_rtn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `crncd` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호코드',
  `carno_hngl` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량번호한글',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자코드',
  `nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자명',
  `inssw_xmn_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험사기검토결과코드',
  `inssw_rtamt` decimal(15,0) DEFAULT NULL COMMENT '보험사기환급금액',
  `fr_prm` decimal(15,0) DEFAULT NULL COMMENT '최초보험료',
  `chaf_prm` decimal(15,0) DEFAULT NULL COMMENT '변경후보험료',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `chbf_clm_poct` decimal(5,2) DEFAULT NULL COMMENT '변경전사고점수',
  `chaf_clm_poct` decimal(5,2) DEFAULT NULL COMMENT '변경후사고점수',
  `chbf_dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경전할인할증등급코드',
  `chaf_dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경후할인할증등급코드',
  `sbr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '부점기관코드',
  `br_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지점기관코드',
  `dher_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급자직원번호',
  `befo_y3_clmct` decimal(7,0) DEFAULT NULL COMMENT '직전3년사고건수',
  `befo_y1_clmct` decimal(5,0) DEFAULT NULL COMMENT '직전1년사고건수',
  `rtn_dt` date DEFAULT NULL COMMENT '환급일자',
  `rtamt` decimal(17,2) DEFAULT NULL COMMENT '환급금액',
  `note_1` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고1',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수년월',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_inssw_rtn_00` (`st_yymm`,`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원보험사기환급';

--
-- Table structure for table `gea_ta_cr_crst`
--

DROP TABLE IF EXISTS `gea_ta_cr_crst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ta_cr_crst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년도',
  `part_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '부문기관코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `chrps_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원명',
  `ta_cr_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무계약항목코드',
  `ta_entp_slct_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무업체선정유형코드',
  `ta_cr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '총무계약유형코드',
  `dl_strdt` date DEFAULT NULL COMMENT '거래시작일자',
  `entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업체명',
  `bzmno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사업자번호',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `cntad` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연락처',
  `mail_adr` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소',
  `cr_strdt` date DEFAULT NULL COMMENT '계약시작일자',
  `cr_nddt` date DEFAULT NULL COMMENT '계약종료일자',
  `crdm_wrt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약서작성여부',
  `naamt` decimal(15,0) DEFAULT NULL COMMENT '계약금액',
  `cr_nd_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약종료여부',
  `bdg_ntacc_cd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '예산계정과목코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_gea_ta_cr_crst_00` (`st_yr`,`part_orgcd`,`orgcd`,`adm_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='총무계약현황';

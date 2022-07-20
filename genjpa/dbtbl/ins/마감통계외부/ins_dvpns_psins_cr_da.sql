--
-- Table structure for table `ins_dvpns_psins_cr_da`
--

DROP TABLE IF EXISTS `ins_dvpns_psins_cr_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_psins_cr_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_wrtdt` date NOT NULL COMMENT '자료작성일자',
  `da_wrt_seqno` decimal(10,0) NOT NULL COMMENT '자료작성순번',
  `incmp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손생보구분코드',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보험회사코드',
  `dvpns_ins_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보험구분코드',
  `dvpns_cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원계약사고구분코드',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `cmpu_inp_mdfdt` date DEFAULT NULL COMMENT '전산입력수정일자',
  `dvpns_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원상품코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약상태코드',
  `cr_dt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약세부상태코드',
  `cr_stadt` date DEFAULT NULL COMMENT '계약상태일자',
  `dvpns_cvrcl_cr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원담보별계약상태코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보코드',
  `cvr_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보상태코드',
  `cvr_ndsdt` date DEFAULT NULL COMMENT '담보배서일자',
  `dvpns_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원담보코드',
  `isamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '가입금액',
  `drve_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_psins_cr_da_00` (`da_wrtdt`,`da_wrt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원인보험계약자료';

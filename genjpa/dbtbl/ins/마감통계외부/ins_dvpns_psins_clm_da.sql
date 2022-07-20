--
-- Table structure for table `ins_dvpns_psins_clm_da`
--

DROP TABLE IF EXISTS `ins_dvpns_psins_clm_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_psins_clm_da` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `da_wrtdt` date NOT NULL COMMENT '자료작성일자',
  `da_wrt_seqno` decimal(10,0) NOT NULL COMMENT '자료작성순번',
  `incmp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손생보구분코드',
  `dvpns_ins_cmpcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보험회사코드',
  `dvpns_ins_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원보험구분코드',
  `dvpns_cr_clm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원계약사고구분코드',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자식별번호',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `clmdt` date DEFAULT NULL COMMENT '사고일자',
  `dvpns_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원상품코드',
  `gdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품명',
  `jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업코드',
  `dvpns_py_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원지급구분코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ppdt` date DEFAULT NULL COMMENT '계상일자',
  `dvpns_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원담보코드',
  `ibamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '보험금액',
  `clmno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_dvpns_psins_clm_da_00` (`da_wrtdt`,`da_wrt_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원인보험사고자료';

--
-- Table structure for table `ins_cmins_ptntl_pf_da`
--

DROP TABLE IF EXISTS `ins_cmins_ptntl_pf_da`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cmins_ptntl_pf_da` (
  `cls_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '마감년월',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `incm_prm_cr_seqno` decimal(5,0) NOT NULL COMMENT '수입보험료발생순번',
  `dh_stf_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원유형코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `rn_rtro_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '원수수재계약구분코드',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상품코드',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `qtrt` decimal(12,6) NOT NULL COMMENT '지분율',
  `rn_prm` decimal(17,2) NOT NULL COMMENT '원수보험료',
  `cn_rtamt` decimal(17,2) NOT NULL COMMENT '해약환급금액',
  `re_prm` decimal(17,2) NOT NULL COMMENT '출재보험료',
  `re_cn_rtamt` decimal(15,0) NOT NULL COMMENT '출재해약환급금액',
  `re_cm` decimal(17,2) NOT NULL COMMENT '출재수수료',
  `aw_pyamt` decimal(15,0) NOT NULL COMMENT '수당지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cls_yymm`,`plyno`,`incm_prm_cr_seqno`,`dh_stf_tpcd`,`dh_stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일반보험잠재수익기초자료';

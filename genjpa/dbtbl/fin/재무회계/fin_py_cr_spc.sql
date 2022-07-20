--
-- Table structure for table `fin_py_cr_spc`
--

DROP TABLE IF EXISTS `fin_py_cr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_py_cr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_crno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '지급발생번호',
  `py_cr_spc_seqno` decimal(5,0) NOT NULL COMMENT '지급발생내역순번',
  `py_spccd_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급내역코드구분코드',
  `py_spccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급내역코드',
  `mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '화폐코드',
  `ppdt` date NOT NULL COMMENT '계상일자',
  `py_spc_woamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지급내역원화금액',
  `py_spc_fcamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '지급내역외화금액',
  `ap_xcrt` decimal(12,6) NOT NULL DEFAULT '1.000000' COMMENT '적용환율',
  `prv_pvl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기계상여부',
  `py_bjno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지급대상번호',
  `ins_imcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목코드',
  `bsns_cnnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호구분코드',
  `bsns_cnnno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무관련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_fin_py_cr_spc_00` (`py_crno`,`py_cr_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1889 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급발생내역';

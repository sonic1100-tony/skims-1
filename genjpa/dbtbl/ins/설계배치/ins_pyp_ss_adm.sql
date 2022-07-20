--
-- Table structure for table `ins_pyp_ss_adm`
--

DROP TABLE IF EXISTS `ins_pyp_ss_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_pyp_ss_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `st_ariv_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '시기도래업무구분코드',
  `pym_seq` decimal(5,0) NOT NULL COMMENT '납입회차',
  `ss_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '발행대상구분코드',
  `ss_bjno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '발행대상번호',
  `gir_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지로구분코드',
  `ssdt` date DEFAULT NULL COMMENT '발행일자',
  `st_aridt` date DEFAULT NULL COMMENT '시기도래일자',
  `wrdmp_snddt` date DEFAULT NULL COMMENT '최고문발송일자',
  `npy_cnldt` date DEFAULT NULL COMMENT '미납입해지일자',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취급직원번호',
  `ap_prm` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '적용보험료',
  `bfcr_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약증권번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_pyp_ss_adm_00` (`plyno`,`st_ariv_bsns_flgcd`,`pym_seq`,`ss_bj_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='시기도래관리';

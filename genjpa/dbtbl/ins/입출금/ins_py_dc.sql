--
-- Table structure for table `ins_py_dc`
--

DROP TABLE IF EXISTS `ins_py_dc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_py_dc` (
  `aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `py_dc_no` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급공제번호',
  `py_dc_no_sorc_cd` varchar(2) COLLATE utf8mb4_bin NOT NULL COMMENT '지급공제번호출처코드',
  `dc_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '공제항목코드',
  `dc_it_seqno` decimal(5,0) NOT NULL DEFAULT '1' COMMENT '공제항목순번',
  `uiamt` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '공제금액',
  `nt_cc_strdt` date DEFAULT NULL COMMENT '이자산출시작일자',
  `nt_cc_nddt` date DEFAULT NULL COMMENT '이자산출종료일자',
  `py_dc_cr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급공제발생구분코드',
  `fina_rn_dl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재무원수처리여부',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_py_dc_00` (`py_dc_no`,`py_dc_no_sorc_cd`,`dc_itcd`,`dc_it_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급공제';

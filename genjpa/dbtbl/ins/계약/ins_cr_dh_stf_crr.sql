--
-- Table structure for table `ins_cr_dh_stf_crr`
--

DROP TABLE IF EXISTS `ins_cr_dh_stf_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_dh_stf_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `dh_stf_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원유형코드',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ndsno` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '배서번호',
  `vald_nds_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효배서여부',
  `nds_ap_str_dthms` datetime NOT NULL COMMENT '배서승인시작일시',
  `nds_ap_nd_dthms` datetime NOT NULL COMMENT '배서승인종료일시',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보종군코드',
  `tabf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관전취급직원번호',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `prs_dh_stf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대표취급직원여부',
  `qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '지분율',
  `ta_crno` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관발생번호',
  `pym_seq` decimal(5,0) DEFAULT NULL COMMENT '납입회차',
  `bzcs_qtrt` decimal(12,6) NOT NULL DEFAULT '0.000000' COMMENT '사업비지분율',
  `cnrdt` date DEFAULT NULL COMMENT '계약일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_dh_stf_crr_00` (`plyno`,`dh_stf_tpcd`,`dh_stfno`,`ap_nddt`,`ap_strdt`,`ndsno`),
  KEY `idx_ins_cr_dh_stf_crr_03` (`plyno`,`ndsno`,`dh_stf_tpcd`,`dh_stfno`),
  KEY `idx_ins_cr_dh_stf_crr_10` (`dh_stfno`,`dh_stf_tpcd`,`ikd_grpcd`,`ap_nddt`,`cnrdt`,`plyno`)
) ENGINE=InnoDB AUTO_INCREMENT=83950 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약취급직원이력';

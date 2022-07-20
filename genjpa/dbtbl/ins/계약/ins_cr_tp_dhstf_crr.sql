--
-- Table structure for table `ins_cr_tp_dhstf_crr`
--

DROP TABLE IF EXISTS `ins_cr_tp_dhstf_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_tp_dhstf_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cr_load_dthms` datetime NOT NULL COMMENT '계약적재일시',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `usrno` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용인번호',
  `taaf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후취급직원번호',
  `taaf_usrno` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후사용인번호',
  `ndsno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서번호',
  `ikd_grpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종군코드',
  `ta_crno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '이관발생번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_cr_tp_dhstf_crr_00` (`cr_load_dthms`,`plyno`,`dh_stfno`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약TP취급직원이력';

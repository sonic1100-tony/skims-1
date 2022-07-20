--
-- Table structure for table `ins_cr_same_ply_gp`
--

DROP TABLE IF EXISTS `ins_cr_same_ply_gp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_cr_same_ply_gp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `same_ply_gpno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '동일증권그룹번호',
  `nrdps_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자식별번호',
  `ins_clstr` date NOT NULL COMMENT '보험종기',
  `dh_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '취급직원번호',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ins_itm_smccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보험종목소분류코드',
  `same_ply_is_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권가입유형코드',
  `same_ply_is_dtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권가입세부코드',
  `ch_cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변경차량/차대번호',
  `plyno_or_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호/설계번호',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `same_ply_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일증권상태코드',
  `bfcr_iscmp` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약가입회사',
  `bfcr_dvpns_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약개발원증권번호',
  `bfcr_ins_st` date DEFAULT NULL COMMENT '전계약보험시기',
  `bfcr_ins_clstr` date DEFAULT NULL COMMENT '전계약보험종기',
  `bfcr_dc_xc_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전계약할인할증등급코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_cr_same_ply_gp_00` (`same_ply_gpno`,`nrdps_dscno`,`ins_clstr`,`dh_stfno`,`carno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차동일증권그룹';

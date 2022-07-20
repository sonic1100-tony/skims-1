--
-- Table structure for table `ins_spc_adm_bj`
--

DROP TABLE IF EXISTS `ins_spc_adm_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_spc_adm_bj` (
  `spc_adm_bj_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특별관리대상구분코드',
  `spc_adm_bj_vl` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특별관리대상값',
  `spc_adm_grdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '특별관리등급코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `spc_adm_rgt_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별관리등록사유코드',
  `spc_adm_rgt_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특별관리등록상태코드',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `stf_info_rltn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원정보연계여부',
  `adm_it_numvl` decimal(17,2) DEFAULT NULL COMMENT '관리항목숫자값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`spc_adm_bj_flgcd`,`spc_adm_bj_vl`,`spc_adm_grdcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='특별관리대상';

--
-- Table structure for table `ccm_py_dm_nvcs_trfx`
--

DROP TABLE IF EXISTS `ccm_py_dm_nvcs_trfx`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_py_dm_nvcs_trfx` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `adm_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '관리일련번호',
  `rr_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속기관코드',
  `rr_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '귀속팀기관코드',
  `py_bj_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '지급대상직원번호',
  `py_dm_nvcs_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '지급손해조사비항목코드',
  `crdt` date NOT NULL COMMENT '발생일자',
  `rqamt` decimal(15,0) DEFAULT NULL COMMENT '신청금액',
  `prv_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재구분코드',
  `prv_dthms` datetime DEFAULT NULL COMMENT '결재일시',
  `prvmn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결재자직원번호',
  `cmp_py_rltno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상지급연계번호',
  `trv_are_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장지역명',
  `trv_str_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장시작시각',
  `trv_nd_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출장종료시각',
  `trv_dst` decimal(10,0) DEFAULT NULL COMMENT '출장거리',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_py_dm_nvcs_trfx_00` (`adm_yymm`,`adm_sno`,`rr_orgcd`,`rr_tm_orgcd`,`py_bj_stfno`,`py_dm_nvcs_itcd`,`crdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지급손해조사비교통비';

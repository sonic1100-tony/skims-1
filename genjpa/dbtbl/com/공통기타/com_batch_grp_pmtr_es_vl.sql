--
-- Table structure for table `com_batch_grp_pmtr_es_vl`
--

DROP TABLE IF EXISTS `com_batch_grp_pmtr_es_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_grp_pmtr_es_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `batch_wrk_gpno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업그룹번호',
  `boddt` date NOT NULL COMMENT '배치오더일자',
  `pmtr_seqno` decimal(3,0) NOT NULL COMMENT '파라미터순번',
  `pmtr_varb_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '파라미터변수명',
  `pmtr_varb_vl` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '파라미터변수값',
  `essn_vrf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '필수검증여부',
  `admr_vrf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자검증여부',
  `admr_vrf_dt` date DEFAULT NULL COMMENT '관리자검증일자',
  `admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_batch_grp_pmtr_es_vl_00` (`batch_wrk_gpno`,`boddt`,`pmtr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=1705 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치그룹파라미터설정값';

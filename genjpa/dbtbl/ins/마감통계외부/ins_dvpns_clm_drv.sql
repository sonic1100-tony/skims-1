--
-- Table structure for table `ins_dvpns_clm_drv`
--

DROP TABLE IF EXISTS `ins_dvpns_clm_drv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_clm_drv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `dvpns_plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '개발원증권번호',
  `clm_seqno` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '사고순번',
  `nrdps_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자구분코드',
  `nrdcd` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자코드',
  `cr_dbcr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량차대구분코드',
  `cr_or_chsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량/차대번호',
  `cr_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량용도코드',
  `catcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차종코드',
  `cnmcd` varchar(11) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차명코드',
  `yytp` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연식',
  `ndv_gr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개별단체구분코드',
  `rgtnm_nrdps_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자물건구분코드',
  `rgtnm_nrdps_is_crrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자가입경력코드',
  `rgtnm_nrdps_frg_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자외국인여부',
  `rgtnm_nrdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기명피보험자명',
  `clmdr_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자성명',
  `clmdr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자주민번호',
  `clmdr_relcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자관계코드',
  `clmdr_licno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자면허번호',
  `clmdr_specd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고운전자종별코드',
  `ins_st` date DEFAULT NULL COMMENT '보험시기',
  `ins_clstr` date DEFAULT NULL COMMENT '보험종기',
  `drv_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전자한정특약코드',
  `bdl_trt_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄특약가입여부',
  `pyp_trt_isyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분납특약가입여부',
  `spcf_obj_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '특정물건구분코드',
  `clm_dthms` datetime DEFAULT NULL COMMENT '사고일시',
  `rpbl_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '책임사고여부',
  `bdin_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대인사고여부',
  `prdm_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대물사고여부',
  `obi_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자손사고여부',
  `cr_clm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차사고여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ins_dvpns_clm_drv_00` (`dvpns_plyno`,`clm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원사고운전자';

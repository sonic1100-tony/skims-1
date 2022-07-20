--
-- Table structure for table `gea_ase_rq_bj`
--

DROP TABLE IF EXISTS `gea_ase_rq_bj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gea_ase_rq_bj` (
  `reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '요청번호',
  `rq_bj_seqno` decimal(3,0) NOT NULL COMMENT '요청대상순번',
  `rq_supt_seqno` decimal(3,0) DEFAULT NULL COMMENT '요청지원순번',
  `itmcd` varchar(15) COLLATE utf8mb4_bin NOT NULL COMMENT '품목코드',
  `aseno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산번호',
  `ase_rq_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '자산요청유형코드',
  `ase_supt_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자산지원방법코드',
  `dl_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리업체명',
  `dl_prdt` date DEFAULT NULL COMMENT '처리예정일자',
  `mvaf_org_ntty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후기관실체구분코드',
  `mvaf_adm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후관리기관코드',
  `mvaf_pstno` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후우편번호',
  `mvaf_ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후기본주소',
  `mvaf_mn_bldno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후주건물번호',
  `mvaf_sub_bldno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후부건물번호',
  `mvaf_dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후상세주소',
  `mvaf_ref_it` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이동후참고항목',
  `dmd_cnf_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자확인결과코드',
  `dmd_cnfdt` date DEFAULT NULL COMMENT '요청자확인일자',
  `rq_cnfm_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청확인자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`reqno`,`rq_bj_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자산요청대상';

--
-- Table structure for table `com_batch_wrk`
--

DROP TABLE IF EXISTS `com_batch_wrk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_batch_wrk` (
  `batch_admno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치관리번호',
  `batch_bsns_lclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치업무대분류코드',
  `ctlm_batch_id` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '컨트롤M배치ID',
  `batch_wrknm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업명',
  `batch_wrk_xpnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업설명',
  `batch_rgtdt` date NOT NULL COMMENT '배치등록일자',
  `batch_wrk_cyccd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업주기코드',
  `batch_wrk_cyc_dt` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '배치작업주기상세',
  `smfl_crt_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT 'SAM파일생성여부',
  `smfl_psinf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일개인정보유무',
  `smfl_ecpn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일암호화여부',
  `smfl_mask_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일마스킹여부',
  `smfl_ers_cyccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일삭제주기코드',
  `smfl_usecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SAM파일용도코드',
  `chrps_pst_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자소속분류코드',
  `batch_chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '배치담당자직원번호',
  `batch_us_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '배치사용여부',
  `pmtr_vrf_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '파라미터검증대상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`batch_admno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='배치작업';

--
-- Table structure for table `cus_cvap_ctm_info_adm_prv`
--

DROP TABLE IF EXISTS `cus_cvap_ctm_info_adm_prv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_cvap_ctm_info_adm_prv` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '주민등록번호',
  `sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '일련번호',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `rq_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청부서장직원번호',
  `rq_admr_apdt` date DEFAULT NULL COMMENT '요청부서장승인일자',
  `cnf_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인직원번호',
  `cnfdt` date DEFAULT NULL COMMENT '확인일자',
  `cnf_admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인부서장직원번호',
  `cnf_admr_apdt` date DEFAULT NULL COMMENT '확인부서장승인일자',
  `ctm_info_ers_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보삭제처리구분코드',
  `ctm_info_ers_retn_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보삭제반려사유',
  `ctm_info_rest_rq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객정보복구요청구분코드',
  `adx_file_pth` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '첨부파일경로',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_cvap_ctm_info_adm_prv_00` (`ctmno`,`rsno`,`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원고객정보관리결재';

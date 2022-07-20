--
-- Table structure for table `com_file_updn_rq_adm`
--

DROP TABLE IF EXISTS `com_file_updn_rq_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_file_updn_rq_adm` (
  `updn_reqno` varchar(11) COLLATE utf8mb4_bin NOT NULL COMMENT '업다운요청번호',
  `dmd_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청자직원번호',
  `reqdt` date DEFAULT NULL COMMENT '요청일자',
  `updn_syscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업다운시스템코드',
  `updn_bsncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업다운업무코드',
  `ap_cpldt` date DEFAULT NULL COMMENT '승인완료일자',
  `updn_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업다운결재상태코드',
  `bsns_lclcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무대분류코드',
  `bsns_mdccd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무중분류코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직원번호',
  `prv_info_seqno` decimal(5,0) DEFAULT NULL COMMENT '결재정보순번',
  `psn_info_incld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보포함여부',
  `dnld_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '다운로드직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`updn_reqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='파일업다운요청관리';

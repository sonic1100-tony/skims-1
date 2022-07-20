--
-- Table structure for table `ins_crins_cr_rcn`
--

DROP TABLE IF EXISTS `ins_crins_cr_rcn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_crins_cr_rcn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nrdps_rsno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '피보험자주민번호',
  `carno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '차량번호',
  `ins_st` date NOT NULL COMMENT '보험시기',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `pl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '설계구분코드',
  `cr_rcn_fr_plno` varchar(17) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량실사최초설계번호',
  `cr_rcn_fr_plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량실사최초증권번호',
  `cr_rcn_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량실사상태코드',
  `rq_dthms` datetime DEFAULT NULL COMMENT '요청일시',
  `rqfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요청직원번호',
  `hp_dthms` datetime DEFAULT NULL COMMENT '희망일시',
  `ba_adr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기본주소',
  `dtadr` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세주소',
  `prdm_cmp_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대물보상팀기관코드',
  `bdin_cmp_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대인보상팀기관코드',
  `cmp_cnr_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상센터기관코드',
  `cr_rcn_memo` varchar(400) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '차량실사메모',
  `toucl_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '터치콜여부',
  `toucl_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '터치콜입력직원번호',
  `pm_dthms` datetime DEFAULT NULL COMMENT '약속일시',
  `cplt_dthms` datetime DEFAULT NULL COMMENT '완료일시',
  `cplt_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '완료입력직원번호',
  `cmp_stf_memo` varchar(400) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상직원메모',
  `ccl_reqdt` date DEFAULT NULL COMMENT '취소요청일자',
  `ccl_rq_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소요청직원번호',
  `ccl_rs` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소사유',
  `ccl_dcn_dthms` datetime DEFAULT NULL COMMENT '취소확정일시',
  `ccl_dcn_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '취소확정직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_crins_cr_rcn_00` (`nrdps_rsno`,`carno`,`ins_st`,`crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='자동차보험차량실사';

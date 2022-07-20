--
-- Table structure for table `lse_hprm_dmas_dlvr`
--

DROP TABLE IF EXISTS `lse_hprm_dmas_dlvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_dmas_dlvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `dlvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교부여부',
  `dlvr_fail_rs` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교부실패사유',
  `dlvr_bjpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교부대상코드',
  `dlvr_mtd_et_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교부방법기타내용',
  `dlvr_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교부방법코드',
  `dlvr_bj_et_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '교부대상기타내용',
  `nrdps_dlvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자교부여부',
  `nrdps_dlvr_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자교부방법코드',
  `crt_dlvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자교부여부',
  `crt_dlvr_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자교부방법코드',
  `victm_dlvr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자교부여부',
  `victm_dlvr_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자교부방법코드',
  `crt_dlvr_et_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자교부기타내용',
  `nrdps_dlvr_et_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피보험자교부기타내용',
  `victm_dlvr_et_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피해자교부기타내용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM손해사정교부';

--
-- Table structure for table `cus_ctm_cntrt_crr`
--

DROP TABLE IF EXISTS `cus_ctm_cntrt_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_cntrt_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `cntrt_dthms` datetime NOT NULL COMMENT '접촉일시',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cntrt_mncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '접촉수단코드',
  `cntps_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉자ID',
  `plyno` varchar(16) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '증권번호',
  `whol_bsns_dl_tpnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형명',
  `whol_bsns_dl_tp_dtnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전사업무처리유형상세명',
  `ntc_bjps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상자구분코드',
  `cntrt_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접촉처리구분코드',
  `isno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발급번호',
  `rqdt` date DEFAULT NULL COMMENT '신청일자',
  `ctm_cntrt_rcv_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객접촉수신내용',
  `doc_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'DOCID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `idx_cus_ctm_cntrt_crr_01` (`ctmno`,`cntrt_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=38206 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객접촉이력';

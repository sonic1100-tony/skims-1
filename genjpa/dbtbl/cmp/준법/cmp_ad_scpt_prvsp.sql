--
-- Table structure for table `cmp_ad_scpt_prvsp`
--

DROP TABLE IF EXISTS `cmp_ad_scpt_prvsp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_ad_scpt_prvsp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `scpt_rq_ty_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '스크립트요청형태구분코드',
  `reqdt` date NOT NULL COMMENT '요청일자',
  `rqog_cd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '요청기관코드',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `ad_scpt_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '광고스크립트코드',
  `rcp_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수기관코드',
  `cnf_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '확인여부',
  `rcpdt` date DEFAULT NULL COMMENT '접수일자',
  `ud_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사의견',
  `chr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당직원번호',
  `chrps_apdt` date DEFAULT NULL COMMENT '담당자승인일자',
  `admr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관리자직원번호',
  `admr_apdt` date DEFAULT NULL COMMENT '관리자승인일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cmp_ad_scpt_prvsp_00` (`scpt_rq_ty_flgcd`,`reqdt`,`rqog_cd`,`seqno`,`ad_scpt_cd`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='광고스크립트결재내역';

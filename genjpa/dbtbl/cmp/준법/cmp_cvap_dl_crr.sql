--
-- Table structure for table `cmp_cvap_dl_crr`
--

DROP TABLE IF EXISTS `cmp_cvap_dl_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_cvap_dl_crr` (
  `cvap_aid` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '민원AID',
  `cvap_rcpno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '민원접수번호',
  `cvap_dl_crr_seqno` decimal(20,0) NOT NULL COMMENT '민원처리이력순번',
  `cvap_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원구분코드',
  `cvap_rcpdt` date NOT NULL COMMENT '민원접수일자',
  `cvap_dl_ctn_iptdt` date DEFAULT NULL COMMENT '민원처리의견입력일자',
  `cvap_dl_ctn_inp_orgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원처리의견입력기관코드',
  `cvap_dl_ctn_inp_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원처리의견입력직원번호',
  `cvap_dl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원처리의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cvap_aid`),
  UNIQUE KEY `idx_cmp_cvap_dl_crr_00` (`cvap_rcpno`,`cvap_dl_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원처리이력';

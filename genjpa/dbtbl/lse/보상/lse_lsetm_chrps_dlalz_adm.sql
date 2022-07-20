--
-- Table structure for table `lse_lsetm_chrps_dlalz_adm`
--

DROP TABLE IF EXISTS `lse_lsetm_chrps_dlalz_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_chrps_dlalz_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자직원번호',
  `dlalz_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '근태유형코드',
  `rq_seqno` decimal(5,0) NOT NULL COMMENT '신청순번',
  `rq_strdt` date DEFAULT NULL COMMENT '신청시작일자',
  `rq_nddt` date DEFAULT NULL COMMENT '신청종료일자',
  `chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자기관코드',
  `rq_rs` varchar(1500) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신청사유',
  `trm_days` decimal(5,0) DEFAULT NULL COMMENT '기간일수',
  `ipps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력자기관코드',
  `sb_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체담당자직원번호',
  `sb_chrps_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대체담당자기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_chrps_dlalz_adm_00` (`chrps_stfno`,`dlalz_tpcd`,`rq_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사담당자근태관리';

--
-- Table structure for table `lse_ordr_chrps_ctn`
--

DROP TABLE IF EXISTS `lse_ordr_chrps_ctn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ordr_chrps_ctn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `ordr_mtt_seqno` decimal(5,0) NOT NULL COMMENT '지시사항순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `lsetm_ordr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사지시구분코드',
  `lsetm_ordr_mtt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사지시사항구분코드',
  `clm_dl_bsns_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사고처리업무유형코드',
  `idctr_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지시자직원번호',
  `ordr_dt` date DEFAULT NULL COMMENT '지시일자',
  `ordr_ctn_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지시의견내용',
  `chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_ordr_chrps_ctn_00` (`rcp_yymm`,`rcp_nv_seqno`,`ordr_mtt_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지시및담당자의견';

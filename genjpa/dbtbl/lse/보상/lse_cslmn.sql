--
-- Table structure for table `lse_cslmn`
--

DROP TABLE IF EXISTS `lse_cslmn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_cslmn` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `ikdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보종코드',
  `cslmn` decimal(17,2) NOT NULL DEFAULT '0.00' COMMENT '위자료',
  `cslmn_injr_rnkcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위자료상해급수코드',
  `cslmn_xcrt` decimal(12,6) DEFAULT NULL COMMENT '위자료할증율',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `dgn_wkct` decimal(5,0) DEFAULT NULL COMMENT '진단주수',
  `amt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '금액구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_cslmn_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`plyno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='위자료';

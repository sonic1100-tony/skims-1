--
-- Table structure for table `lse_mdcf`
--

DROP TABLE IF EXISTS `lse_mdcf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdcf` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `hsp_strdt` date DEFAULT NULL COMMENT '입원시작일자',
  `hsp_nddt` date DEFAULT NULL COMMENT '입원종료일자',
  `otp_dt` date DEFAULT NULL COMMENT '통원일자',
  `emamt` decimal(15,0) DEFAULT NULL COMMENT '청구금액',
  `non_appr_amt` decimal(17,2) DEFAULT NULL COMMENT '불인정금액',
  `appr_amt` decimal(15,0) DEFAULT NULL COMMENT '인정금액',
  `note_mtt` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고사항',
  `cvr_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담보종류구분코드',
  `rmdy_days` decimal(5,0) DEFAULT NULL COMMENT '치료일수',
  `py_rt` decimal(5,2) DEFAULT NULL COMMENT '지급비율',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdcf_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`clm_nv_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='치료비';

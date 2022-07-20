--
-- Table structure for table `lse_mdud_rmdy_cnn_spc`
--

DROP TABLE IF EXISTS `lse_mdud_rmdy_cnn_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_mdud_rmdy_cnn_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `mdud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사구분코드',
  `requ_seq` decimal(3,0) NOT NULL COMMENT '의뢰회차',
  `prg_seq` decimal(5,0) NOT NULL COMMENT '진행회차',
  `mdud_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사상세코드',
  `dlflg_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '처리구분코드',
  `crr_seqno` decimal(5,0) NOT NULL COMMENT '이력순번',
  `rmdy_strdt` date DEFAULT NULL COMMENT '치료시작일자',
  `rmdy_nddt` date DEFAULT NULL COMMENT '치료종료일자',
  `ref_da_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '참고자료내용',
  `hagth_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입통원구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_mdud_rmdy_cnn_spc_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`mdud_flgcd`,`requ_seq`,`prg_seq`,`mdud_dtcd`,`dlflg_cd`,`crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='의료심사치료관련내역';

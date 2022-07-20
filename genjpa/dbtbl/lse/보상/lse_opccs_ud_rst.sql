--
-- Table structure for table `lse_opccs_ud_rst`
--

DROP TABLE IF EXISTS `lse_opccs_ud_rst`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_opccs_ud_rst` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `trmt_spc_seqno` decimal(5,0) NOT NULL COMMENT '진료내역순번',
  `requ_seq` decimal(3,0) NOT NULL COMMENT '의뢰회차',
  `opccs_ud_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술비심사승인구분코드',
  `opccs_ud_cpmt_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술비심사보완유형코드',
  `opccs_ud_ctn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수술비심사의견',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_opccs_ud_rst_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`trmt_flgcd`,`trmt_spc_seqno`,`requ_seq`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수술비심사결과';

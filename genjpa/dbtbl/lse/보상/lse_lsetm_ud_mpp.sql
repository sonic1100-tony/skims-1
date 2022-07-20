--
-- Table structure for table `lse_lsetm_ud_mpp`
--

DROP TABLE IF EXISTS `lse_lsetm_ud_mpp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_lsetm_ud_mpp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `clm_nv_seqno` decimal(3,0) NOT NULL COMMENT '사고조사순번',
  `requ_seq` decimal(3,0) NOT NULL COMMENT '의뢰회차',
  `trmt_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '진료구분코드',
  `trmt_spc_seqno` decimal(5,0) NOT NULL COMMENT '진료내역순번',
  `prg_seq` decimal(5,0) NOT NULL COMMENT '진행회차',
  `mdud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사구분코드',
  `mdud_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '의료심사상세코드',
  `ud_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사여부',
  `ud_cn` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '심사내용',
  `md_yn_rstcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '조정여부결과코드',
  `lsetm_rtx_db_dm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '손사영수증중복청구여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_lsetm_ud_mpp_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`requ_seq`,`trmt_flgcd`,`trmt_spc_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손사심사매핑';

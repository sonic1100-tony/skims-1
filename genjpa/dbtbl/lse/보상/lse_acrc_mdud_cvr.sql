--
-- Table structure for table `lse_acrc_mdud_cvr`
--

DROP TABLE IF EXISTS `lse_acrc_mdud_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_acrc_mdud_cvr` (
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
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cvrcd` varchar(8) COLLATE utf8mb4_bin NOT NULL COMMENT '담보코드',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `obs_ch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해변경구분코드',
  `dm_dmamt` decimal(17,2) DEFAULT NULL COMMENT '청구손해액',
  `xiamt` decimal(17,2) DEFAULT NULL COMMENT '추산보험금',
  `pyamt` decimal(17,2) DEFAULT NULL COMMENT '지급금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_acrc_mdud_cvr_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`clm_nv_seqno`,`mdud_flgcd`,`requ_seq`,`prg_seq`,`mdud_dtcd`,`gdcd`,`plyno`,`cvrcd`,`clm_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정밀의료심사담보';

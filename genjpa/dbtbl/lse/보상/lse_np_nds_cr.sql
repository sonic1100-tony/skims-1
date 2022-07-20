--
-- Table structure for table `lse_np_nds_cr`
--

DROP TABLE IF EXISTS `lse_np_nds_cr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_np_nds_cr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `clm_ch_stdt` date DEFAULT NULL COMMENT '사고변경기준일자',
  `pym_xmp_bjyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제대상여부',
  `pym_xmp_nbj_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제미대상사유코드',
  `pym_xmp_nbj_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제미대상사유',
  `pym_xmp_clm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입면제사고담보코드',
  `rst_inp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '결과입력여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_np_nds_cr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clmps_seqno`,`plyno`,`cc_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='미지급배서계약';

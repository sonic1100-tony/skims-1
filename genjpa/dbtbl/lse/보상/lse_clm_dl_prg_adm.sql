--
-- Table structure for table `lse_clm_dl_prg_adm`
--

DROP TABLE IF EXISTS `lse_clm_dl_prg_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_dl_prg_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `plyno` varchar(16) COLLATE utf8mb4_bin NOT NULL COMMENT '증권번호',
  `clm_dl_prg_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고처리진행구분코드',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `clm_dl_prg_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고처리진행상태코드',
  `clm_prg_st_dtcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고진행상태세부코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_dl_prg_adm_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`plyno`,`clm_dl_prg_flgcd`,`ap_str_dthms`,`ap_nd_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=7775 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고처리진행관리';

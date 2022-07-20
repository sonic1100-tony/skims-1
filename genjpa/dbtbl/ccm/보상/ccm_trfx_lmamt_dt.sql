--
-- Table structure for table `ccm_trfx_lmamt_dt`
--

DROP TABLE IF EXISTS `ccm_trfx_lmamt_dt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_trfx_lmamt_dt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `adm_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '관리년월',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `tmcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '팀코드',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `adm_spc_seqno` decimal(3,0) NOT NULL COMMENT '관리내역순번',
  `chrct_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '인물구분코드',
  `jrd_are_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할구역명',
  `jrd_are_dst` decimal(7,2) DEFAULT NULL COMMENT '관할구역거리',
  `jrd_are_grd_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할구역등급코드',
  `jrd_are_grdcl_ba_amt` decimal(15,0) DEFAULT NULL COMMENT '관할구역등급별기본금액',
  `jrd_are_dt_md_amt` decimal(15,0) DEFAULT NULL COMMENT '관할구역세부조정금액',
  `jrd_are_spcl_md_amt` decimal(15,0) DEFAULT NULL COMMENT '관할구역특수조정금액',
  `jrd_are_fnl_lm_amt` decimal(15,0) DEFAULT NULL COMMENT '관할구역최종한도금액',
  `jrd_are_amt_md_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관할구역금액조정사유',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_trfx_lmamt_dt_00` (`adm_yymm`,`orgcd`,`tmcd`,`stfno`,`adm_spc_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='교통비한도금액상세';

--
-- Table structure for table `ccm_obs_inr`
--

DROP TABLE IF EXISTS `ccm_obs_inr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_obs_inr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `obs_ud_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해심사구분코드',
  `ch_seq` decimal(10,0) NOT NULL COMMENT '변경회차',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목코드',
  `obs_itnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '장해항목명',
  `amvt_ever_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '한시영구구분코드',
  `obs_gri` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해급항',
  `obsrt` decimal(5,2) DEFAULT NULL COMMENT '장해율',
  `ap_obs_rt` decimal(5,2) NOT NULL COMMENT '적용장해율',
  `obs_trm_mc` decimal(5,0) DEFAULT NULL COMMENT '장해기간월수',
  `obs_strdt` date DEFAULT NULL COMMENT '장해시작일자',
  `obs_nddt` date DEFAULT NULL COMMENT '장해종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_obs_inr_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`obs_ud_flgcd`,`ch_seq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장해통합';

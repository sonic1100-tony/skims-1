--
-- Table structure for table `ccm_obs_it`
--

DROP TABLE IF EXISTS `ccm_obs_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_obs_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `optdc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '임의확정구분코드',
  `sel_obs_nv_seqno` decimal(3,0) NOT NULL COMMENT '후유장해조사순번',
  `obs_it_seqno` decimal(3,0) NOT NULL COMMENT '장해항목순번',
  `itnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '항목명',
  `obsrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '장해율',
  `cnbrt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '기여율',
  `ap_obs_rt` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '적용장해율',
  `obs_strdt` date DEFAULT NULL COMMENT '장해시작일자',
  `obs_trm_mc` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '장해기간월수',
  `obs_nddt` date DEFAULT NULL COMMENT '장해종료일자',
  `amvt_ever_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '한시영구구분코드',
  `obs_ap_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '장해적용구분코드',
  `obs_gri` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해급항',
  `obs_itcd` varchar(12) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '장해항목코드',
  `mcbd_jbcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '맥브라이드직업코드',
  `bd_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '신체부위코드',
  `jb_cfc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '직업계수코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_obs_it_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`optdc_flgcd`,`sel_obs_nv_seqno`,`obs_it_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='장해항목';

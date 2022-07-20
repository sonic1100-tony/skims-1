--
-- Table structure for table `lse_clm_ntc_crr`
--

DROP TABLE IF EXISTS `lse_clm_ntc_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_clm_ntc_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `clmps_seqno` decimal(3,0) NOT NULL COMMENT '사고자순번',
  `ntc_crr_seqno` decimal(3,0) NOT NULL COMMENT '안내이력순번',
  `ntc_bjps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상자구분코드',
  `ntc_bjps_ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상자고객번호',
  `ntc_bjps_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상자주민번호',
  `ntc_bjps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내대상자성명',
  `ntc_st_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내시기구분코드',
  `ntc_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내유형구분코드',
  `ntc_mtd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내방법구분코드',
  `ntc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내직원번호',
  `ntc_dt` date DEFAULT NULL COMMENT '안내일자',
  `ntc_hhmm` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내시분',
  `ntc_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내내용',
  `ntcgu_pstnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내자소속명',
  `ntcgu_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '안내자성명',
  `rec_dthms` datetime DEFAULT NULL COMMENT '녹취일시',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_clm_ntc_crr_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`clmps_seqno`,`ntc_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사고안내이력';

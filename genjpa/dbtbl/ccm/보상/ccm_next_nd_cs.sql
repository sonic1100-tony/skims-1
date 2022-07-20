--
-- Table structure for table `ccm_next_nd_cs`
--

DROP TABLE IF EXISTS `ccm_next_nd_cs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_next_nd_cs` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `dmge_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피해서열',
  `cc_st_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '산출기준구분코드',
  `cc_seq` decimal(3,0) NOT NULL COMMENT '산출회차',
  `next_cs_asit_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '향후비용사정항목구분코드',
  `next_nd_cs_seqno` decimal(3,0) NOT NULL COMMENT '향후소요비용순번',
  `unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '단가',
  `qant` decimal(5,0) NOT NULL DEFAULT '0' COMMENT '수량',
  `ifamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추정금액',
  `surgy_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외과항목코드',
  `surgy_itnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '외과항목명',
  `plst_parcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성형부위코드',
  `plst_parnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '성형부위명',
  `appr_cm` decimal(5,0) DEFAULT NULL COMMENT '인정CM',
  `cm_unprc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT 'CM단가',
  `avg_rol` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT '평균여명',
  `next_supcs_cfc` decimal(13,10) NOT NULL DEFAULT '0.0000000000' COMMENT '향후보철비계수',
  `supm_appr_tthct` decimal(3,0) DEFAULT NULL COMMENT '보철인정치아갯수',
  `ptth_prc` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '치당가격',
  `fsti_supm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '초회보철유무',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_next_nd_cs_00` (`rcp_yymm`,`rcp_nv_seqno`,`clm_cvrcd`,`dmge_rank`,`cc_st_flgcd`,`cc_seq`,`next_cs_asit_flgcd`,`next_nd_cs_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='향후소요비용';

--
-- Table structure for table `lse_dm_rde_gnrz_vl`
--

DROP TABLE IF EXISTS `lse_dm_rde_gnrz_vl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_dm_rde_gnrz_vl` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `dm_seqno` decimal(5,0) NOT NULL COMMENT '청구순번',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `clm_dm_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고청구유형코드',
  `injt_trpa_bj_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '부당진료비대상여부',
  `chrps_gnrz_ctn` varchar(1000) COLLATE utf8mb4_bin NOT NULL COMMENT '담당자종합의견',
  `vlr_pst_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자소속기관코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_dm_rde_gnrz_vl_00` (`rcp_yymm`,`rcp_nv_seqno`,`dm_seqno`,`stfno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='손해절감종합평가';

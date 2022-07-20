--
-- Table structure for table `lse_hprm_drct_mtd`
--

DROP TABLE IF EXISTS `lse_hprm_drct_mtd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_drct_mtd` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prprt_dt_seqno` decimal(3,0) NOT NULL COMMENT '재물상세순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `wrk_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공사구분코드',
  `prdt_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제품명',
  `std` varchar(30) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '규격',
  `unt` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '단위',
  `qant` decimal(5,0) DEFAULT NULL COMMENT '수량',
  `matcs_unprc` decimal(15,0) DEFAULT NULL COMMENT '재료비단가',
  `matcs` decimal(15,0) DEFAULT NULL COMMENT '재료비',
  `lbrxp_unprc` decimal(15,0) DEFAULT NULL COMMENT '노무비단가',
  `lbrxp` decimal(15,0) DEFAULT NULL COMMENT '노무비',
  `bg_unprc` decimal(15,0) DEFAULT NULL COMMENT '경비단가',
  `bg` decimal(15,0) DEFAULT NULL COMMENT '경비',
  `re_sply_unprc` decimal(15,0) DEFAULT NULL COMMENT '재조달단가',
  `re_sply_vlamt` decimal(17,5) DEFAULT NULL COMMENT '재조달가액',
  `dm_qant` decimal(5,0) DEFAULT NULL COMMENT '손해수량',
  `dmamt` decimal(17,2) DEFAULT NULL COMMENT '손해액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_drct_mtd_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prprt_dt_seqno`,`seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM직접방법';

--
-- Table structure for table `lse_hprm_plst_par`
--

DROP TABLE IF EXISTS `lse_hprm_plst_par`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_plst_par` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `lb_dt_seqno` decimal(3,0) NOT NULL COMMENT '배상상세순번',
  `plst_parcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '성형부위코드',
  `plst_cnmtr` decimal(3,0) DEFAULT NULL COMMENT '성형센티미터',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_plst_par_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`lb_dt_seqno`,`plst_parcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM성형부위';

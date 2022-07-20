--
-- Table structure for table `lse_hprm_dmamt`
--

DROP TABLE IF EXISTS `lse_hprm_dmamt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_hprm_dmamt` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `hprm_clm_nv_seqno` decimal(3,0) NOT NULL COMMENT 'HPRM사고조사순번',
  `prprt_dt_seqno` decimal(3,0) NOT NULL COMMENT '재물상세순번',
  `seqno` decimal(5,0) NOT NULL COMMENT '순번',
  `qest_amt` decimal(15,0) DEFAULT NULL COMMENT '적산금액',
  `sb_elmnt_csamt` decimal(15,0) DEFAULT NULL COMMENT '잔존물제거비용금액',
  `eamt` decimal(15,0) DEFAULT NULL COMMENT '견적금액',
  `rest_amt` decimal(15,0) DEFAULT NULL COMMENT '복구금액',
  `diamt` decimal(15,0) DEFAULT NULL COMMENT '차액금액',
  `qest_pw_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적산공정코드',
  `qest_pw_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '적산공정명',
  `sb_elmnt_pw_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔존물제거공정코드',
  `sb_elmnt_pw_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '잔존물제거공정명',
  `dml_pw_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '철거공정코드',
  `dml_pw_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '철거공정명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_lse_hprm_dmamt_00` (`rcp_yymm`,`rcp_nv_seqno`,`hprm_clm_nv_seqno`,`prprt_dt_seqno`,`seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='HPRM손해액';

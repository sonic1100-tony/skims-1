--
-- Table structure for table `ccm_jg_piamt_cal`
--

DROP TABLE IF EXISTS `ccm_jg_piamt_cal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_jg_piamt_cal` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `jg_seqno` decimal(5,0) NOT NULL COMMENT '판결순번',
  `bnd_pcamt` decimal(15,0) DEFAULT NULL COMMENT '채권원금',
  `cs_amt` decimal(17,2) DEFAULT NULL COMMENT '비용금액',
  `adamt` decimal(15,0) DEFAULT NULL COMMENT '가산금액',
  `nt_cal_st` date DEFAULT NULL COMMENT '이자계산시기',
  `nt_cal_clstr` date DEFAULT NULL COMMENT '이자계산종기',
  `appr_trm_yyct` decimal(3,0) DEFAULT NULL COMMENT '인정기간년수',
  `appr_trm_days` decimal(15,0) DEFAULT NULL COMMENT '인정기간일수',
  `yy_appr_days` decimal(15,0) DEFAULT NULL COMMENT '년인정일수',
  `ntrt` decimal(5,2) DEFAULT NULL COMMENT '이자율',
  `bnd_ntamt` decimal(15,0) DEFAULT NULL COMMENT '채권이자금액',
  `bnd_smamt` decimal(15,0) DEFAULT NULL COMMENT '채권합계액',
  `idm_examt` decimal(15,0) DEFAULT NULL COMMENT '구상환입금액',
  `idm_amt_tblam` decimal(15,0) DEFAULT NULL COMMENT '구상금잔액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_jg_piamt_cal_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`jg_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='판결원리금계산';

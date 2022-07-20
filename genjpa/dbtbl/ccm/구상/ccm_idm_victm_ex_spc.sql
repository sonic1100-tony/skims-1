--
-- Table structure for table `ccm_idm_victm_ex_spc`
--

DROP TABLE IF EXISTS `ccm_idm_victm_ex_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_victm_ex_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `ex_ordr` decimal(5,0) NOT NULL COMMENT '환입순차',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `idm_victm_seqno` decimal(3,0) NOT NULL COMMENT '구상피해자순번',
  `ex_bnd_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입채권원금',
  `ex_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입이자금액',
  `ex_csamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입비용금액',
  `examt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입금액합계',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_victm_ex_spc_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`,`ex_ordr`,`clm_cvrcd`,`idm_victm_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상피해자환입내역';

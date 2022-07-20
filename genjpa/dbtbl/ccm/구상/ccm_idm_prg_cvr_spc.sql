--
-- Table structure for table `ccm_idm_prg_cvr_spc`
--

DROP TABLE IF EXISTS `ccm_idm_prg_cvr_spc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_prg_cvr_spc` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `idm_victm_seqno` decimal(3,0) NOT NULL COMMENT '구상피해자순번',
  `idm_prg_sno` decimal(10,0) NOT NULL COMMENT '구상진행일련번호',
  `emamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '청구금액',
  `dsamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '결정금액',
  `rqamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '신청금액',
  `sdamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '배당금액',
  `rq_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '요청원금액',
  `dlay_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '지연이자금액',
  `rqamt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '의뢰금액합계',
  `ryamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '회수금액',
  `tab_cs` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '추심비용',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_prg_cvr_spc_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`idm_victm_seqno`,`idm_prg_sno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상진행담보내역';

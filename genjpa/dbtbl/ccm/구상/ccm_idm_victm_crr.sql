--
-- Table structure for table `ccm_idm_victm_crr`
--

DROP TABLE IF EXISTS `ccm_idm_victm_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_victm_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `idm_victm_seqno` decimal(3,0) NOT NULL COMMENT '구상피해자순번',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `idm_victm_stcd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '구상피해자상태코드',
  `idm_victm_stch_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT '*' COMMENT '구상피해자상태변경사유코드',
  `idm_xpamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '구상예상금액',
  `idm_uramt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '구상발생금액',
  `ex_bnd_pcamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입채권원금',
  `ex_ntamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입이자금액',
  `ex_csamt` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입비용금액',
  `examt_sm` decimal(15,0) NOT NULL DEFAULT '0' COMMENT '환입금액합계',
  `idm_av_tm_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상실적팀기관코드',
  `idmdm_chrps_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상피해담당자직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_victm_crr_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`idm_victm_seqno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상피해자이력';

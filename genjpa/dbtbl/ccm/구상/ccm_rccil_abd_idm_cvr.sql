--
-- Table structure for table `ccm_rccil_abd_idm_cvr`
--

DROP TABLE IF EXISTS `ccm_rccil_abd_idm_cvr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_rccil_abd_idm_cvr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rccil_abd_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '화해포기년도',
  `rccil_abd_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '화해포기일련번호',
  `rccil_abd_seqno` decimal(3,0) NOT NULL COMMENT '화해포기순번',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상접수일련번호',
  `idm_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '구상담보코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `cidps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자명',
  `idm_uramt` decimal(15,0) DEFAULT '0' COMMENT '구상발생금액',
  `idm_examt` decimal(15,0) DEFAULT '0' COMMENT '구상환입금액',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_rccil_abd_idm_cvr_00` (`rccil_abd_yr`,`rccil_abd_sno`,`rccil_abd_seqno`),
  KEY `idx_ccm_rccil_abd_idm_cvr_10` (`idm_rcp_sno`,`idm_rcp_yymm`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='화해포기구상담보';

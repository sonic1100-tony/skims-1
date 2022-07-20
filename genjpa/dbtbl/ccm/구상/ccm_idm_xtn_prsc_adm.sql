--
-- Table structure for table `ccm_idm_xtn_prsc_adm`
--

DROP TABLE IF EXISTS `ccm_idm_xtn_prsc_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_idm_xtn_prsc_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `clm_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사고담보코드',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `de_nm_acq_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채무명의획득구분코드',
  `de_nm_acqdt` date DEFAULT NULL COMMENT '채무명의획득일자',
  `xtn_prsc_cpldt` date DEFAULT NULL COMMENT '소멸시효완료일자',
  `idm_prg_sno` decimal(10,0) DEFAULT NULL COMMENT '구상진행일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_idm_xtn_prsc_adm_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`clm_cvrcd`,`cidps_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='구상소멸시효관리';

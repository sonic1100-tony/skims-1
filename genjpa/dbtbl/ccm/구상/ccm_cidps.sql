--
-- Table structure for table `ccm_cidps`
--

DROP TABLE IF EXISTS `ccm_cidps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cidps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `idm_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수년월',
  `idm_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '구상접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `dmos_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국내외구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `rl_deb_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '실채무자여부',
  `cidps_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자유형코드',
  `cidps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자구분코드',
  `cidps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자명',
  `repy_bltcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변제능력코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호구분코드',
  `repy_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변제등급코드',
  `cidps_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자상태코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cidps_00` (`idm_rcp_yymm`,`idm_rcp_sno`,`cidps_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='피구상자';

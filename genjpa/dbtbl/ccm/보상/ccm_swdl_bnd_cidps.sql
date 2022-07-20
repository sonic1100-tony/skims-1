--
-- Table structure for table `ccm_swdl_bnd_cidps`
--

DROP TABLE IF EXISTS `ccm_swdl_bnd_cidps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_swdl_bnd_cidps` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `swdl_bnd_rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권접수년월',
  `swdl_bnd_rcp_sno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '사기채권접수일련번호',
  `cidps_rank` varchar(3) COLLATE utf8mb4_bin NOT NULL COMMENT '피구상자서열',
  `rl_deb_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실채무자여부',
  `cidps_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '피구상자명',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `ctm_brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객생년월일',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호구분코드',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주소',
  `et_mtt` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '기타사항',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_swdl_bnd_cidps_00` (`swdl_bnd_rcp_yymm`,`swdl_bnd_rcp_sno`,`cidps_rank`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='사기채권피구상자';

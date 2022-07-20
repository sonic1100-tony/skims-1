--
-- Table structure for table `ins_dvpns_basts_wrt_cd_adm`
--

DROP TABLE IF EXISTS `ins_dvpns_basts_wrt_cd_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_dvpns_basts_wrt_cd_adm` (
  `thcp_gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '당사상품코드',
  `thcp_cvrcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '당사담보코드',
  `dvpns_gdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원상품코드',
  `dvpns_ctrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원계약코드',
  `dvpns_cvrcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원담보코드',
  `dvpns_o1_rk_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원1차위험구분코드',
  `dvpns_o2_rk_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원2차위험구분코드',
  `dvpns_o3_rk_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원3차위험구분코드',
  `dvpns_o4_rk_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원4차위험구분코드',
  `dvpns_o5_rk_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원5차위험구분코드',
  `dvpns_o6_rk_flgcd` varchar(2) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원6차위험구분코드',
  `dvpns_cvr_gpnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원담보그룹명',
  `dvpns_cvr_rknm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개발원담보위험명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`thcp_gdcd`,`thcp_cvrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='개발원기초통계작성코드관리';

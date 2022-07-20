--
-- Table structure for table `ccm_drve_lic`
--

DROP TABLE IF EXISTS `ccm_drve_lic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_drve_lic` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `rcp_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '접수년월',
  `rcp_nv_seqno` varchar(9) COLLATE utf8mb4_bin NOT NULL COMMENT '접수조사순번',
  `lic_crr_seqno` decimal(3,0) NOT NULL COMMENT '면허이력순번',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `drve_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '운전면허번호',
  `type1_lrge_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종대형면허여부',
  `type1_norm_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종보통면허여부',
  `type1_smal_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종소형면허여부',
  `type1_lrge_trl_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종대형트레일러면허여부',
  `type1_wrc_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종레커면허여부',
  `type2_norm_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2종보통면허여부',
  `type2_smal_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2종소형면허여부',
  `type2_twhvc_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2종이륜차면허여부',
  `lic_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '면허상태코드',
  `lic_ccl_dt` date DEFAULT NULL COMMENT '면허취소일자',
  `lic_st_strdt` date DEFAULT NULL COMMENT '면허정지시작일자',
  `lic_st_nddt` date DEFAULT NULL COMMENT '면허정지종료일자',
  `type1_norm_ptlic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종보통연습면허여부',
  `type1_norm_ptlic_ccldt` date DEFAULT NULL COMMENT '1종보통연습면허취소일자',
  `type1_norm_ptlic_nddt` date DEFAULT NULL COMMENT '1종보통연습면허만료일자',
  `type2_norm_ptlic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '2종보통연습면허여부',
  `type2_norm_ptlic_ccldt` date DEFAULT NULL COMMENT '2종보통연습면허취소일자',
  `type2_norm_ptlic_nddt` date DEFAULT NULL COMMENT '2종보통연습면허만료일자',
  `type1_smal_trl_lic_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '1종소형트레일러면허여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_drve_lic_00` (`rcp_yymm`,`rcp_nv_seqno`,`lic_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='운전면허';

--
-- Table structure for table `lse_ardc_auth_dlg`
--

DROP TABLE IF EXISTS `lse_ardc_auth_dlg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lse_ardc_auth_dlg` (
  `dlg_bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '위임업무구분코드',
  `auth_dlg_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '권한위임직원번호',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `auth_dlg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '권한위임기관코드',
  `auth_acpap_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '권한수임직원번호',
  `auth_acpap_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '권한수임기관코드',
  `cmp_ky_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '보상키년도',
  `cmp_ky_seqno` decimal(10,0) DEFAULT NULL COMMENT '보상키순번',
  `dlg_prv_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위임결재상태코드',
  `auth_dlg_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '권한위임사유코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dlg_bsns_flgcd`,`auth_dlg_stfno`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전결권한위임';

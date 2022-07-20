--
-- Table structure for table `ccm_auth_adm`
--

DROP TABLE IF EXISTS `ccm_auth_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_auth_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `contr_dlg_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '피위임직원번호',
  `auth_adm_seqno` decimal(5,0) NOT NULL COMMENT '권한관리순번',
  `auth_relcc_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '권한관련자구분코드',
  `dlg_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '위임기관코드',
  `dlg_tm_orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '위임팀기관코드',
  `auth_ch_rscd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '권한변경사유코드',
  `auth_ap_strdt` date NOT NULL COMMENT '권한적용시작일자',
  `auth_ap_nddt` date NOT NULL COMMENT '권한적용종료일자',
  `auth_adm_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '권한관리상태코드',
  `dlg_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '위임직원번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_auth_adm_00` (`contr_dlg_stfno`,`auth_adm_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='권한관리';

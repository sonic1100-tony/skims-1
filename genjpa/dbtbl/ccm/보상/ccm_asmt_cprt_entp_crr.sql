--
-- Table structure for table `ccm_asmt_cprt_entp_crr`
--

DROP TABLE IF EXISTS `ccm_asmt_cprt_entp_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_asmt_cprt_entp_crr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `asmt_cpent_crr_seqno` decimal(3,0) NOT NULL COMMENT '지정협력업체이력순번',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `asmt_cprt_entp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지정협력업체여부',
  `asmt_cprt_entp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지정협력업체구분코드',
  `asmt_entp_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '지정업체등급코드',
  `cr_strdt` date DEFAULT NULL COMMENT '계약시작일자',
  `cr_nddt` date DEFAULT NULL COMMENT '계약종료일자',
  `stmvo_entp_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '현장출동업체여부',
  `cpent_dh_cr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체취급차량구분코드',
  `free_stm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '무료견적여부',
  `wknd_niht_mvo_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '주말야간출동여부',
  `as_cprcp_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'AS협력사코드',
  `wshcr_srv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차세차서비스여부',
  `rntcr_srv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '렌트카서비스여부',
  `pkpcr_srv_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자동차픽업서비스여부',
  `rpcrg_dm_pg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리비청구프로그램구분코드',
  `rpcrg_appr_pg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수리비인정프로그램구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_asmt_cprt_entp_crr_00` (`ctmno`,`cprt_entp_seqno`,`asmt_cpent_crr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='지정협력업체이력';

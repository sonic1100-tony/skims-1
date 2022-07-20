--
-- Table structure for table `sec_trst_entp_scrt_dl_it`
--

DROP TABLE IF EXISTS `sec_trst_entp_scrt_dl_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec_trst_entp_scrt_dl_it` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `trst_entp_no` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '수탁업체번호',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `ap_nd_dthms` datetime NOT NULL COMMENT '적용종료일시',
  `ap_str_dthms` datetime NOT NULL COMMENT '적용시작일시',
  `thcp_cn_sysnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '당사연동시스템명',
  `trst_entp_sysnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수탁업체시스템명',
  `onsf_db_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '자체DB여부',
  `psinf_ecpn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보암호화여부',
  `scr_mask_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '화면마스킹여부',
  `psinf_dnld_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보다운로드여부',
  `sys_aces_mtdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시스템접근방법명',
  `cm_sct_ecpn_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통신구간암호화여부',
  `sys_auth_mtdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '시스템인증방법명',
  `ip_aces_lmit_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'IP접근제한여부',
  `scrno_pol_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비밀번호정책여부',
  `note` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_sec_trst_entp_scrt_dl_it_00` (`trst_entp_no`,`bsns_flgcd`,`ap_nd_dthms`,`ap_str_dthms`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='수탁업체보안처리항목';

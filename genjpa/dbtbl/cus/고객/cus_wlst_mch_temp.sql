--
-- Table structure for table `cus_wlst_mch_temp`
--

DROP TABLE IF EXISTS `cus_wlst_mch_temp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_wlst_mch_temp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `mch_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '매치구분코드',
  `mch_dthms` datetime DEFAULT NULL COMMENT '매치일시',
  `rltm_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '실시간구분코드',
  `ctm_kornm` varchar(150) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객한글명',
  `eng_ctmnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영문고객명',
  `ctm_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호구분코드',
  `ctm_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객식별번호',
  `wlst_brth` varchar(8) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WATCHLIST생년월일',
  `wlst_adr` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WATCHLIST주소',
  `ntlcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '국적코드',
  `wlst_ntl_nm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WATCHLIST국적명',
  `wlst_ennm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WATCHLIST영문명',
  `psn_crp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인법인구분코드',
  `rgfrg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내외국인구분코드',
  `wlst_sorc_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'WATCHLIST출처코드',
  `dl_ctn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '처리의견',
  `smps_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일인여부',
  `smps_dl_dthms` datetime DEFAULT NULL COMMENT '동일인처리일시',
  `smps_dlr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동일인처리자ID',
  `dl_aryn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래승인여부',
  `dl_ap_dl_dthms` datetime DEFAULT NULL COMMENT '거래승인처리일시',
  `dl_ap_dlr_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '거래승인처리자ID',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='WATCHLIST매치임시';

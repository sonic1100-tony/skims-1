--
-- Table structure for table `aud_rtx_lss_info`
--

DROP TABLE IF EXISTS `aud_rtx_lss_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aud_rtx_lss_info` (
  `rtx_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증종류코드',
  `rtx_ss_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증발행년도',
  `rtx_bk_sno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '영수증책일련번호',
  `rtx_tp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증유형구분코드',
  `rtx_lss_knd_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증분실종류구분코드',
  `rtx_mfg_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증출고기관코드',
  `rc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령기관코드',
  `rc_dhgnc_orgcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령취급소기관코드',
  `rc_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령취급직원번호',
  `lssdt` date DEFAULT NULL COMMENT '분실일자',
  `rtx_lss_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증분실구분코드',
  `rtx_lss_inp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증분실입력구분코드',
  `rtx_lss_dl_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증분실처리구분코드',
  `rtx_lss_ry_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영수증분실회수구분코드',
  `lss_rs` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분실사유',
  `lss_ntcdt` date DEFAULT NULL COMMENT '분실공고일자',
  `ntc_entnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '공고업체명',
  `iptdt` date DEFAULT NULL COMMENT '입력일자',
  `inp_hms` varchar(6) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '입력시간',
  `rgt_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '등록직원번호',
  `prm` decimal(17,2) DEFAULT NULL COMMENT '보험료',
  `ins_strdt` date DEFAULT NULL COMMENT '보험시작일자',
  `ins_nddt` date DEFAULT NULL COMMENT '보험종료일자',
  `rpdt` date DEFAULT NULL COMMENT '영수일자',
  `crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약자명',
  `tlano` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `rpub_rtxno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재발행영수증번호',
  `rprm` decimal(15,0) DEFAULT NULL COMMENT '재보험료',
  `rins_strdt` date DEFAULT NULL COMMENT '재보험시작일자',
  `rins_nddt` date DEFAULT NULL COMMENT '재보험종료일자',
  `rins_rpdt` date DEFAULT NULL COMMENT '재보험영수일자',
  `re_crrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '재계약자명',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`rtx_kndcd`,`rtx_ss_yr`,`rtx_bk_sno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영수증분실정보';

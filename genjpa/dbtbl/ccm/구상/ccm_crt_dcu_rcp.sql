--
-- Table structure for table `ccm_crt_dcu_rcp`
--

DROP TABLE IF EXISTS `ccm_crt_dcu_rcp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_crt_dcu_rcp` (
  `dcu_rcpno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '문서접수번호',
  `crt_dcu_kndcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '법원문서종류코드',
  `rcp_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '접수직원번호',
  `rcp_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '접수직원명',
  `rcp_dthms` datetime NOT NULL COMMENT '접수일시',
  `crt_dcu_rc_metcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법원문서수령방식코드',
  `rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령직원번호',
  `rc_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령직원명',
  `rc_dthms` datetime DEFAULT NULL COMMENT '수령일시',
  `crt_rc_dcu_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법원수령문서구분명',
  `snd_crtnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송법원명',
  `snd_crt_sbd_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송법원하위명',
  `snd_crt_et_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '발송법원기타명',
  `acdno_rcp_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호접수년도',
  `acdno_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사건번호분류코드',
  `acdno_seqno` decimal(7,0) DEFAULT NULL COMMENT '사건번호순번',
  `crt_acd_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '법원사건구분명',
  `bndps_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채권자구분명',
  `bndnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채권자명',
  `scd_bndps_flgnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제2채권자구분명',
  `scd_bndnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '제2채권자명',
  `debnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채무자명',
  `deb_dscno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '채무자식별번호',
  `dcu_rgsno` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '문서등기번호',
  `ag_rc_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대리수령직원번호',
  `ag_rc_stfnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대리수령직원명',
  `ag_rc_dthms` datetime DEFAULT NULL COMMENT '대리수령일시',
  `rc_mtt_ch_cn` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수령사항변경내용',
  `ers_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '삭제여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`dcu_rcpno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법원문서접수';

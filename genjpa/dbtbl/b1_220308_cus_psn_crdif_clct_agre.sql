--
-- Table structure for table `b1_220308_cus_psn_crdif_clct_agre`
--

DROP TABLE IF EXISTS `b1_220308_cus_psn_crdif_clct_agre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_220308_cus_psn_crdif_clct_agre` (
  `agre_csf_dscno` varchar(20) COLLATE utf8mb4_bin NOT NULL COMMENT '동의분류식별번호',
  `ctm_flg_dscno` varchar(48) COLLATE utf8mb4_bin NOT NULL COMMENT '고객구분식별번호',
  `agre_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의분류코드',
  `agre_info_utl_sclcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의정보활용범위코드',
  `agre_dt_it_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '동의세부항목코드',
  `agre_crr_seqno` decimal(4,0) NOT NULL COMMENT '동의이력순번',
  `fnl_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL COMMENT '최종여부',
  `agre_strdt` date NOT NULL COMMENT '동의시작일자',
  `agre_nddt` date NOT NULL COMMENT '동의종료일자',
  `agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의상태코드',
  `agre_rgt_dthms` datetime NOT NULL COMMENT '동의등록일시',
  `agre_wdr_dthms` datetime DEFAULT NULL COMMENT '동의철회일시',
  `agre_flg_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의구분식별번호구분코드',
  `ctm_flg_dscno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객구분식별번호구분코드',
  `agre_summ_dt_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의요약상세구분코드',
  `agre_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의채널코드',
  `agre_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '동의방법코드',
  `auth_admno` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '인증관리번호',
  `lms_rcv_agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'LMS수신동의상태코드',
  `mail_rcv_agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일수신동의상태코드',
  `kakaotalk_rcv_agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '카카오톡수신동의상태코드',
  `apppush_rcv_agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '앱푸쉬수신동의상태코드',
  `tl_rcv_agre_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화수신동의상태코드',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`agre_csf_dscno`,`ctm_flg_dscno`,`agre_csfcd`,`agre_info_utl_sclcd`,`agre_dt_it_cd`,`agre_crr_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객개인신용정보수집동의';

--
-- Table structure for table `b1_211102_cmp_cvap_relcc`
--

DROP TABLE IF EXISTS `b1_211102_cmp_cvap_relcc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `b1_211102_cmp_cvap_relcc` (
  `cvap_aid` bigint(20) NOT NULL COMMENT '민원AID',
  `cvam_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원인유형코드',
  `cvap_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '민원구분코드',
  `cvap_rcpdt` date NOT NULL COMMENT '민원접수일자',
  `cvap_rcpno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '민원접수번호',
  `cvam_ctmno1` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객번호1',
  `cvam_nm1` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인성명1',
  `cvam_ctmdn1` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객식별번호1',
  `cvam_ctm_adr1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객주소1',
  `cvam_ctm_mail_adr1` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객이메일주소1',
  `cvam_cntad_tlno1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인연락처전화번호1',
  `cvam_hpno1` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인휴대폰번호1',
  `cvam_ctmno2` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객번호2',
  `cvam_nm2` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인성명2',
  `cvam_ctmdn2` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객식별번호2',
  `cvam_ctm_adr2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객주소2',
  `cvam_ctm_mail_adr2` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인고객이메일주소2',
  `cvam_cntad_tlno2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인연락처전화번호2',
  `cvam_hpno2` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인휴대폰번호2',
  `cvam_dl_info` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원인거래정보',
  `cvap_rqapl_rel_info` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '민원신청인관계정보',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`cvap_aid`,`cvam_tpcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='민원관련자';

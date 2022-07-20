--
-- Table structure for table `ins_ag_drve_entp`
--

DROP TABLE IF EXISTS `ins_ag_drve_entp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_ag_drve_entp` (
  `aid` bigint(20) unsigned NOT NULL COMMENT 'AID',
  `bzmno` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '사업자번호',
  `ag_drve_entcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '대리운전업체코드',
  `age_lmit_trtcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '연령한정특약코드',
  `is_rgsct` decimal(4,0) DEFAULT NULL COMMENT '가입정원수',
  `gr_dc_xcrt` decimal(5,2) DEFAULT NULL COMMENT '단체할인할증율',
  `pym_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '납입방법코드',
  `csmt_apyn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '탁송적용여부',
  `note_cn` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '비고내용',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `chrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자명',
  `chrps_tlno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '담당자전화번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_ins_ag_drve_entp_00` (`bzmno`,`ag_drve_entcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='대리운전업체';

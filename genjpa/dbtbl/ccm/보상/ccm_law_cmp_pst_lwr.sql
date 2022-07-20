--
-- Table structure for table `ccm_law_cmp_pst_lwr`
--

DROP TABLE IF EXISTS `ccm_law_cmp_pst_lwr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_law_cmp_pst_lwr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `lwr_seqno` decimal(3,0) NOT NULL COMMENT '변호사순번',
  `lwrnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변호사명',
  `lwr_rsno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '변호사주민번호',
  `grdu_univ_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출신대학명',
  `univ_grdt_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '대학졸업년도',
  `grdu_hsc_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출신고등학교명',
  `hsc_grdt_yr` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고등학교졸업년도',
  `jdtr_trins_prdno` varchar(3) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사법연수원기수',
  `grdu_arecd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '출신지역코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_law_cmp_pst_lwr_00` (`ctmno`,`cprt_entp_seqno`,`lwr_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='법률회사소속변호사';

--
-- Table structure for table `cus_ctm_sign_crr`
--

DROP TABLE IF EXISTS `cus_ctm_sign_crr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_sign_crr` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `sign_dthms` varchar(14) COLLATE utf8mb4_bin NOT NULL COMMENT '서명일시',
  `sign_dcucd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서명문서코드',
  `sign_mtdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서명방법코드',
  `sign_chncd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서명채널코드',
  `sign_bsnno_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서명업무번호구분코드',
  `sign_bsnno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서명업무번호',
  `auth_admno` bigint(20) DEFAULT NULL COMMENT '인증관리번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  PRIMARY KEY (`ctmno`,`sign_dthms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객서명이력';

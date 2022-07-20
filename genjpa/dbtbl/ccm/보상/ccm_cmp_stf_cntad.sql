--
-- Table structure for table `ccm_cmp_stf_cntad`
--

DROP TABLE IF EXISTS `ccm_cmp_stf_cntad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_cmp_stf_cntad` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '직원번호',
  `cmp_cntad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '보상연락처구분코드',
  `mail_id` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일아이디',
  `mail_adr_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이메일주소구분코드',
  `cm_bzps_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '통신사업자구분코드',
  `tl_areno_cd` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화지역번호코드',
  `tltno` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화국번',
  `tlsno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전화일련번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_cmp_stf_cntad_00` (`stfno`,`cmp_cntad_flgcd`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='보상직원연락처';

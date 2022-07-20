--
-- Table structure for table `cus_bsncl_cprt_entp`
--

DROP TABLE IF EXISTS `cus_bsncl_cprt_entp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bsncl_cprt_entp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `bsns_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '업무구분코드',
  `ap_nddt` date NOT NULL COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `bsns_sppdg_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무협조도구분코드',
  `srv_level_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '서비스수준구분코드',
  `cprt_entp_cr_strdt` date DEFAULT NULL COMMENT '협력업체계약시작일자',
  `cprt_entp_cr_nddt` date DEFAULT NULL COMMENT '협력업체계약종료일자',
  `cprt_entp_cnldt` date DEFAULT NULL COMMENT '협력업체해지일자',
  `cprt_entp_crdm_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '협력업체계약서유무',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_cus_bsncl_cprt_entp_00` (`ctmno`,`cprt_entp_seqno`,`bsns_flgcd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='업무별협력업체';

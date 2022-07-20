--
-- Table structure for table `ccm_hsp_pstdr`
--

DROP TABLE IF EXISTS `ccm_hsp_pstdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_hsp_pstdr` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `cprt_entp_seqno` decimal(3,0) NOT NULL COMMENT '협력업체순번',
  `intns_seqno` decimal(3,0) NOT NULL COMMENT '의사순번',
  `drnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사명',
  `intns_dty_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사직책구분코드',
  `spfel_cd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문분야코드',
  `intns_licno` varchar(48) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '의사면허번호',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_hsp_pstdr_00` (`ctmno`,`cprt_entp_seqno`,`intns_seqno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='병원소속의사';

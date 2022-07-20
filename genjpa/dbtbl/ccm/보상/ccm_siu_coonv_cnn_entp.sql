--
-- Table structure for table `ccm_siu_coonv_cnn_entp`
--

DROP TABLE IF EXISTS `ccm_siu_coonv_cnn_entp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ccm_siu_coonv_cnn_entp` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `nv_yr` varchar(4) COLLATE utf8mb4_bin NOT NULL COMMENT '조사년도',
  `bscrl_coonv_seqno` decimal(10,0) NOT NULL COMMENT '업계공동조사순번',
  `siu_inp_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT 'SIU입력구분코드',
  `ch_seqno` decimal(5,0) NOT NULL COMMENT '변경순번',
  `entp_seqno` decimal(5,0) NOT NULL COMMENT '업체순번',
  `siu_cnn_entp_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'SIU관련업체구분코드',
  `ctmno` varchar(13) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '고객번호',
  `cprt_entp_crr_seqno` decimal(3,0) DEFAULT NULL COMMENT '협력업체이력순번',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_ccm_siu_coonv_cnn_entp_00` (`nv_yr`,`bscrl_coonv_seqno`,`siu_inp_flgcd`,`ch_seqno`,`entp_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='SIU공동조사관련업체';

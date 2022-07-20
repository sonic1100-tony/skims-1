--
-- Table structure for table `str_fxqtt_vlit`
--

DROP TABLE IF EXISTS `str_fxqtt_vlit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_fxqtt_vlit` (
  `inctl_fxqtt_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제정량평가항목코드',
  `ver_seqno` decimal(5,0) NOT NULL COMMENT '버전순번',
  `inctl_mng_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제주관평가항목코드',
  `inctl_fxqtt_vl_itnm` varchar(500) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제정량평가항목명',
  `inctl_fxqtt_index_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제정량지표구분코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`inctl_fxqtt_vl_itcd`,`ver_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정량평가항목';

--
-- Table structure for table `str_fxqtt_vl_es`
--

DROP TABLE IF EXISTS `str_fxqtt_vl_es`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_fxqtt_vl_es` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `inctl_fxqtt_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제정량평가항목코드',
  `ver_seqno` decimal(5,0) NOT NULL COMMENT '버전순번',
  `vl_poct` decimal(5,0) DEFAULT NULL COMMENT '평가점수',
  `st_crtcl_vl` decimal(7,2) DEFAULT NULL COMMENT '기준임계값',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`inctl_fxqtt_vl_itcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='정량평가설정';

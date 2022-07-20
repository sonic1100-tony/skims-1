--
-- Table structure for table `str_inctl_vl_ap`
--

DROP TABLE IF EXISTS `str_inctl_vl_ap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `str_inctl_vl_ap` (
  `seq` decimal(10,0) NOT NULL COMMENT '회차',
  `inctl_vl_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가구분코드',
  `inctl_vl_itcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가항목코드',
  `orgcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '기관코드',
  `vl_ap_seqno` decimal(7,0) NOT NULL COMMENT '평가승인순번',
  `inctl_vl_rkcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '내부통제평가단계코드',
  `vl_dthms` datetime NOT NULL COMMENT '평가일시',
  `vlr_stfno` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '평가자직원번호',
  `dt_chk_cn` varchar(2000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상세점검내용',
  `inctl_vl_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부통제평가등급코드',
  `inctl_fxqtt_vl_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부통제정량평가등급코드',
  `inctl_av_vl_grdcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '내부통제실적평가등급코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`seq`,`inctl_vl_flgcd`,`inctl_vl_itcd`,`orgcd`,`vl_ap_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='내부통제평가승인';

--
-- Table structure for table `com_tlm_feld`
--

DROP TABLE IF EXISTS `com_tlm_feld`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `com_tlm_feld` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `tlm_admno` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '전문관리번호',
  `tlm_feld_seqno` decimal(5,0) NOT NULL COMMENT '전문필드순번',
  `tlm_eng_fednm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문영문필드명',
  `tlm_hngl_fednm` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문한글필드명',
  `tlm_feld_typ` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '전문필드타입',
  `tlm_feld_lngth` decimal(5,0) DEFAULT NULL COMMENT '전문필드길이',
  `feld_bavl` varchar(20) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '필드기본값',
  `psinf_itcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '개인정보항목코드',
  `argt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배열여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `pux_com_tlm_feld_00` (`tlm_admno`,`tlm_feld_seqno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='전문필드';

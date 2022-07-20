--
-- Table structure for table `igd_gd_sl_chn_rel`
--

DROP TABLE IF EXISTS `igd_gd_sl_chn_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_gd_sl_chn_rel` (
  `gdcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '상품코드',
  `sl_chn_es_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매채널설정구분코드',
  `sl_chncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '판매채널코드',
  `ap_nddt` date NOT NULL DEFAULT '9999-12-31' COMMENT '적용종료일자',
  `ap_strdt` date NOT NULL COMMENT '적용시작일자',
  `sl_chn_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '판매채널적용구분코드',
  `img_ud_bj_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '이미지심사대상여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`gdcd`,`sl_chn_es_flgcd`,`sl_chncd`,`ap_nddt`,`ap_strdt`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='상품판매채널관계';

--
-- Table structure for table `cus_ctm_atr_meta`
--

DROP TABLE IF EXISTS `cus_ctm_atr_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_atr_meta` (
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atrnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '속성명',
  `cnn_tabnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련테이블명',
  `ad_cnf_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '0' COMMENT '추가확인여부',
  `ppr_atrcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위속성코드',
  `atr_vl_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값유형코드',
  `atr_ad_vl_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성추가값유형코드',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객속성메타';

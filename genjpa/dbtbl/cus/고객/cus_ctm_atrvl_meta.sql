--
-- Table structure for table `cus_ctm_atrvl_meta`
--

DROP TABLE IF EXISTS `cus_ctm_atrvl_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_atrvl_meta` (
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `atrvl_ba_ad_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값기본추가구분코드',
  `atr_vlcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값코드',
  `atr_vl_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '속성값명',
  `scr_idc_ordr` decimal(5,0) NOT NULL COMMENT '화면표시순서',
  `vald_yn` varchar(1) COLLATE utf8mb4_bin NOT NULL DEFAULT '1' COMMENT '유효여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`atrcd`,`atrvl_ba_ad_flgcd`,`atr_vlcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객속성값메타';

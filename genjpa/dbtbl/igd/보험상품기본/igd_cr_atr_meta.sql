--
-- Table structure for table `igd_cr_atr_meta`
--

DROP TABLE IF EXISTS `igd_cr_atr_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `igd_cr_atr_meta` (
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `ppr_atrcd` varchar(7) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '상위속성코드',
  `atr_use_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성용도구분코드',
  `atr_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '속성유형코드',
  `atr_kornm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '속성한글명',
  `atr_ennm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성영문명',
  `dat_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터유형코드',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `dcmpt_lngth` decimal(2,0) DEFAULT NULL COMMENT '소수점길이',
  `list_atr_flgcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '목록속성구분코드',
  `cnn_pl_tabnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련설계테이블명',
  `cnn_cr_tabnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련계약테이블명',
  `cnn_clmnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '관련컬럼명',
  `isamt_atr_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT '0' COMMENT '가입금액속성여부',
  `lstcd_tabnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목록코드테이블명',
  `list_sourc_csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '목록소스분류코드',
  `rt_atr_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '요율속성유형코드',
  `scr_idc_ordr` decimal(5,0) DEFAULT NULL COMMENT '화면표시순서',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='계약속성메타';

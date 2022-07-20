--
-- Table structure for table `fin_ldg_atr_meta`
--

DROP TABLE IF EXISTS `fin_ldg_atr_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_ldg_atr_meta` (
  `atrcd` varchar(7) COLLATE utf8mb4_bin NOT NULL COMMENT '속성코드',
  `tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블명',
  `atr_kornm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '속성한글명',
  `atr_ennm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '속성영문명',
  `dat_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '데이터유형코드',
  `dat_lngth` decimal(4,0) DEFAULT NULL COMMENT '데이터길이',
  `dcmpt_lngth` decimal(2,0) DEFAULT NULL COMMENT '소수점길이',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`atrcd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='원장속성메타';

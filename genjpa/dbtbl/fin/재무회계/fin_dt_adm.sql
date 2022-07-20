--
-- Table structure for table `fin_dt_adm`
--

DROP TABLE IF EXISTS `fin_dt_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fin_dt_adm` (
  `bzdy_adm_dt` date NOT NULL COMMENT '영업일관리일자',
  `bzdy_tpcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '영업일유형코드',
  `bzdy_adm_nm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일관리명',
  `bzdy_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일마감시간',
  `cls_xt_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '마감연장여부',
  `bzdy_1_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일1마감시간',
  `bzdy_2_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일2마감시간',
  `bzdy_3_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일3마감시간',
  `bzdy_4_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일4마감시간',
  `bzdy_5_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일5마감시간',
  `bzdy_6_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일6마감시간',
  `bzdy_7_cls_hms` varchar(4) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '영업일7마감시간',
  `rv_av_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '수납가능여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`bzdy_adm_dt`),
  KEY `idx_fin_dt_adm_01` (`bzdy_tpcd`,`bzdy_adm_dt`,`bzdy_adm_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업일관리';

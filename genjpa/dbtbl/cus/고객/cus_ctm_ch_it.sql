--
-- Table structure for table `cus_ctm_ch_it`
--

DROP TABLE IF EXISTS `cus_ctm_ch_it`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_ch_it` (
  `ch_itno` varchar(5) COLLATE utf8mb4_bin NOT NULL COMMENT '변경항목번호',
  `itnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '항목명',
  `tabnm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '테이블명',
  `clm_nm` varchar(100) COLLATE utf8mb4_bin NOT NULL COMMENT '컬럼명',
  `bsns_ch_ap_flgcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '업무변경적용구분코드',
  `nds_tpnm` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '배서유형명',
  `csfcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '분류코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ch_itno`),
  KEY `idx_cus_ctm_ch_it_10` (`tabnm`,`clm_nm`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객변경항목';

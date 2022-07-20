--
-- Table structure for table `sam_wkdgr_adm`
--

DROP TABLE IF EXISTS `sam_wkdgr_adm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sam_wkdgr_adm` (
  `aid` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'AID',
  `st_yymm` varchar(6) COLLATE utf8mb4_bin NOT NULL COMMENT '기준년월',
  `wkdgr_seq` decimal(3,0) NOT NULL COMMENT '주차수회차',
  `wkdgr_ap_bsncd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '주차수적용업무코드',
  `wkdgr_strdt` date DEFAULT NULL COMMENT '주차수시작일자',
  `wkdgr_nddt` date DEFAULT NULL COMMENT '주차수종료일자',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`aid`),
  KEY `pix_sam_wkdgr_adm_00` (`st_yymm`,`wkdgr_seq`,`wkdgr_ap_bsncd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='주차수관리';

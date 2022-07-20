--
-- Table structure for table `ins_bdl_cr_ta`
--

DROP TABLE IF EXISTS `ins_bdl_cr_ta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ins_bdl_cr_ta` (
  `ta_crno` varchar(12) COLLATE utf8mb4_bin NOT NULL COMMENT '이관발생번호',
  `ta_st_dthms` datetime NOT NULL COMMENT '이관기준일시',
  `tabf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관전취급직원번호',
  `taaf_dh_stfno` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '이관후취급직원번호',
  `cr_ta_dl_stcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '계약이관처리상태코드',
  `bdl_ta_rscd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '일괄이관사유코드',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`ta_crno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='일괄계약이관';

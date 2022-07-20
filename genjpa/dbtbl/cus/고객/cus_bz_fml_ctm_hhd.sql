--
-- Table structure for table `cus_bz_fml_ctm_hhd`
--

DROP TABLE IF EXISTS `cus_bz_fml_ctm_hhd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_bz_fml_ctm_hhd` (
  `hhdno` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '세대번호',
  `hhdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세대명',
  `hhd_tpcd` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '세대유형코드',
  `memo` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '메모',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`hhdno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='영업가족고객세대';

--
-- Table structure for table `cmp_lwad_cd`
--

DROP TABLE IF EXISTS `cmp_lwad_cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cmp_lwad_cd` (
  `lwad_csfcd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '준법분류코드',
  `lwad_cd` varchar(10) COLLATE utf8mb4_bin NOT NULL COMMENT '준법코드',
  `lwad_cdnm` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법코드명',
  `lwad_ref_cn` varchar(4000) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '준법참고내용',
  `us_yn` varchar(1) COLLATE utf8mb4_bin DEFAULT NULL COMMENT '사용여부',
  `inp_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '입력사용자ID',
  `inp_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '입력일시',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '수정일시',
  PRIMARY KEY (`lwad_csfcd`,`lwad_cd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='준법코드';

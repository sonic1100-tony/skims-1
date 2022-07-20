--
-- Table structure for table `cus_ctm_mb_rel`
--

DROP TABLE IF EXISTS `cus_ctm_mb_rel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cus_ctm_mb_rel` (
  `ctmno` varchar(13) COLLATE utf8mb4_bin NOT NULL COMMENT '고객번호',
  `mbno` bigint(20) unsigned NOT NULL COMMENT '회원번호',
  `mdf_usr_id` varchar(50) COLLATE utf8mb4_bin NOT NULL COMMENT '수정사용자ID',
  `mdf_dthms` datetime NOT NULL COMMENT '수정일시',
  `inp_dthms` datetime NOT NULL COMMENT '입력일시',
  PRIMARY KEY (`ctmno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='고객회원관계';
